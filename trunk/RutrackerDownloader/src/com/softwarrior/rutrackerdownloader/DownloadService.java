package com.softwarrior.rutrackerdownloader;

import java.io.FileInputStream;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Timer;
import java.util.TimerTask;

import com.admob.android.ads.AdListener;
import com.admob.android.ads.AdManager;
import com.admob.android.ads.AdView;
import com.admob.android.ads.InterstitialAd;
import com.admob.android.ads.InterstitialAdListener;
import com.admob.android.ads.SimpleAdListener;
import com.admob.android.ads.InterstitialAd.Event;
import com.adwhirl.AdWhirlLayout;
import com.adwhirl.AdWhirlManager;
import com.adwhirl.AdWhirlTargeting;
import com.adwhirl.AdWhirlLayout.AdWhirlInterface;
import com.adwhirl.util.AdWhirlUtil;
import com.softwarrior.libtorrent.LibTorrent;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp.ActivityResultType;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

public class DownloadService extends Service {
    
	private static final LibTorrent mLibTorrent =  new LibTorrent();
	
	private NotificationManager mNM;
    private int mStartId = 0;
    
    private final IBinder mBinder = new LocalBinder();
    //-----------------------------------------------------------------------------
    public boolean SetSession(int ListenPort, int UploadLimit, int DownloadLimit){return mLibTorrent.SetSession(ListenPort, UploadLimit, DownloadLimit);}
    //-----------------------------------------------------------------------------
    //enum proxy_type
    //{
	//0 - none, // a plain tcp socket is used, and the other settings are ignored.
	//1 - socks4, // socks4 server, requires username.
	//2 - socks5, // the hostname and port settings are used to connect to the proxy. No username or password is sent.
	//3 - socks5_pw, // the hostname and port are used to connect to the proxy. the username and password are used to authenticate with the proxy server.
	//4 - http, // the http proxy is only available for tracker and web seed traffic assumes anonymous access to proxy
	//5 - http_pw // http proxy with basic authentication uses username and password
    //};
    //-----------------------------------------------------------------------------
    public boolean SetProxy(int Type, String HostName, int Port, String UserName, String Password){return mLibTorrent.SetProxy(Type, HostName, Port, UserName, Password);}       
    //-----------------------------------------------------------------------------
    public boolean AddTorrent(String SavePath, String TorentFile){return mLibTorrent.AddTorrent(SavePath, TorentFile);}
    //-----------------------------------------------------------------------------
    public boolean PauseSession(){return mLibTorrent.PauseSession();}
    //-----------------------------------------------------------------------------
    public boolean ResumeSession(){return mLibTorrent.ResumeSession();}
    //-----------------------------------------------------------------------------
    public boolean RemoveTorrent(){return mLibTorrent.RemoveTorrent();}
    //-----------------------------------------------------------------------------
    public int GetTorrentProgress(){return mLibTorrent.GetTorrentProgress();}
    //-----------------------------------------------------------------------------
    //enum state_t
    //{
	//0 queued_for_checking,
	//1 checking_files,
	//2 downloading_metadata,
	//3 downloading,
	//4 finished,
	//5 seeding,
	//6 allocating,
	//7 checking_resume_data
    //}
    // + 8 paused
    // + 9 queued
    //-----------------------------------------------------------------------------
    public int GetTorrentState(){return mLibTorrent.GetTorrentState();}        	
    //-----------------------------------------------------------------------------
    //static char const* state_str[] =
    //{"checking (q)", "checking", "dl metadata", "downloading", "finished", "seeding", "allocating", "checking (r)"};
    //-----------------------------------------------------------------------------
    public String GetTorrentStatusText(){return mLibTorrent.GetTorrentStatusText();}
    //-----------------------------------------------------------------------------        
    public String GetSessionStatusText(){return mLibTorrent.GetSessionStatusText();}
    //-----------------------------------------------------------------------------  
        
    public class LocalBinder extends Binder {
    	DownloadService getService() {
            return DownloadService.this;
        }
    }    
            
    void StopServiceSelf()
    {
		hideNotification();            
		Log.d(RutrackerDownloaderApp.TAG, "StopServiceSelf");            
		stopSelf(mStartId);
    }
         
