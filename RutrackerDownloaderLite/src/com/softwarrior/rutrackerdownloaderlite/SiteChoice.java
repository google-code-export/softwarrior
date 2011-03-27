package com.softwarrior.rutrackerdownloaderlite;

import java.util.Timer;
import java.util.TimerTask;

import com.admob.android.ads.AdListener;
import com.admob.android.ads.AdManager;
import com.admob.android.ads.AdView;
import com.admob.android.ads.SimpleAdListener;

import com.mobclix.android.sdk.MobclixAdView;
import com.mobclix.android.sdk.MobclixAdViewListener;
import com.mobclix.android.sdk.MobclixMMABannerXLAdView;
import com.softwarrior.rutrackerdownloaderlite.R;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Bundle;
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
import android.widget.LinearLayout;

public class SiteChoice extends PreferenceActivity implements OnSharedPreferenceChangeListener, AdListener, MobclixAdViewListener {
		private WakeLock mWakeLock;

		public static final String KEY_RUTRACKER="preferences_rutracker";
		public static final String KEY_PORNOLAB="preferences_pornolab";
		public static final String KEY_NNMCLUB="preferences_nnmclub";

		public static boolean AdClicked=false;
		
		public enum SiteType{
			RUTRACKER, PORNOLAB, NNMCLUB
		}		
		private Timer mAdRefreshTimer;
		private static final int mAdRefreshTime = 30000; //30 seconds
		//Mobclix
		private MobclixMMABannerXLAdView mAdviewBanner;
		//AdMob 
	  	private AdView mAdView;	  	
	  	
		public enum MenuType{
			About, Help, FileManager, Exit;
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
	        	        
	        LinearLayout myLayout = (LinearLayout)findViewById(R.id.container);
	        
//	        mThis = this;
//	    	Button button = new Button(this);
//	    	button.setOnClickListener(new OnClickListener() {
//	    	    public void onClick(View v) {
//	    	    	mThis.OnClickButtonRefreshAdvertising(v);
//	    	    }
//	    	});
//
//	    	button.setText(R.string.button_refresh_advertising);
//	    	LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
//									LinearLayout.LayoutParams.FILL_PARENT,
//										LinearLayout.LayoutParams.WRAP_CONTENT);
//	    	myLayout.addView(button, params);	    
	        
	        myLayout.invalidate();
	        
	        mAdRefreshTimer = new Timer();
	        mAdRefreshTimer.schedule(new AdRefreshTimerTask(), mAdRefreshTime, mAdRefreshTime);

	        //Mobclix
	        mAdviewBanner = (MobclixMMABannerXLAdView) findViewById(R.id.advertising_banner_view);
	        mAdviewBanner.addMobclixAdViewListener(this);
	        
	        //AdMob
	        AdManager.setPublisherId("a14d5a500187b19");
//	        AdManager.setTestDevices(new String[] { AdManager.TEST_EMULATOR, "92D0B17743FC28D496804E97F99B6D10" });        
//	        AdManager.setTestAction("video_int");

	        mAdView = (AdView) findViewById(R.id.ad);
	        mAdView.setAdListener(new AdvertisingListener());
	        	        	        
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

	    public void OnClickButtonRefreshAdvertising(View v) {			
		}  
	   
	    private class AdRefreshTimerTask extends TimerTask {			
			@Override
			public void run() {
				mAdView.requestFreshAd();
        		mAdviewBanner.getAd();
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
	    	if(AdClicked){
	    		getPreferenceScreen().setEnabled(true);
	    		AdClicked = false;
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
		public void OnClickAdview(View v){
			Log.v(RutrackerDownloaderApp.TAG, "AdMob clicked");
			AdClicked = true;			
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
	    		AdClicked = false;
			}				
			else if(key.equals(KEY_PORNOLAB) && flag){
				rt.setChecked(false);
				nn.setChecked(false);
				RutrackerDownloaderApp.SetupPornolab(this);
	    		AdClicked = false;
			}
			else if(key.equals(KEY_NNMCLUB) && flag){
				rt.setChecked(false);
				pl.setChecked(false);
				RutrackerDownloaderApp.SetupNnmclub(this);
	    		AdClicked = false;
			}
		}
		//Mobclix
		public String keywords()	{ return null;}
		public String query()		{ return null;}
		public void onAdClick(MobclixAdView arg0) {
			Log.v(RutrackerDownloaderApp.TAG, "Mobclix clicked");
			AdClicked = true;
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
