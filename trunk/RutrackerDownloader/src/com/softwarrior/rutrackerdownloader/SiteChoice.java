package com.softwarrior.rutrackerdownloader;

import java.util.Timer;
import java.util.TimerTask;

import com.admob.android.ads.AdListener;
import com.admob.android.ads.AdManager;
import com.admob.android.ads.AdView;
import com.admob.android.ads.InterstitialAd;
import com.admob.android.ads.InterstitialAdListener;
import com.admob.android.ads.SimpleAdListener;
import com.admob.android.ads.InterstitialAd.Event;

import com.softwarrior.rutrackerdownloader.R;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Bundle;
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

public class SiteChoice extends PreferenceActivity implements OnSharedPreferenceChangeListener, AdListener, InterstitialAdListener {

		public static final String KEY_RUTRACKER="preferences_rutracker";
		public static final String KEY_PORNOLAB="preferences_pornolab";

		public enum SiteType{
			RUTRACKER, PORNOLAB
		}
		
//		private SiteChoice mThis;
		
		private Timer mAdRefreshTimer;
		private static final int mAdRefreshTime = 30000; //30 seconds
	
		//AdMob 
		private InterstitialAd mInterstitialAd;
	  	private AdView 		 mAdView;	  	
	  	
		public enum MenuType{
			About, Help, FileManager, Exit;
		}

		public static SiteType GetSite(Context context){
			SiteType result = SiteType.RUTRACKER; 
			SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
			if(preferences.getBoolean(KEY_RUTRACKER, true))
				 result = SiteType.RUTRACKER;
			else if(preferences.getBoolean(KEY_PORNOLAB, false))
				 result = SiteType.PORNOLAB;
			return result;
		}

	   @Override
	    public void onCreate(Bundle savedInstanceState) {
		    super.onCreate(savedInstanceState);	        
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
	        
	        //AdMob
	        AdManager.setPublisherId("a14d5a500187b19");
//	        AdManager.setTestDevices(new String[] { AdManager.TEST_EMULATOR, "92D0B17743FC28D496804E97F99B6D10" });        
//	        AdManager.setTestAction("video_int");

	        mAdView = (AdView) findViewById(R.id.ad);
	        mAdView.setAdListener(new AdvertisingListener());
	        
	        // call for an Interstitial Ad
	        mInterstitialAd = new InterstitialAd(Event.APP_START, this);
	        mInterstitialAd.requestAd(this);
	        	        
	        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.FinalCloseApplication(this);
		    RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/SiteChoice");
	    }

	    public void OnClickButtonRefreshAdvertising(View v) {			
			mInterstitialAd = new InterstitialAd(Event.SCREEN_CHANGE, this);
			mInterstitialAd.requestAd(this); //request an ad now so it's ready when we want to show it			
		}  
	   
	    private class AdRefreshTimerTask extends TimerTask {			
			@Override
			public void run() {
				mAdView.requestFreshAd();
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
			getPreferenceScreen().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
	        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.FinalCloseApplication(this);
	    }	    
	    @Override
	    protected void onPause() {
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
	    //After the ad has been shown, it will return with an activity result where
	    //ADMOB_INTENT_BOOLEAN is true.  Once you receive this result you can continue
	    //application loading and execution.
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

		public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {	
			PreferenceScreen preferences = getPreferenceScreen();
			boolean flag = sharedPreferences.getBoolean(key, false);
			if(key.equals(KEY_RUTRACKER) && flag){
				CheckBoxPreference pl = (CheckBoxPreference) preferences.findPreference(KEY_PORNOLAB);
				pl.setChecked(false);
				RutrackerDownloaderApp.SetupRutracker();
			}				
			else if(key.equals(KEY_PORNOLAB) && flag){
				CheckBoxPreference rt = (CheckBoxPreference) preferences.findPreference(KEY_RUTRACKER);
				rt.setChecked(false);
				RutrackerDownloaderApp.SetupPornolab();
			}
		}
}
