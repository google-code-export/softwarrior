package com.softwarrior.rutrackerdownloaderlite;

import java.util.Timer;
import java.util.TimerTask;

import com.google.ads.Ad;
import com.google.ads.AdListener;
import com.google.ads.AdRequest;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdView;

import com.mobclix.android.sdk.MobclixAdView;
import com.mobclix.android.sdk.MobclixAdViewListener;
import com.mobclix.android.sdk.MobclixMMABannerXLAdView;
import com.softwarrior.rutrackerdownloaderlite.R;

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
import android.preference.PreferenceScreen;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;

public class SiteChoice extends PreferenceActivity implements OnSharedPreferenceChangeListener, AdListener, MobclixAdViewListener {
		private WakeLock mWakeLock;

		public static final String KEY_RUTRACKER="preferences_rutracker";
		public static final String KEY_PORNOLAB="preferences_pornolab";
		public static final String KEY_NNMCLUB="preferences_nnmclub";

		private static boolean mAdClicked=false;
		
		public enum SiteTypeOld{
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
			About, Help, FileManager, WebHistory, Exit;
		}
		
		private void SetAdClicked(boolean flag){
	        Context context = getApplicationContext();
	        if(DownloaderApp.CheckMode(context) && DownloaderApp.CheckService(context))
	        	mAdClicked = true;
	        else 
	        	mAdClicked = flag;
		}
		
//		public static SiteType GetSite(Context context){
//			SiteType result = SiteType.RUTRACKER; 
//			SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
//			if(preferences.getBoolean(KEY_RUTRACKER, false))
//				 result = SiteType.RUTRACKER;
//			else if(preferences.getBoolean(KEY_PORNOLAB, false))
//				 result = SiteType.PORNOLAB;
//			else if(preferences.getBoolean(KEY_NNMCLUB, false))
//				 result = SiteType.NNMCLUB;
//			return result;
//		}

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
	        if(DownloaderApp.CheckMode(context) && DownloaderApp.CheckService(context)){
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
	        	        
	        if(DownloaderApp.ExitState) DownloaderApp.FinalCloseApplication(this);
		    DownloaderApp.AnalyticsTracker.trackPageView("/SiteChoice");
	    }

	    @Override
	    protected void onDestroy() {
			if(mWakeLock.isHeld()) {
			    Log.w(DownloaderApp.TAG, "WakeLock is still held");
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
			menu.add(Menu.NONE, MenuType.WebHistory.ordinal(), MenuType.WebHistory.ordinal(), R.string.menu_web_history); 
			menu.add(Menu.NONE, MenuType.Exit.ordinal(), MenuType.Exit.ordinal(), R.string.menu_exit);
		    DownloaderApp.SetMenuBackground(this);
			return true;
		}		
		@Override
		public boolean onMenuItemSelected(int featureId, MenuItem item) {
			super.onMenuItemSelected(featureId, item);
			MenuType type = MenuType.values()[item.getItemId()];
			switch(type)
			{
			case About:{
				DownloaderApp.AboutActivity(this);
			} break;
			case Help:{
				DownloaderApp.HelpActivity(this);
			} break;
			case FileManager:{
				DownloaderApp.FileManagerActivity(this);
			} break;
			case WebHistory:{
				DownloaderApp.WebHistoryActivity(this);
			} break;
			case Exit:{
				DownloaderApp.FinalCloseApplication(this);
			} break;
			}
			return true;
		}	   	
		@Override 
		public boolean onKeyDown(int keyCode, KeyEvent event) {
			if(keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0)
				DownloaderApp.FinalCloseApplication(this);
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
	        if(DownloaderApp.ExitState) DownloaderApp.FinalCloseApplication(this);
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
			switch(DownloaderApp.ActivityResultType.getValue(resultCode))
			{
			case RESULT_DOWNLOADER:
				DownloaderApp.OpenDownloaderActivity(this);
				return;
			case RESULT_MAIN:
				return;
			case RESULT_EXIT:
				DownloaderApp.FinalCloseApplication(this);
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
				DownloaderApp.SetupRutracker(this);
	    		SetAdClicked(false);
			}				
			else if(key.equals(KEY_PORNOLAB) && flag){
				rt.setChecked(false);
				nn.setChecked(false);
				DownloaderApp.SetupPornolab(this);
	    		SetAdClicked(false);
			}
			else if(key.equals(KEY_NNMCLUB) && flag){
				rt.setChecked(false);
				pl.setChecked(false);
				DownloaderApp.SetupNnmclub(this);
	    		SetAdClicked(false);
			}
		}
		//Mobclix
		public String keywords()	{ return null;}
		public String query()		{ return null;}
		public void onAdClick(MobclixAdView arg0) {
			Log.v(DownloaderApp.TAG, "Mobclix clicked");
			SetAdClicked(true);
		}
		public void onCustomAdTouchThrough(MobclixAdView adView, String string) {
			Log.v(DownloaderApp.TAG, "Mobclix The custom ad responded with '" + string + "' when touched!");
		}
		public boolean onOpenAllocationLoad(MobclixAdView adView, int openAllocationCode) {
			String allocationText = new String(""); 
			if(openAllocationCode == MobclixAdViewListener.SUBALLOCATION_ADMOB)
				allocationText = new String("ADMOB");
			else if(openAllocationCode == MobclixAdViewListener.SUBALLOCATION_OTHER)
				allocationText = new String("OTHER");
			else if(openAllocationCode == MobclixAdViewListener.SUBALLOCATION_GOOGLE)
				allocationText = new String("GOOGLE");
			else
				allocationText = "UNKNOWN CODE:" + openAllocationCode;
			Log.v(DownloaderApp.TAG, "Mobclix The ad request returned open allocation code: " + allocationText);									
			return false;
		}
		public void onSuccessfulLoad(MobclixAdView view) {
			Log.v(DownloaderApp.TAG, "Mobclix The ad request was successful!");
			view.setVisibility(View.VISIBLE);
		}
		public void onFailedLoad(MobclixAdView view, int errorCode) {
			Log.v(DownloaderApp.TAG, "Mobclix The ad request failed with error code: " + errorCode);
			view.setVisibility(View.GONE);
		}
		//AdMob
		public void onDismissScreen(Ad ad) {
			Log.v(DownloaderApp.TAG, "AdMob onDismissScreen");
		}
		public void onFailedToReceiveAd(Ad ad, ErrorCode errorCode) {
			Log.v(DownloaderApp.TAG, "AdMob failed to receive ad (" + errorCode + ")");			
		}
		public void onLeaveApplication(Ad ad) {
			Log.v(DownloaderApp.TAG, "AdMob onLeaveApplication");
			SetAdClicked(true);			
		}
		public void onPresentScreen(Ad ad) {
			Log.v(DownloaderApp.TAG, "AdMob onLeaveApplication");			
		}
		public void onReceiveAd(Ad ad) {
			Log.v(DownloaderApp.TAG, "AdMob onReceiveAd");						
		}				
}
