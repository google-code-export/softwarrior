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
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.CompoundButton.OnCheckedChangeListener;

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
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp.ActivityResultType;
//----------------------------------------------------------------------------------
class TorrentContainer{
    private String  mName = "Name";
    private long    mProgress = 0;
    private boolean mState = false;
    
    public TorrentContainer(String FileName){mName = FileName;}
    public TorrentContainer(String FileName, long progress){mName = FileName; mProgress = progress;}
    public void setState(boolean flag){mState=flag;}
    public String getName(){return mName;}
    public boolean getState(){return mState;}
    public long getProgress(){return mProgress;}     
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
    }
    
    @Override
    protected void onPause() {
    	mWakeLock.release();
    	super.onPause();
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
    
    private class AdRefreshTimerTask extends TimerTask {			
		@Override
		public void run() {
			if(mAdRefreshTimerHandler!=null)
			    mAdRefreshTimerHandler.sendEmptyMessage(0);
		}	    	
    }	   
    
    static public void AddTorrent(String FileName, long progress){
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
            TextView tv_name = (TextView)v.findViewById( R.id.childname );
            TorrentContainer tc = Torrents.get(position);
            CheckBox cb = (CheckBox)v.findViewById( R.id.check1 );
            cb.setTag(tc);
            cb.setOnCheckedChangeListener(new OnCheckedChangeListener() {           
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                    TorrentContainer tc = (TorrentContainer)buttonView.getTag();
                    tc.setState(isChecked);
                }
            });
            if( tv_name != null )
                tv_name.setText( tc.getName() );
            if( cb != null )
                    cb.setChecked( tc.getState() );
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