    @Override
    public void onCreate() {
        mNM = (NotificationManager)getSystemService(NOTIFICATION_SERVICE);
        Toast.makeText(this, R.string.service_created,Toast.LENGTH_SHORT).show();        
//      mInvokeIntent = new Intent(this, Controller.class); //This is who should be launched if the user selects our persistent notification.
    }
    
    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
		mStartId = startId;
		String txt = null;
		if ((flags & Service.START_FLAG_REDELIVERY) == 0) {
		    txt = "New startId=" + mStartId;
		} else {
		    txt = "Re-delivered startId=" + mStartId;
		}
		Log.d(RutrackerDownloaderApp.TAG, "Service Starting: " + txt);
	    showNotification(getString(R.string.service_created)); 
		
		int listenPort = DownloadPreferencesScreen.GetListenPort(getApplicationContext());
		int uploadLimit = DownloadPreferencesScreen.GetUploadLimit(getApplicationContext());
		int downloadLimit =  DownloadPreferencesScreen.GetDownloadLimit(getApplicationContext());
		
		SetSession(listenPort, uploadLimit, downloadLimit);
		//-----------------------------------------------------------------------------
	    //enum proxy_type
	    //{
		//0 - none, // a plain tcp socket is used, and the other settings are ignored.
		//1 - socks4, // socks4 server, requires username.
		//2 - socks5, // the hostname and port settings are used to connect to the proxy. No username or password is sent.
		//3 - socks5_pw, // the hostname and port are used to connect to the proxy. the username and password are used to authenticate with the proxy server.
		//4 - http, // the http proxy is only available for tracker and web seed traffic assumes anonymous access to proxy
		//5 - http_pw // http proxy with basic authentication uses username and password
	    //};
	    //-----------------------------------------------------------------------------
		int type = DownloadPreferencesScreen.GetProxyType(getApplicationContext());
		String hostName = DownloadPreferencesScreen.GetHostName(getApplicationContext());
		int port = DownloadPreferencesScreen.GetPortNumber(getApplicationContext());
		String userName = DownloadPreferencesScreen.GetUserName(getApplicationContext());
		String password = DownloadPreferencesScreen.GetUserPassword(getApplicationContext());

		SetProxy(type, hostName, port, userName, password);       
    					
