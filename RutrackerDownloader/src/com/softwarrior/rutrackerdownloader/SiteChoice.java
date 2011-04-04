package com.softwarrior.rutrackerdownloader;

import java.util.Timer;
import java.util.TimerTask;

import com.google.ads.AdRequest;
import com.google.ads.AdView;

import com.mobclix.android.sdk.MobclixAdView;
import com.mobclix.android.sdk.MobclixAdViewListener;
import com.mobclix.android.sdk.MobclixMMABannerXLAdView;
import com.softwarrior.rutrackerdownloader.R;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.preference.CheckBoxPreference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;

public class SiteChoice extends PreferenceActivity implements OnSharedPreferenceChangeListener, MobclixAdViewListener {
		private WakeLock mWakeLock;

		public static final String KEY_RUTRACKER="preferences_rutracker";
		public static final String KEY_PORNOLAB="preferences_pornolab";
		public static final String KEY_NNMCLUB="preferences_nnmclub";

		private static boolean mAdClicked=false;
		
		public enum SiteType{
			RUTRACKER, PORNOLAB, NNMCLUB
		}		
		private Timer mAdRefreshTimer;
		private static final int mAdRefreshTime = 30000; //30 seconds
		private Handler mAdRefreshTimerHandler;
		//Mobclix
		private MobclixMMABannerXLAdView mAdviewBanner;
		//AdMob 
	  	private AdView mAdView;
	  	private AdRequest mAdRequest;
	  	
		public enum MenuType{
			About, Help, FileManager, Exit;
		}
		
		private void SetAdClicked(boolean flag){
	        Context context = getApplicationContext();
	        if(RutrackerDownloaderApp.CheckMode(context) && RutrackerDownloaderApp.CheckService(context))
	        	mAdClicked = true;
	        else 
	        	mAdClicked = flag;
		}
		
		public static SiteType GetSite(Context context){
			SiteType result = SiteType.RUTRACKER; 
			SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
			if(preferences.getBoolean(KEY_RUTRACKER, false))
				 result = SiteType.RUTRACKER;
			else if(preferences.getBoolean(KEY_PORNOLAB, false))
				 result = SiteType.PORNOLAB;
			else if(preferences.getBoolean(KEY_NNMCLUB, false))
				 result = SiteType.NNMCLUB;
			return result;
		}

	   @Override
	    public void onCreate(Bundle savedInstanceState) {
		   super.onCreate(savedInstanceState);	  
		    		    		    
			PowerManager pm = (PowerManager)getSystemService(POWER_SERVICE);
			mWakeLock = pm.newWakeLock(PowerManager.FULL_WAKE_LOCK
				| PowerManager.ACQUIRE_CAUSES_WAKEUP, "SHARED");
			mWakeLock.setReferenceCounted(false);
		    		    
	        setContentView(R.layout.site_choise);	        
	        addPreferencesFromResource(R.xml.site_choise);

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
	        	mAdClicked = true;
	        } else{
		        //Mobclix
		        mAdviewBanner.addMobclixAdViewListener(this);
	    		mAdviewBanner.getAd();
		        //AdMob
		        mAdRequest = new AdRequest();
//		        mAdRequest.setTesting(true);
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
	        
	        
	        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.FinalCloseApplication(this);
		    RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/SiteChoice");
	    }

	    @Override
	    protected void onDestroy() {
			if(mWakeLock.isHeld()) {
			    Log.w(RutrackerDownloaderApp.TAG, "WakeLock is still held");
			    mWakeLock.release();
			}
			super.onDestroy();
	    }
	   
