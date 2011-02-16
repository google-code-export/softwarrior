package com.softwarrior.rutrackerdownloader;

import com.softwarrior.libtorrent.LibTorrent;

import android.app.Activity;
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

    public boolean StartDownload(String SavePath,String TorentFile, int ListenPort, int ProxyType, String ProxyHostName, int ProxyPort, String ProxyUsername, String ProxyPassword){
    	return mLibTorrent.StartDownload(SavePath, TorentFile, ListenPort, ProxyType, ProxyHostName, ProxyPort, ProxyUsername, ProxyPassword);
    }
    public int GetProgress(){ return mLibTorrent.GetProgress(); }
    public int GetStatus(){ return mLibTorrent.GetStatus();}
    public boolean StopDownload(){return mLibTorrent.StopDownload();}
    public boolean PauseDownload(){return mLibTorrent.PauseDownload(); }
    public boolean ResumeDownload(){ return mLibTorrent.ResumeDownload();}    
    
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
		    txt = "New startId" + mStartId;
		} else {
		    txt = "Re-delivered startId" + mStartId;
		}
		Log.d(RutrackerDownloaderApp.TAG, "Service Starting" + txt);
	                  		  
		String savePath = RutrackerDownloaderApp.SavePath; 
		String torentFile = RutrackerDownloaderApp.TorrentFullFileName; 
		int listenPort = 0; 
		int proxyType = 0; 
		String proxyHostName = new String(); 
		int proxyPort = 0; 
		String proxyUsername = new String(); 
		String proxyPassword = new String();

		StartDownload(savePath, torentFile, listenPort, proxyType, proxyHostName, proxyPort, proxyUsername, proxyPassword);
    	
        return START_REDELIVER_INTENT; //START_NOT_STICKY;
    }

    @Override
    public void onDestroy() {
        StopDownload();
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
        Notification notification = new Notification(R.drawable.stat_sample, text, System.currentTimeMillis());
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
    public static class Controller extends Activity {
        
    	private volatile boolean mIsBound = false;
        private volatile boolean mIsBoundService = false; 
        private DownloadService mBoundService = null;

        private ProgressBar mProgress;
        private volatile boolean mStopProgress = false;
        private volatile int mProgressStatus = 0;
        private volatile int mStatus = 0;
        private SharedPreferences mPrefs;

        private Handler mHandler = new Handler();        
        
        private Button mButtonStart;
        private Button mButtonStop;
        private Button mButtonPause;
        private Button mButtonResume;
        private TextView mTextViewStatus; 
                
        enum ControllerState{
        	Undefined, Started, Stopped, Paused
        }  
        
        enum DownloadStatus {
        	queued_for_checking, checking_files, downloading_metadata, downloading, finished, seeding, allocating, checking_resume_data
        }

        public enum MenuType{
        	About, Help, Preferences, Exit;
        }
        
        private volatile ControllerState mControllerState = ControllerState.Undefined;
                
    	@Override
        protected void onCreate(Bundle savedInstanceState) {
    		super.onCreate(savedInstanceState);
            setContentView(R.layout.service);
            mProgress = (ProgressBar) findViewById(R.id.progress_horizontal);

            mButtonStart = (Button)findViewById(R.id.ButtonStartDownloadService);
            mButtonStop = (Button)findViewById(R.id.ButtonStopDownloadService);
            mButtonPause = (Button)findViewById(R.id.ButtonPauseDownloadService);
            mButtonResume = (Button)findViewById(R.id.ButtonResumeDownloadService);          
            mTextViewStatus = (TextView)findViewById(R.id.TextViewStatus);
            
            // Start lengthy operation in a background thread
            new Thread(new Runnable() {
                public void run() {
                	while (!mStopProgress) {
						if((mIsBoundService && mControllerState == ControllerState.Started) ||
						   (mIsBoundService && mControllerState == ControllerState.Paused)) {
								mProgressStatus = mBoundService.GetProgress();
								mStatus = mBoundService.GetStatus();
								mHandler.post(new Runnable() {
									public void run() {
										mProgress.setProgress(mProgressStatus);
										SetDownloadStatus(mStatus);
									}
							});
						}
					}
                }
            }).start();
            RestoreControllerState();                     
        }

    	void RestoreControllerState()
    	{
            mPrefs = getSharedPreferences(Controller.class.getName(), MODE_PRIVATE);
            int controllerState = mPrefs.getInt(ControllerState.class.getName(),ControllerState.Undefined.ordinal());
            mControllerState = ControllerState.values()[controllerState]; 
            SetControllerState(mControllerState);
            if((!mIsBoundService && mControllerState == ControllerState.Started) ||            
               (!mIsBoundService && mControllerState == ControllerState.Paused)) 
            		doBindService();
    	}

    	void SetControllerState(ControllerState controllerState)
    	{
    		mControllerState = controllerState; 
            switch (mControllerState) {
			case Started:{
			       mButtonStart.setEnabled(false);
			       mButtonStop.setEnabled(true);
			       mButtonPause.setEnabled(true);
			       mButtonResume.setEnabled(false);
			} break;
			case Paused:{
			       mButtonStart.setEnabled(false);
			       mButtonStop.setEnabled(true);
			       mButtonPause.setEnabled(false);
			       mButtonResume.setEnabled(true);				
			} break;
			case Stopped:
			case Undefined:
			default: {
			       mButtonStart.setEnabled(true);
			       mButtonStop.setEnabled(false);
			       mButtonPause.setEnabled(false);
			       mButtonResume.setEnabled(false);	
			       mTextViewStatus.setText(R.string.text_download_status_undefined);
			       mProgress.setProgress(0);
			} break;
			}
    	}

    	void SetDownloadStatus(int Status)
    	{
    		if(Status > 0 && Status < 8)
    		{
	    		DownloadStatus status = DownloadStatus.values()[Status];
	    		String txt_status = null;
	    		switch (status){
				case queued_for_checking: txt_status = getString(R.string.text_download_status_queued_for_checking); break; 
				case checking_files: txt_status = getString(R.string.text_download_status_checking_files); break;
				case downloading_metadata: txt_status = getString(R.string.text_download_status_downloading_metadata); break;
				case downloading: txt_status = getString(R.string.text_download_status_downloading); break;
				case finished: txt_status = getString(R.string.text_download_status_finished); break;
				case seeding: txt_status = getString(R.string.text_download_status_seeding); break;
				case allocating: txt_status = getString(R.string.text_download_status_allocating); break;
				case checking_resume_data: txt_status = getString(R.string.text_download_status_checking_resume_data); break;
				default: txt_status = getString(R.string.text_download_status_undefined); break;
				}
	    		if(!mTextViewStatus.getText().equals(txt_status)){
		            if((mIsBoundService && mControllerState == ControllerState.Started) ||            
		               (mIsBoundService && mControllerState == ControllerState.Paused)) 
		            		mBoundService.showNotification(txt_status);
	   	            mTextViewStatus.setText(txt_status);
	    		}
    		}
    		else {
    			String txt_status = getString(R.string.text_download_status_undefined);
	    		if(!mTextViewStatus.getText().equals(txt_status)){
		            if((mIsBoundService && mControllerState == ControllerState.Started) ||            
		               (mIsBoundService && mControllerState == ControllerState.Paused)) 
		            		mBoundService.showNotification(txt_status);
	   	            mTextViewStatus.setText(txt_status);
	    		}
    		}
    	}
    	    	    	
    	void SaveControllerState()
    	{
            SharedPreferences.Editor ed = mPrefs.edit();
            ed.putInt(ControllerState.class.getName(), mControllerState.ordinal());
            ed.commit();
    	}
    	
    	@Override
    	protected void onPause() {
    		super.onPause();
    		SaveControllerState();
    	}

    	@Override
        protected void onDestroy() {
    		mStopProgress = true;
            super.onDestroy();            
            doUnbindService();
        }        
        
		public void OnClickButtonStartDownloadService(View v) {
		    startService(new Intent(Controller.this, DownloadService.class));
		    doBindService();
		    SetControllerState(ControllerState.Started);
		}
				
        public void OnClickButtonStopDownloadService(View v) {        	        	
        	doUnbindService();
		    stopService(new Intent(Controller.this,DownloadService.class));
		    SetControllerState(ControllerState.Stopped);
        }        

		public void OnClickButtonPauseDownloadService(View v) {
        	if(mIsBound && mIsBoundService && mControllerState == ControllerState.Started){
        		mBoundService.PauseDownload();
        		SetControllerState(ControllerState.Paused);
        	}
		}
       
        public void OnClickButtonResumeDownloadService(View v) {
        	if(mIsBound && mIsBoundService  && mControllerState == ControllerState.Paused){
        		mBoundService.ResumeDownload();
        		SetControllerState(ControllerState.Started);
        	}
        }                
                
        private ServiceConnection mConnection = new ServiceConnection() {
           
        	public void onServiceConnected(ComponentName className, IBinder service) {
                mBoundService = ((DownloadService.LocalBinder)service).getService(); 
                if(mBoundService == null) mIsBoundService = false;
                else mIsBoundService = true;
                Toast.makeText(Controller.this, R.string.service_connected, Toast.LENGTH_SHORT).show();
                if(mIsBoundService)
                	SetControllerState(ControllerState.Started);
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
    	public boolean onCreateOptionsMenu(Menu menu) {
    		super.onCreateOptionsMenu(menu);
    		menu.add(Menu.NONE, MenuType.About.ordinal(), MenuType.About.ordinal(), R.string.menu_about); 
    		menu.add(Menu.NONE, MenuType.Help.ordinal(), MenuType.Help.ordinal(), R.string.menu_help); 
    		menu.add(Menu.NONE, MenuType.Preferences.ordinal(), MenuType.Preferences.ordinal(), R.string.menu_preferences);
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
    			AboutActivity();
    		} break;
    		case Help:{
    			HelpActivity();
    		} break;
    		case Preferences:{
    			PreferencesScreenActivity();
    		} break;
    		case Exit:{
    			CloseApplication();
    		} break;
    		}
    		return true;
    	}

    	private void AboutActivity(){
        }

        private void HelpActivity(){
        }
        
        private void PreferencesScreenActivity(){
        	setResult(RutrackerDownloaderApp.ActivityResultType.RESULT_PREFERENCES.getCode());
        	finish();
        }
        
        private void CloseApplication(){
        	setResult(RutrackerDownloaderApp.ActivityResultType.RESULT_EXIT.getCode());
        	finish();
        }
    }
}
