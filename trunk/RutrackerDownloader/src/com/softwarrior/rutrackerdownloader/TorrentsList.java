package com.softwarrior.rutrackerdownloader;

import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.ProgressBar;
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
//----------------------------------------------------------------------------------
class TorrentContainer{
	private ControllerState mCtrlState = ControllerState.Undefined;
	private String  mStatus = "";
    private String  mName = "";
    private int    mProgress = 0;
    
    public TorrentContainer(String FileName){mName = FileName;}
    public TorrentContainer(String FileName, int progress){mName = FileName; mProgress = progress;}

    public void setProgress(int progress){mProgress=progress;}     
    public void setStatus(String status){mStatus=status;}     
    public void setCtrlState(ControllerState cs){mCtrlState=cs;}
    
    public String getName(){return mName;}
    public int getProgress(){return mProgress;}     
    public String getStatus(){return mStatus;}     
    public ControllerState getCtrlState(){return mCtrlState;}
}
//----------------------------------------------------------------------------------
public class TorrentsList extends ListActivity implements AdListener, MobclixAdViewListener {
    static public ArrayList<TorrentContainer> Torrents = new ArrayList<TorrentContainer>();
    
    private WakeLock mWakeLock;
    
    TorrentAdapter mAdapter;
    
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
    
    enum MenuType{
    	About, Help, Preferences, FileManager, Exit;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
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
              RutrackerDownloaderApp.TorrentFullFileName = tc.getName();
              RutrackerDownloaderApp.OpenTorrentDownloadActivity(TorrentsList.this);
              finish();
            }
        });        
        // Set up our adapter
        mAdapter = new TorrentAdapter(this);
        setListAdapter(mAdapter);        

        
        // Start lengthy operation in a background thread
        mStatusThread = new Thread(new Runnable() {
            public void run() {
            	while (!mStopProgress) {
            		try {
						Thread.sleep(1);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
					for(int i=0;i<Torrents.size();i++){
						TorrentContainer tc = Torrents.get(i);
						if(tc.getCtrlState() == ControllerState.Started){
							tc.setProgress(DownloadService.LibTorrent.GetTorrentProgress(tc.getName()));
							int status = DownloadService.LibTorrent.GetTorrentState(tc.getName());
							String txt_status = DownloadService.Controller.GetTorrentStateName(TorrentsList.this, status);
							tc.setStatus(txt_status);
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
            }
        };        

        //Mobclix
        mAdviewBanner = (MobclixMMABannerXLAdView) findViewById(R.id.advertising_banner_view);	        
        //AdMob
        mAdView = (AdView) findViewById(R.id.adView);
        
        Context context = getApplicationContext();
        if(RutrackerDownloaderApp.CheckMode(context) && RutrackerDownloaderApp.CheckService(context)){
        	TextView adInfo = (TextView) findViewById(R.id.site_choice_message);
        	adInfo.setVisibility(View.GONE);
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
        mWakeLock.acquire();
        AddTorrent(RutrackerDownloaderApp.TorrentFullFileName,0);
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

    
    static public void AddTorrent(String FileName, int progress){
        if(FileName.equals("undefined"))
        	return;
    	for(int i=0;i<Torrents.size();i++){
    		TorrentContainer tc = Torrents.get(i);
    		if(tc.getName().equals(FileName))
    			return;
    	}
		try {
	    	File file = new File(FileName);
			FileInputStream input = new FileInputStream(file);
			input.close();
		} catch (Exception e){
			return;
		}
    	Torrents.add(new TorrentContainer(FileName, progress));
    }

    static public void SetCtrlState(String FileName, ControllerState ctrlState){
        if(FileName.equals("undefined"))
        	return;
    	for(int i=0;i<Torrents.size();i++){
    		TorrentContainer tc = Torrents.get(i);
    		if(tc.getName().equals(FileName)){
    			tc.setCtrlState(ctrlState);
    			return;
    		}
    	}
    }

    static public void RemoveTorrents(){
    	for(int i=0;i<Torrents.size();i++){
    		TorrentContainer tc = Torrents.get(i);
    		if(tc.getCtrlState() == ControllerState.Started || tc.getCtrlState() == ControllerState.Paused)
    			DownloadService.LibTorrent.RemoveTorrent(tc.getName());
    	}
    }

    static public void RemoveTorrent(String FileName){
    	for(int i=0;i<Torrents.size();i++){
    		TorrentContainer tc = Torrents.get(i);
    		if(tc.getName().equals(FileName)){
    			if(tc.getCtrlState() == ControllerState.Started || tc.getCtrlState() == ControllerState.Paused)
    				DownloadService.LibTorrent.RemoveTorrent(tc.getName());
    			Torrents.remove(i);
    			return;
    		}
    	}
    }
    
    static public ControllerState GetCtrlState(String FileName){
        if(FileName.equals("undefined"))
        	return ControllerState.Undefined;
    	for(int i=0;i<Torrents.size();i++){
    		TorrentContainer tc = Torrents.get(i);
    		if(tc.getName().equals(FileName)){
    			return tc.getCtrlState();
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
            ProgressBar pb_progress = (ProgressBar)v.findViewById(R.id.progress_horizontal);
            Button b_close = (Button)v.findViewById(R.id.button_menu);
            if(b_close != null){
	            b_close.setTag(tc);
	            b_close.setOnClickListener(new OnClickListener() {			
					public void onClick(View v) {
						TorrentContainer tc = (TorrentContainer)v.getTag();
						RemoveTorrent(tc.getName());
					}
	    		});
            }
            if(tv_name != null){
            	tv_name.setText(tc.getName());
            }
            if(tv_status != null){
            	String status = tc.getStatus();
            	if(status.length() < 1)
            		tv_status.setText(R.string.text_torrent_state_undefined);
            	else
            		tv_status.setText(status);          		
            }
			if(pb_progress!=null){
				pb_progress.setProgress(tc.getProgress());
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