        return START_REDELIVER_INTENT; //START_NOT_STICKY;
    }

    @Override
    public void onDestroy() {
        RemoveTorrent();
        hideNotification();
        // Tell the user we stopped.
        Toast.makeText(DownloadService.this, R.string.service_destroyed, Toast.LENGTH_SHORT).show();
    }

    @Override
    public IBinder onBind(Intent intent) {
        return mBinder;
    }

    //Show a notification while this service is running.
    public void showNotification(String text) {
        // Set the icon, scrolling text and timestamp
        Notification notification = new Notification(R.drawable.stat, text, System.currentTimeMillis());
        // The PendingIntent to launch our activity if the user selects this notification
        PendingIntent contentIntent = PendingIntent.getActivity(this, 0, new Intent(this, Controller.class), 0);
        // Set the info for the views that show in the notification panel.
        notification.setLatestEventInfo(this, getText(R.string.service_label),text, contentIntent);
        // We show this for as long as our service is processing a command.
        notification.flags |= Notification.FLAG_ONGOING_EVENT;        
        // Send the notification.
        // We use a string id because it is a unique number.  We use it later to cancel.
        mNM.notify(R.string.service_created, notification);
    }
    
    private void hideNotification() {
        mNM.cancel(R.string.service_created);
    }    
    // ----------------------------------------------------------------------
    public static class Controller extends FullWakeActivity implements AdListener, InterstitialAdListener, AdWhirlInterface {
        
    	private volatile boolean mIsBound = false;
        private volatile boolean mIsBoundService = false; 
        private DownloadService mBoundService = null;

        private volatile boolean mStopProgress = false;
        private volatile int mTorrentProgress = 0;
        private volatile int mTorrentState = 0;
        private volatile String mTorrentStatus = new String();
        private volatile String mSessionStatus = new String();
        
        private ProgressBar mProgress;
        private SharedPreferences mPrefs;

        private Handler mHandler = new Handler();        
        
        private Button mButtonStart;
        private Button mButtonStop;
        private Button mButtonPause;
        private Button mButtonResume;
        private TextView mTextViewTorrentState; 
        private TextView mTextViewCommonStatus;

    	StopHandler mStopHandler = null;
    	Message mStopMessage = null;
        
		//AdMob 
		private InterstitialAd mInterstitialAd;
	  	private AdView 		 mAdView;
		private Timer mAdRefreshTimer;
		private static final int mAdRefreshTime = 30000; //30 seconds
    	
        enum ControllerState{
        	Undefined, Started, Stopped, Paused
        }          
        enum TorrentState {
        	queued_for_checking, checking_files, downloading_metadata, downloading, finished, seeding, allocating, checking_resume_data, paused, queued
        }
        enum MenuType{
        	About, Help, Preferences, FileManager, Exit;
        }
        
        private volatile ControllerState mControllerState = ControllerState.Undefined;

		public void adWhirlGeneric() {
			Log.e(AdWhirlUtil.ADWHIRL, "In adWhirlGeneric()");
		}

    	@Override
		public void onCreate(Bundle savedInstanceState) {
    		super.onCreate(savedInstanceState);
            setContentView(R.layout.service);
            // --------------- AdWhirl ----------------
		    int width = 320;
		    int height = 52;

		    DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
		    float density = displayMetrics.density;

		    width = (int) (width * density);
		    height = (int) (height * density);

		    AdWhirlTargeting.setAge(23);
		    AdWhirlTargeting.setGender(AdWhirlTargeting.Gender.MALE);
		    String keywords[] = { "online", "games", "gaming", "sport", "travel", "girls", "drink", "smoke", "car" };
		    AdWhirlTargeting.setKeywordSet(new HashSet<String>(Arrays.asList(keywords)));
		    AdWhirlTargeting.setPostalCode("94123");
		    AdWhirlTargeting.setTestMode(false);

//		    AdWhirlAdapter.setGoogleAdSenseAppName("RutrackerDownloader");
//		    AdWhirlAdapter.setGoogleAdSenseCompanyName("Individial");
//		    AdWhirlAdapter.setGoogleAdSenseChannel("games");
//		    AdWhirlAdapter.setGoogleAdSenseExpandDirection("BOTTOM");
		    // Optional, will fetch new config if necessary after five minutes.
		    AdWhirlManager.setConfigExpireTimeout(1000 * 60 * 5);

		    // References AdWhirlLayout defined in the layout XML.
		    AdWhirlLayout adWhirlLayout = (AdWhirlLayout) findViewById(R.id.adwhirl_layout);
		    adWhirlLayout.setAdWhirlInterface(this);
		    adWhirlLayout.setMaxWidth(width);
		    adWhirlLayout.setMaxHeight(height);
                                    
            //--------------AdMob-----------------------
	        mAdRefreshTimer = new Timer();
	        mAdRefreshTimer.schedule(new AdRefreshTimerTask(), mAdRefreshTime, mAdRefreshTime);
	        AdManager.setPublisherId("a14d5a500187b19");
//	        AdManager.setTestDevices(new String[] { AdManager.TEST_EMULATOR, "92D0B17743FC28D496804E97F99B6D10" });        
//	        AdManager.setTestAction("video_int");

	        mAdView = (AdView) findViewById(R.id.ad);
	        mAdView.setAdListener(new AdvertisingListener());
	        
	        // call for an Interstitial Ad
	        mInterstitialAd = new InterstitialAd(Event.APP_START, this);
	        mInterstitialAd.requestAd(this);
		    //-----------------------------------------
            mProgress = (ProgressBar) findViewById(R.id.progress_horizontal);

            mButtonStart = (Button)findViewById(R.id.ButtonStartDownload);
            mButtonStop = (Button)findViewById(R.id.ButtonStopDownload);
            mButtonPause = (Button)findViewById(R.id.ButtonPauseDownload);
            mButtonResume = (Button)findViewById(R.id.ButtonResumeDownload);          
            mTextViewTorrentState = (TextView)findViewById(R.id.TextViewTorrentState);
            mTextViewCommonStatus = (TextView)findViewById(R.id.TextViewCommonStatus);
            
            // Start lengthy operation in a background thread
            new Thread(new Runnable() {
                public void run() {
                	while (!mStopProgress) {
						if((mIsBoundService && mControllerState == ControllerState.Started) ||
						   (mIsBoundService && mControllerState == ControllerState.Paused)) {
								mTorrentProgress = mBoundService.GetTorrentProgress();
								mTorrentState = mBoundService.GetTorrentState();
								mTorrentStatus = mBoundService.GetTorrentStatusText();
								mSessionStatus = mBoundService.GetSessionStatusText();
								mHandler.post(new Runnable() {
									public void run() {
										mProgress.setProgress(mTorrentProgress);
										SetTorrentState();
										SetCommonStatus();
									}
							});
						}
					}
                }
            }).start();
            RestoreControllerState();
		    doBindService();
		    if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
		    RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/DownloadServiceControler");
        }
	    private class AdRefreshTimerTask extends TimerTask {
			
			@Override
			public void run() {
				mAdView.requestFreshAd();
			}	    	
	    }
	    
    	void RestoreControllerState(){
            mPrefs = getSharedPreferences(Controller.class.getName(), MODE_PRIVATE);
            int controllerState = mPrefs.getInt(ControllerState.class.getName(),ControllerState.Undefined.ordinal());
            mControllerState = ControllerState.values()[controllerState]; 
            SetControllerState(mControllerState);
    	}

    	void SetControllerState(ControllerState controllerState){
    		mControllerState = controllerState; 
            switch (mControllerState) {
			case Started:{
			       mButtonStart.setEnabled(false);
			       mButtonStop.setEnabled(true);
			       mButtonPause.setEnabled(true);
			       mButtonResume.setEnabled(false);
			       if(mIsBoundService)
			    	   mBoundService.showNotification(getString(R.string.text_download_started));
			} break;
			case Paused:{
			       mButtonStart.setEnabled(false);
			       mButtonStop.setEnabled(true);
			       mButtonPause.setEnabled(false);
			       mButtonResume.setEnabled(true);
			       if(mIsBoundService)
			    	   mBoundService.showNotification(getString(R.string.text_download_paused));
			} break;
			case Stopped:
					if(mIsBoundService)
						mBoundService.showNotification(getString(R.string.text_download_stopped));
			case Undefined:
			default: {
			       mButtonStart.setEnabled(true);
			       mButtonStop.setEnabled(false);
			       mButtonPause.setEnabled(false);
			       mButtonResume.setEnabled(false);	
			       mTextViewTorrentState.setText(R.string.text_torrent_state_undefined);
			       mTextViewCommonStatus.setText(R.string.text_common_status);
			       mProgress.setProgress(0);
			} break;
			}
    	}

    	void SetTorrentState(){
    		if(mTorrentState > 0 && mTorrentState < 10){
	    		TorrentState state = TorrentState.values()[mTorrentState];
	    		String txt_state = null;
	    		switch (state){
				case queued_for_checking: txt_state = getString(R.string.text_torrent_state_queued_for_checking); break; 
				case checking_files: txt_state = getString(R.string.text_torrent_state_checking_files); break;
				case downloading_metadata: txt_state = getString(R.string.text_torrent_state_downloading_metadata); break;
				case downloading: txt_state = getString(R.string.text_torrent_state_downloading); break;
				case finished: txt_state = getString(R.string.text_torrent_state_finished); break;
				case seeding: txt_state = getString(R.string.text_torrent_state_seeding); break;
				case allocating: txt_state = getString(R.string.text_torrent_state_allocating); break;
				case paused: txt_state = getString(R.string.text_torrent_state_checking_resume_data); break;
				case queued: txt_state = getString(R.string.text_torrent_state_checking_resume_data); break;
				default: txt_state = getString(R.string.text_torrent_state_undefined); break;
				}
	    		if(!mTextViewTorrentState.getText().equals(txt_state)){
		            mTextViewTorrentState.setText(txt_state);
	    		}
    		}
    		else {
    			String txt_state = getString(R.string.text_torrent_state_undefined);
	    		if(!mTextViewTorrentState.getText().equals(txt_state)){
		            mTextViewTorrentState.setText(txt_state);
	    		}
    		}
    	}
    	
    	void SetCommonStatus()
    	{
			if(mTorrentStatus != null && mSessionStatus != null)
				mTextViewCommonStatus.setText(mTorrentStatus + mSessionStatus);
			else
				mTextViewCommonStatus.setText(R.string.text_common_status);    		
    	}

    	
    	void SaveControllerState(){
            SharedPreferences.Editor ed = mPrefs.edit();
            ed.putInt(ControllerState.class.getName(), mControllerState.ordinal());
            ed.commit();
    	}
    	
    	@Override
    	protected void onResume() {
    		super.onResume();
    		if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
    	}
    	
    	@Override
    	protected void onPause() {
    		super.onPause();
    		SaveControllerState();
	    	if(mAdRefreshTimer != null){
	    		mAdRefreshTimer.cancel(); 
	    		mAdRefreshTimer = null;
	    	}
    	}

    	@Override
	    protected void onRestart() {
	    	super.onRestart();
	    	mAdRefreshTimer = new Timer();
	    	mAdRefreshTimer.schedule(new AdRefreshTimerTask(), 0, mAdRefreshTime);
	    }


    	@Override
        protected void onDestroy() {
    		mStopProgress = true;
            super.onDestroy();            
            doUnbindService();
    		RutrackerDownloaderApp.AnalyticsTracker.dispatch();
        }        
        
		public void OnClickButtonStartDownload(View v) {
        	if(mIsBoundService){
        		String savePath = DownloadPreferencesScreen.GetTorrentSavePath(this); 
        		String torentFile = DownloadPreferencesScreen.GetFullTorrentFileName(this);
        		try{
        			FileInputStream fis = new FileInputStream(torentFile); 
            		fis.close();  		
            	}
            	catch(Exception ex){
                    Toast.makeText(Controller.this, R.string.error_torrent_file_absent, Toast.LENGTH_SHORT).show();
                    return;
            	}
        		mBoundService.AddTorrent(savePath, torentFile);
        		SetControllerState(ControllerState.Started);
        	}
		}
		
        public void OnClickButtonStopDownload(View v) {
        	if(mIsBoundService){
        		SetControllerState(ControllerState.Stopped);
        		mBoundService.RemoveTorrent();    		    
    	    	mStopHandler = new StopHandler();
    			mStopMessage =  mStopHandler.obtainMessage();
    			mStopHandler.sendMessageDelayed(mStopMessage, 500);
        	}
        } 
        
        private class StopHandler extends Handler {	
    	    @Override
    		public void handleMessage(Message message) {
    	    	SetControllerState(ControllerState.Stopped);
    	    }
        } 

		public void OnClickButtonPauseDownload(View v) {
        	if(mIsBoundService){
        		mBoundService.PauseSession();
        		SetControllerState(ControllerState.Paused);
        	}
		}
       
        public void OnClickButtonResumeDownload(View v) {
        	if(mIsBound && mIsBoundService){
        		mBoundService.ResumeSession();
        		SetControllerState(ControllerState.Started);
        	}
        }
                                
        private ServiceConnection mConnection = new ServiceConnection() {
           
        	public void onServiceConnected(ComponentName className, IBinder service) {
                mBoundService = ((DownloadService.LocalBinder)service).getService(); 
                if(mBoundService == null) mIsBoundService = false;
                else mIsBoundService = true;
                if(mIsBoundService){
                    Toast.makeText(Controller.this, R.string.service_connected, Toast.LENGTH_SHORT).show();
                }
            }

            public void onServiceDisconnected(ComponentName className) {
            	mIsBoundService = false;
            	mBoundService = null;
                Toast.makeText(Controller.this, R.string.service_disconnected, Toast.LENGTH_SHORT).show();
                SetControllerState(ControllerState.Stopped);
            }
        };
        
        void doBindService() {
        	if (!mIsBound) {
	            bindService(new Intent(Controller.this, DownloadService.class), mConnection, Context.BIND_AUTO_CREATE);
	            mIsBound = true;
        	}
        }
        
        void doUnbindService() {
            if (mIsBound) {
             	// Detach our existing connection.
                unbindService(mConnection);
                mIsBound = false;
            }
        }

        @Override
    	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
    		switch(ActivityResultType.getValue(resultCode))
    		{
    		case RESULT_DOWNLOADER:
    		case RESULT_PREFERENCES:
    		case RESULT_EXIT:
    			setResult(resultCode);
    			finish();
    			return;
    		};	
	    	if(data != null && data.getBooleanExtra(InterstitialAd.ADMOB_INTENT_BOOLEAN, false)) {
	    		//Back to AdView showing
	    	}
    	}

		private class AdvertisingListener extends SimpleAdListener {
			@Override
			public void onFailedToReceiveAd(AdView adView){
				super.onFailedToReceiveAd(adView);
			}		
			@Override
			public void onFailedToReceiveRefreshedAd(AdView adView){
				super.onFailedToReceiveRefreshedAd(adView);
			}		
			@Override
			public void onReceiveAd(AdView adView){
				super.onReceiveAd(adView);
			}
			@Override
			public void onReceiveRefreshedAd(AdView adView){
				super.onReceiveRefreshedAd(adView);
			}			
		}
		
		public void onFailedToReceiveAd(AdView adView) {
			Log.v(RutrackerDownloaderApp.TAG, "AdMob onFailedToReceiveAd");
		}
		public void onFailedToReceiveRefreshedAd(AdView adView) {
			Log.v(RutrackerDownloaderApp.TAG, "AdMob onFailedToReceiveRefreshedAd");
		}
		public void onReceiveAd(AdView adView){
			Log.v(RutrackerDownloaderApp.TAG, "AdMob onReceiveAd");
		}
		public void onReceiveRefreshedAd(AdView adView){
			Log.v(RutrackerDownloaderApp.TAG, "AdMob onReceiveRefreshedAd");
		}

        
    	@Override
    	public boolean onCreateOptionsMenu(Menu menu) {
    		super.onCreateOptionsMenu(menu);
    		menu.add(Menu.NONE, MenuType.About.ordinal(), MenuType.About.ordinal(), R.string.menu_about); 
    		menu.add(Menu.NONE, MenuType.Help.ordinal(), MenuType.Help.ordinal(), R.string.menu_help); 
    		menu.add(Menu.NONE, MenuType.Preferences.ordinal(), MenuType.Preferences.ordinal(), R.string.menu_preferences);
    		menu.add(Menu.NONE, MenuType.FileManager.ordinal(), MenuType.FileManager.ordinal(), R.string.menu_file_manager);
    		menu.add(Menu.NONE, MenuType.Exit.ordinal(), MenuType.Exit.ordinal(), R.string.menu_exit);
    		return true;
    	}
    	
    	@Override
    	public boolean onMenuItemSelected(int featureId, MenuItem item) {
    		super.onMenuItemSelected(featureId, item);
    		MenuType type = MenuType.values()[item.getItemId()];
    		switch(type)
    		{
    		case About:{
    			RutrackerDownloaderApp.AboutActivity(this);
    		} break;
    		case Help:{
    			RutrackerDownloaderApp.HelpActivity(this);
    		} break;
    		case Preferences:{
    			RutrackerDownloaderApp.PreferencesScreenActivity(this);
    		} break;
    		case FileManager:{
    			RutrackerDownloaderApp.FileManagerActivity(this);
    		} break;
    		case Exit:{
    			RutrackerDownloaderApp.CloseApplication(this);
    		} break;
    		}
    		return true;
    	}
    	
	    //If we fail to receive an interstitial ad, we just keep going on with our application loading and execution.
		public void onFailedToReceiveInterstitial(InterstitialAd interstitialAd) {
	      // we couldn't get an interstitial ad before the start. to do ...
	      if (interstitialAd == mInterstitialAd) {
	    	//Back to AdView showing
	      }
	    }
	    //If we get an interstitial ad successfully, we can show the ad. 
		public void onReceiveInterstitial(InterstitialAd interstitialAd) {
	      if(interstitialAd == mInterstitialAd) {
	        mInterstitialAd.show(this);
	      }
	    }
    }
}
