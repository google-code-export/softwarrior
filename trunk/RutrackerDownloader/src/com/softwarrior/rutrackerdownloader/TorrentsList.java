package com.softwarrior.rutrackerdownloader;

import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.StatFs;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;

import java.io.File;
import java.io.FileInputStream;

import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;

import com.google.ads.Ad;
import com.google.ads.AdListener;
import com.google.ads.AdRequest;
import com.google.ads.AdView;
import com.google.ads.AdRequest.ErrorCode;
import com.mobclix.android.sdk.MobclixAdView;
import com.mobclix.android.sdk.MobclixAdViewListener;
import com.mobclix.android.sdk.MobclixMMABannerXLAdView;
import com.softwarrior.rutrackerdownloader.DownloadService.Controller.ControllerState;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp.ActivityResultType;
import com.softwarrior.widgets.TextProgressBar;
//----------------------------------------------------------------------------------
class TorrentContainer{
	public volatile ControllerState CtrlState = ControllerState.Undefined;
	public volatile String  Status = "";
	public volatile String  Name = "";
	public volatile String  ContentName = "";
	public volatile int	Progress = 0;
	public volatile int TotalSize = 0;
	public volatile int ProgressSize = 0;
    
    public TorrentContainer(String fileName, String contentName, int progress, int progressSize, int totalSize){
    	Name=fileName; ContentName=contentName; Progress=progress;  ProgressSize=progressSize; TotalSize=totalSize;
    }
}
//----------------------------------------------------------------------------------
public class TorrentsList extends ListActivity implements AdListener, MobclixAdViewListener {
    static public ArrayList<TorrentContainer> Torrents = new ArrayList<TorrentContainer>();
    
    private WakeLock mWakeLock;
    
    TorrentAdapter mAdapter;
    
    
    static volatile private String mTorrentSavePathFull = RutrackerDownloaderApp.DefaultTorrentSavePath;
	private Timer mAdRefreshTimer;
	private static final int mAdRefreshTime = 30000; //30 seconds
	private Handler mAdRefreshTimerHandler;
	//Mobclix
	private MobclixMMABannerXLAdView mAdviewBanner;
	//AdMob 
  	private AdView mAdView;
  	private AdRequest mAdRequest;    
 
	private Thread mStatusThread;
    private volatile boolean mStopProgress = false;
	private Timer mRefreshListTimer;
	private static final int mRefreshListTime = 500; //0.5 seconds
	private Handler mRefreshListTimerHandler;
 
	static TextView mRightText = null;
	static TextView mLeftText = null;
	
    enum MenuType{
    	About, Help, Preferences, FileManager, WebHistory, Exit;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_CUSTOM_TITLE);

		PowerManager pm = (PowerManager)getSystemService(POWER_SERVICE);
		mWakeLock = pm.newWakeLock(PowerManager.FULL_WAKE_LOCK
			| PowerManager.ACQUIRE_CAUSES_WAKEUP, "SHARED");
		mWakeLock.setReferenceCounted(false);

        // Use a custom layout file
        setContentView(R.layout.torrentslist);
        
        final ListView listView = getListView();
        // Tell the list view which view to display when the list is empty
        listView.setEmptyView(findViewById(R.id.empty));
        listView.setItemsCanFocus(false);
        listView.setChoiceMode(ListView.CHOICE_MODE_MULTIPLE);
      
        listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
            public void onItemClick(AdapterView<?> parent, View view, int position, long id){
              TorrentContainer tc = Torrents.get(position);
              RutrackerDownloaderApp.TorrentFullFileName = tc.Name;
              RutrackerDownloaderApp.OpenTorrentDownloadActivity(TorrentsList.this);
              finish();
            }
        });        
        // Set up our adapter
        mAdapter = new TorrentAdapter(this);
        setListAdapter(mAdapter);        

        getWindow().setFeatureInt(Window.FEATURE_CUSTOM_TITLE, R.layout.custom_title);
        mRightText = (TextView) findViewById(R.id.right_text);
        mLeftText = (TextView) findViewById(R.id.left_text);
        mLeftText.setTextColor(Color.WHITE);
        mLeftText.setTypeface(null,Typeface.BOLD);
        mRightText.setTextColor(Color.WHITE);
        mRightText.setTypeface(null,Typeface.BOLD);

        // Start lengthy operation in a background thread
        mStatusThread = new Thread(new Runnable() {
            public void run() {
            	while (!mStopProgress) {
            		try {
						Thread.sleep(100);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
					for(int i=0;i<Torrents.size();i++){
						TorrentContainer tc = Torrents.get(i);
						if(tc.CtrlState == ControllerState.Started){
							int progress = DownloadService.LibTorrent.GetTorrentProgress(tc.ContentName);
							if (progress>=0){ 
								tc.Progress = progress;
							}else { 
								tc.CtrlState = ControllerState.Undefined;								
								continue;
							}
							int progress_size = DownloadService.LibTorrent.GetTorrentProgressSize(tc.ContentName);
							if(progress_size>=0){ 
								tc.ProgressSize = progress_size;
							}else{
								tc.CtrlState = ControllerState.Undefined;
								continue;
							}
							int status = DownloadService.LibTorrent.GetTorrentState(tc.ContentName);
							if(status>=0){
								String txt_status = DownloadService.Controller.GetTorrentStateName(TorrentsList.this, status);
								tc.Status = txt_status;								
							}else{
								tc.CtrlState = ControllerState.Undefined;
								continue;
							}
						} else if(tc.CtrlState == ControllerState.Paused){
							int status = DownloadService.LibTorrent.GetTorrentState(tc.ContentName);
							if(status>=0){
								String txt_status = DownloadService.Controller.GetTorrentStateName(TorrentsList.this, status);
								tc.Status = txt_status;								
							}else{
								tc.CtrlState = ControllerState.Undefined;
								continue;
							}
						}
						else{
							tc.Status = getString(R.string.text_torrent_state_undefined);
						}							
                		try {
							Thread.sleep(1);
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
					}
				}
            }
        });
        mStatusThread.start();                                        
        mRefreshListTimer = new Timer();
        mRefreshListTimer.schedule(new RefreshListTimerTask(), mRefreshListTime, mRefreshListTime);
        mRefreshListTimerHandler = new Handler() {
            @Override
            public void handleMessage(Message msg) {
                mAdapter.notifyDataSetChanged();
                String text_r = "" + GetAvailibleMB(mTorrentSavePathFull) + " MB";
                String text_l = getString(R.string.available_space) + ":";
                mLeftText.setText(text_l);
                mRightText.setText(text_r);
            }
        };        

        //Mobclix
        mAdviewBanner = (MobclixMMABannerXLAdView) findViewById(R.id.advertising_banner_view);	        
        //AdMob
        mAdView = (AdView) findViewById(R.id.adView);
        
        Context context = getApplicationContext();
        if(RutrackerDownloaderApp.CheckMode(context) && RutrackerDownloaderApp.CheckService(context)){
        	mAdviewBanner.setVisibility(View.GONE);
        	mAdView.setVisibility(View.GONE);
        } else{
	        //Mobclix
	        mAdviewBanner.addMobclixAdViewListener(this);
    		mAdviewBanner.getAd();
	        //AdMob
    		mAdView.setAdListener(this);
	        mAdRequest = new AdRequest();
	        //mAdRequest.setTesting(true);
	        mAdView.loadAd(mAdRequest);

	        mAdRefreshTimer = new Timer();
	        mAdRefreshTimer.schedule(new AdRefreshTimerTask(), mAdRefreshTime, mAdRefreshTime);
	        mAdRefreshTimerHandler = new Handler() {
	            @Override
	            public void handleMessage(Message msg) {
					mAdView.loadAd(mAdRequest);
	        		mAdviewBanner.getAd();
	            }
	        };        
        }
        
        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
        RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/TorrentsList");
    }
    
    @Override
    protected void onDestroy() {
		mStopProgress = true;
		if(mWakeLock.isHeld()) {
		    Log.w(RutrackerDownloaderApp.TAG, "WakeLock is still held");
		    mWakeLock.release();
		}
		super.onDestroy();
    }
  
    @Override
    protected void onResume() {
        super.onResume();
        AddTorrent(RutrackerDownloaderApp.TorrentFullFileName, 0, 0);
        mTorrentSavePathFull = DownloadPreferencesScreen.GetTorrentSavePath(this);
        mWakeLock.acquire();
        mAdapter.notifyDataSetChanged();
        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
		if(mStatusThread != null && !mStatusThread.isAlive())
			mStatusThread.resume();
    }
    
    @Override
    protected void onPause() {
    	mWakeLock.release();
    	super.onPause();
    	if(mAdRefreshTimer != null){
    		mAdRefreshTimer.cancel(); 
    		mAdRefreshTimer = null;
    	}
    	if(mRefreshListTimer != null){
    		mRefreshListTimer.cancel(); 
    		mRefreshListTimer = null;
    	}
    	if(mStatusThread != null && mStatusThread.isAlive())
			mStatusThread.suspend();
    }
    
    @Override
    protected void onRestart() {
    	super.onRestart();
    	mAdRefreshTimer = new Timer();
    	mAdRefreshTimer.schedule(new AdRefreshTimerTask(), 0, mAdRefreshTime);
    	mRefreshListTimer = new Timer();
    	mRefreshListTimer.schedule(new RefreshListTimerTask(), 0, mRefreshListTime);
    }	    		
    
    private class AdRefreshTimerTask extends TimerTask {			
		@Override
		public void run() {
			if(mAdRefreshTimerHandler!=null)
			    mAdRefreshTimerHandler.sendEmptyMessage(0);
		}	    	
    }	   

    private class RefreshListTimerTask extends TimerTask {			
		@Override
		public void run() {
			if(mRefreshListTimerHandler!=null)
			    mRefreshListTimerHandler.sendEmptyMessage(0);
		}	    	
    }	   

    public static long GetAvailibleMB(String path){
    	StatFs stat = new StatFs(path); 
    	long bytesAvailable = (long)stat.getBlockSize() * (long)stat.getAvailableBlocks();
    	Log.i(RutrackerDownloaderApp.TAG,"" + bytesAvailable);
    	long megAvailable = bytesAvailable / 1048576;
    	return megAvailable;    
        //SdSize  totalBlocks * blockSize
        //SdAvail availableBlocks * blockSize
    }
    
    static public void AddTorrent(String FileName, int progress, int progressSize){
        if(FileName.equals("undefined"))
        	return;
    	for(int i=0;i<Torrents.size();i++){
    		TorrentContainer tc = Torrents.get(i);
    		if(tc.Name.equals(FileName))
    			return;
    	}
		try {
	    	File file = new File(FileName);
			FileInputStream input = new FileInputStream(file);
			input.close();
		} catch (Exception e){
			return;
		}
		int totalSize = DownloadService.LibTorrent.GetTorrentSize(FileName);
		String contentName = DownloadService.LibTorrent.GetTorrentName(FileName);
    	Torrents.add(new TorrentContainer(FileName, contentName, progress, progressSize, totalSize));    	
    }

    static public void SetCtrlState(String FileName, ControllerState ctrlState){
        if(FileName.equals("undefined"))
        	return;
    	for(int i=0;i<Torrents.size();i++){
    		TorrentContainer tc = Torrents.get(i);
    		if(tc.Name.equals(FileName)){
    			tc.CtrlState = ctrlState;
    			return;
    		}
    	}
    }

    static public void FinalRemoveTorrents(){
    	for(int i=0;i<Torrents.size();i++){
    		TorrentContainer tc = Torrents.get(i);
    		DownloadService.LibTorrent.RemoveTorrent(tc.ContentName);
    		try {
				Thread.sleep(10);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
    	}
    }

    static private void RemoveTorrent(String FileName){
    	for(int i=0;i<Torrents.size();i++){
    		TorrentContainer tc = Torrents.get(i);
    		if(tc.Name.equals(FileName)){
   				DownloadService.LibTorrent.RemoveTorrent(tc.ContentName);
   	    		try {
   					Thread.sleep(10);
   				} catch (InterruptedException e) {
   					e.printStackTrace();
   				}
    			Torrents.remove(i);
    			if(Torrents.size() == 0)
    				RutrackerDownloaderApp.TorrentFullFileName =  new String("undefined");
    			return;
    		}
    	}
    }
    
    static public ControllerState GetCtrlState(String FileName){
        if(FileName.equals("undefined"))
        	return ControllerState.Undefined;
    	for(int i=0;i<Torrents.size();i++){
    		TorrentContainer tc = Torrents.get(i);
    		if(tc.Name.equals(FileName)){
    			return tc.CtrlState;
    		}
    	}
    	return ControllerState.Undefined;
    }
    public void OnClickButtonAddTorrent(View v){
        RutrackerDownloaderApp.FileManagerActivity(this);
    }

    public void OnClickButtonRemoveTorrents(View v){
        Torrents.clear();
        mAdapter.notifyDataSetChanged();
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
            break;
        };      
    }
    
    public class TorrentAdapter extends BaseAdapter {
        private LayoutInflater mInflater;
        private Context mContext;

        public TorrentAdapter(Context c) { 
            mContext = c;
            mInflater = (LayoutInflater)mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        }
        public int getCount(){ return Torrents.size(); }
        public Object getItem(int position) { return position;}
        public long getItemId(int position) { return position;}
        public View getView(int position, View convertView, ViewGroup parent) {
            View v = null;
            if( convertView != null )
                v = convertView;
            else
                v = mInflater.inflate(R.layout.torrent_row, parent, false);
            TorrentContainer tc = Torrents.get(position);
            TextView tv_status = (TextView)v.findViewById( R.id.status );
            TextView tv_name = (TextView)v.findViewById( R.id.childname );
            TextProgressBar pb_progress = (TextProgressBar)v.findViewById(R.id.progress_horizontal);
            Button b_close = (Button)v.findViewById(R.id.button_menu);
            if(b_close != null){
	            b_close.setTag(tc);
	            b_close.setOnClickListener(new OnClickListener() {			
					public void onClick(View v) {
						TorrentContainer tc = (TorrentContainer)v.getTag();
						RemoveTorrent(tc.Name);
					}
	    		});
            }
            if(tv_name != null){
            	tv_name.setText(tc.ContentName);
            }
            if(tv_status != null){
            	String status = tc.Status;
            	if(status.length() < 1)
            		tv_status.setText(R.string.text_torrent_state_undefined);
            	else
            		tv_status.setText(status);          		
            }
			if(pb_progress!=null){
				pb_progress.setProgress(tc.Progress);
				pb_progress.setText("" + tc.ProgressSize+ "/" + tc.TotalSize+ "MB");
			}
            return v;
        }
    }
    
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		super.onCreateOptionsMenu(menu);
		menu.add(Menu.NONE, MenuType.About.ordinal(), MenuType.About.ordinal(), R.string.menu_about); 
		menu.add(Menu.NONE, MenuType.Help.ordinal(), MenuType.Help.ordinal(), R.string.menu_help); 
		menu.add(Menu.NONE, MenuType.Preferences.ordinal(), MenuType.Preferences.ordinal(), R.string.menu_preferences);
		menu.add(Menu.NONE, MenuType.FileManager.ordinal(), MenuType.FileManager.ordinal(), R.string.menu_file_manager);
		menu.add(Menu.NONE, MenuType.WebHistory.ordinal(), MenuType.WebHistory.ordinal(), R.string.menu_web_history);
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
		case WebHistory:{
			RutrackerDownloaderApp.WebHistoryActivity(this);
		} break;
		case Exit:{
			if(RutrackerDownloaderApp.DownloadServiceMode)
				RutrackerDownloaderApp.FinalCloseApplication(this);
			else
				RutrackerDownloaderApp.CloseApplication(this);
		} break;
		}
		return true;
	}
	//Mobclix
	public String keywords()	{ return null;}
	public String query()		{ return null;}
	public void onAdClick(MobclixAdView arg0) {
		Log.v(RutrackerDownloaderApp.TAG, "Mobclix clicked");
	}
	public void onCustomAdTouchThrough(MobclixAdView adView, String string) {
		Log.v(RutrackerDownloaderApp.TAG, "Mobclix The custom ad responded with '" + string + "' when touched!");
	}
	public boolean onOpenAllocationLoad(MobclixAdView adView, int openAllocationCode) {
		Log.v(RutrackerDownloaderApp.TAG, "Mobclix The ad request returned open allocation code: " + openAllocationCode);
		return false;
	}
	public void onSuccessfulLoad(MobclixAdView view) {
		Log.v(RutrackerDownloaderApp.TAG, "Mobclix The ad request was successful!");
		view.setVisibility(View.VISIBLE);
	}
	public void onFailedLoad(MobclixAdView view, int errorCode) {
		Log.v(RutrackerDownloaderApp.TAG, "Mobclix The ad request failed with error code: " + errorCode);
		view.setVisibility(View.GONE);
	}
	//AdMob
	public void onDismissScreen(Ad ad) {
		Log.v(RutrackerDownloaderApp.TAG, "AdMob onDismissScreen");
	}
	public void onFailedToReceiveAd(Ad ad, ErrorCode errorCode) {
		Log.v(RutrackerDownloaderApp.TAG, "AdMob failed to receive ad (" + errorCode + ")");			
	}
	public void onLeaveApplication(Ad ad) {
		Log.v(RutrackerDownloaderApp.TAG, "AdMob onLeaveApplication");
	}
	public void onPresentScreen(Ad ad) {
		Log.v(RutrackerDownloaderApp.TAG, "AdMob onLeaveApplication");			
	}
	public void onReceiveAd(Ad ad) {
		Log.v(RutrackerDownloaderApp.TAG, "AdMob onReceiveAd");						
	}				
}