	    private class AdRefreshTimerTask extends TimerTask {			
			@Override
			public void run() {
				if(mAdRefreshTimerHandler!=null)
				    mAdRefreshTimerHandler.sendEmptyMessage(0);
			}	    	
	    }	   
	   @Override
		public boolean onCreateOptionsMenu(Menu menu) {
			super.onCreateOptionsMenu(menu);
			menu.add(Menu.NONE, MenuType.About.ordinal(), MenuType.About.ordinal(), R.string.menu_about); 
			menu.add(Menu.NONE, MenuType.Help.ordinal(), MenuType.Help.ordinal(), R.string.menu_help); 
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
			case FileManager:{
				RutrackerDownloaderApp.FileManagerActivity(this);
			} break;
			case Exit:{
				RutrackerDownloaderApp.FinalCloseApplication(this);
			} break;
			}
			return true;
		}	   	
		@Override 
		public boolean onKeyDown(int keyCode, KeyEvent event) {
			if(keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0)
				RutrackerDownloaderApp.FinalCloseApplication(this);
			return super.onKeyDown(keyCode,event); 
		}		
	    @Override
	    protected void onResume() {
	    	super.onResume();
	    	mWakeLock.acquire();
	    	if(mAdClicked){
	    		getPreferenceScreen().setEnabled(true);
	    		SetAdClicked(false);
	    	} else
	    		getPreferenceScreen().setEnabled(false);
			getPreferenceScreen().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
	        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.FinalCloseApplication(this);
	    }	    
	    @Override
	    protected void onPause() {
	    	mWakeLock.release();
	    	super.onPause();
	    	if(mAdRefreshTimer != null){
	    		mAdRefreshTimer.cancel(); 
	    		mAdRefreshTimer = null;
	    	}
			getPreferenceScreen().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this); 
	    }
	    @Override
	    protected void onRestart() {
	    	super.onRestart();
	    	mAdRefreshTimer = new Timer();
	    	mAdRefreshTimer.schedule(new AdRefreshTimerTask(), 0, mAdRefreshTime);
	    }	    		
	    @Override
	    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
			switch(RutrackerDownloaderApp.ActivityResultType.getValue(resultCode))
			{
			case RESULT_DOWNLOADER:
				RutrackerDownloaderApp.OpenDownloaderActivity(this);
				return;
			case RESULT_PREFERENCES:
				return;
			case RESULT_EXIT:
				RutrackerDownloaderApp.FinalCloseApplication(this);
				return;
			};
	    }	    	    	    		  
		public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {	
			PreferenceScreen preferences = getPreferenceScreen();
			boolean flag = sharedPreferences.getBoolean(key, false);
			CheckBoxPreference pl = (CheckBoxPreference) preferences.findPreference(KEY_PORNOLAB);
			CheckBoxPreference rt = (CheckBoxPreference) preferences.findPreference(KEY_RUTRACKER);
			CheckBoxPreference nn = (CheckBoxPreference) preferences.findPreference(KEY_NNMCLUB);
			if(key.equals(KEY_RUTRACKER) && flag){
				pl.setChecked(false);
				nn.setChecked(false);
				RutrackerDownloaderApp.SetupRutracker(this);
	    		SetAdClicked(false);
			}				
			else if(key.equals(KEY_PORNOLAB) && flag){
				rt.setChecked(false);
				nn.setChecked(false);
				RutrackerDownloaderApp.SetupPornolab(this);
	    		SetAdClicked(false);
			}
			else if(key.equals(KEY_NNMCLUB) && flag){
				rt.setChecked(false);
				pl.setChecked(false);
				RutrackerDownloaderApp.SetupNnmclub(this);
	    		SetAdClicked(false);
			}
		}
		//AdMob
		public void OnClickAdview(View v){
			Log.v(RutrackerDownloaderApp.TAG, "AdMob clicked");
			SetAdClicked(true);			
		}
		//Mobclix
		public String keywords()	{ return null;}
		public String query()		{ return null;}
		public void onAdClick(MobclixAdView arg0) {
			Log.v(RutrackerDownloaderApp.TAG, "Mobclix clicked");
			SetAdClicked(true);
		}
		public void onCustomAdTouchThrough(MobclixAdView adView, String string) {
			Log.v(RutrackerDownloaderApp.TAG, "The custom ad responded with '" + string + "' when touched!");
		}
		public boolean onOpenAllocationLoad(MobclixAdView adView, int openAllocationCode) {
			Log.v(RutrackerDownloaderApp.TAG, "The ad request returned open allocation code: " + openAllocationCode);
			return false;
		}
		public void onSuccessfulLoad(MobclixAdView view) {
			Log.v(RutrackerDownloaderApp.TAG, "The ad request was successful!");
			view.setVisibility(View.VISIBLE);
		}
		public void onFailedLoad(MobclixAdView view, int errorCode) {
			Log.v(RutrackerDownloaderApp.TAG, "The ad request failed with error code: " + errorCode);
			view.setVisibility(View.GONE);
		}				
}
