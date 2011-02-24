package com.softwarrior.about;

import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

import com.admob.android.ads.AdListener;
import com.admob.android.ads.AdManager;
import com.admob.android.ads.AdView;
import com.admob.android.ads.InterstitialAd;
import com.admob.android.ads.InterstitialAdListener;
import com.admob.android.ads.SimpleAdListener;
import com.admob.android.ads.InterstitialAd.Event;
import com.inmobi.androidsdk.EducationType;
import com.inmobi.androidsdk.EthnicityType;
import com.inmobi.androidsdk.GenderType;
import com.inmobi.androidsdk.InMobiAdDelegate;
import com.inmobi.androidsdk.impl.InMobiAdView;

import com.softwarrior.rutrackerdownloader.FullWakeActivity;
import com.softwarrior.rutrackerdownloader.R;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp.ActivityResultType;

import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

public class AllAdvertising extends FullWakeActivity implements AdListener, InterstitialAdListener, InMobiAdDelegate {

		//InMobi
//		private InMobiAdView mIMAdView;
		private Timer mAdRefreshTimer;
		private static final int mAdRefreshTime = 30000; //30 seconds
	
		//AdMob 
		private InterstitialAd mInterstitialAd;
	  	private AdView 		 mAdView;
	  
		public enum MenuType{
			About, Help, FileManager, Exit;
		}

	   @Override
	    public void onCreate(Bundle savedInstanceState) {
	        super.onCreate(savedInstanceState);
	        setContentView(R.layout.all_advertising);
	        
	        //Zestadz
	        // RelativeLayout layout = new RelativeLayout(this);
	        //ZestadzAd zestAd = new ZestadzAd(this);
	        //layout.addView(zestAd);
	        //setContentView(layout);

	        
	        //InMoby
//	        mIMAdView = (InMobiAdView) findViewById(R.id.adview);
//	        mIMAdView.initialize(this.getApplicationContext(), this, this, InMobiAdDelegate.INMOBI_AD_UNIT_320X48);
//	        mIMAdView.loadNewAd();
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
	        	        
	        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
		    RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/Advertising");
	    }
	   
	    private class AdRefreshTimerTask extends TimerTask {
			
			@Override
			public void run() {
//				mIMAdView.loadNewAd();
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
	        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
	    }
	    
	    @Override
	    protected void onPause() {
	    	super.onPause();
	    	mAdRefreshTimer.cancel(); 
	    	mAdRefreshTimer = null;
//	        ZestadzAd.stopAdpull();
	    }
	    
	    @Override
	    protected void onStop() {
	    	super.onStop();
//	    	ZestadzAd.stopAdpull();
	    }
	    
	    @Override
	    protected void onRestart() {
	    	super.onRestart();
	    	mAdRefreshTimer = new Timer();
	    	mAdRefreshTimer.schedule(new AdRefreshTimerTask(), 0, mAdRefreshTime);
	    }
	    
		@Override
		protected void onDestroy() {
			super.onDestroy();
			RutrackerDownloaderApp.AnalyticsTracker.dispatch();
		}
		
        //TODO: Need to show animation picture with girl
		
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
			switch(ActivityResultType.getValue(resultCode))
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
	    	    	    		
		public void OnClickButtonRefreshAdvertising(View v) {			
			mInterstitialAd = new InterstitialAd(Event.SCREEN_CHANGE, this);
			mInterstitialAd.requestAd(this); //request an ad now so it's ready when we want to show it			
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
		//InMobi
		public void adRequestCompleted(InMobiAdView arg0) {
			Log.v(RutrackerDownloaderApp.TAG, "inmobi ad request completed");						
		}
		public void adRequestFailed(InMobiAdView arg0) {
			Log.v(RutrackerDownloaderApp.TAG, "inmobi ad request failed");			
		}
		public String siteId() {
			return "ff8080812e3c9951012e4fed9f2d00ab";
		}
		public boolean testMode() {
			return true;
		}		
		public int age() {
			return 0;
		}
		public String areaCode() {
			return null;
		}
		public Location currentLocation() {
			return null;
		}
		public Date dateOfBirth() {
			return null;
		}
		public EducationType education() {
			return null;
		}
		public EthnicityType ethnicity() {
			return null;
		}
		public GenderType gender() {
			return null;
		}
		public int income() {
			return 0;
		}
		public String interests() {
			return null;
		}
		public boolean isLocationInquiryAllowed() {
			return false;
		}
		public boolean isPublisherProvidingLocation() {
			return false;
		}
		public String keywords() {
			return null;
		}
		public String postalCode() {
			return null;
		}
		public String searchString() {
			return null;
		}
}
