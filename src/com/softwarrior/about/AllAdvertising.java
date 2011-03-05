package com.softwarrior.about;

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

import com.smaato.SOMA.SOMABanner;
import com.smaato.SOMA.SOMADialog;
import com.softwarrior.rutrackerdownloader.FullWakeActivity;
import com.softwarrior.rutrackerdownloader.R;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp.ActivityResultType;

import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

public class AllAdvertising extends FullWakeActivity implements AdListener, InterstitialAdListener, AdWhirlInterface  {
	
		private AllAdvertising mThis;
		
		private Timer mAdRefreshTimer;
		private static final int mAdRefreshTime = 30000; //30 seconds
	
		//AdMob 
		private InterstitialAd mInterstitialAd;
	  	private AdView 		 mAdView;	  	
		//smaato
	  	private SOMABanner mBanner;
	  	
		public enum MenuType{
			About, Help, FileManager, Exit;
		}

	   @Override
	    public void onCreate(Bundle savedInstanceState) {
	        super.onCreate(savedInstanceState);
	        setContentView(R.layout.all_advertising);
	        LinearLayout myLayout = (LinearLayout) findViewById(R.id.container);

		  	//smaato
		  	mBanner = (SOMABanner)findViewById(R.id.BannerView);
		  	mBanner.setPubID("923834030");
		  	mBanner.setAdID("65737629");
		  	mBanner.setDefaultLocation(false);
		  	mBanner.setLocation(37.331689,-122.030731);
		  	mBanner.setMediaType("ALL");
		  	mBanner.nextAd(30);
		  	mBanner.setAnimationOn(true);
		  	mBanner.setKeywordSearch("Android,California");
		  	mBanner.setQuerySearch("red car,mini");
		  	mBanner.setAge(35);
		  	mBanner.fetchDrawableOnThread();
		  	SOMADialog d = new SOMADialog(this);
		  	d.show();	        
	        
	        //AdWhirl
		    // These are density-independent pixel units, as defined in
		    // http://developer.android.com/guide/practices/screens_support.html
		    int width = 320;
		    int height = 52;
		    DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
		    float density = displayMetrics.density;
		    width = (int) (width * density);
		    height = (int) (height * density);

		    AdWhirlTargeting.setAge(23);
		    AdWhirlTargeting.setGender(AdWhirlTargeting.Gender.MALE);
		    String keywords[] = { "online", "games", "gaming", "sport", "travel", "girls" };
		    AdWhirlTargeting.setKeywordSet(new HashSet<String>(Arrays.asList(keywords)));
		    AdWhirlTargeting.setPostalCode("94123");
		    AdWhirlTargeting.setTestMode(false);

		    // Optional, will fetch new config if necessary after five minutes.
		    AdWhirlManager.setConfigExpireTimeout(1000 * 60 * 5);

		    // Instantiates AdWhirlLayout from code.
		    // Note: Showing two ads on the same screen is for illustrative purposes
		    // only. You should check with ad networks on their specific policies.
		    AdWhirlLayout adWhirlLayout = new AdWhirlLayout(this,"09a0faf9236e480cb1b93417f2e40b11");
		    adWhirlLayout.setAdWhirlInterface(this);
		    adWhirlLayout.setMaxWidth(width);
		    adWhirlLayout.setMaxHeight(height);
		    RelativeLayout.LayoutParams adWhirlLayoutParams = new RelativeLayout.LayoutParams(
		    		RelativeLayout.LayoutParams.FILL_PARENT, RelativeLayout.LayoutParams.WRAP_CONTENT);
		    adWhirlLayoutParams.addRule(RelativeLayout.CENTER_HORIZONTAL);
		    myLayout.addView(adWhirlLayout, adWhirlLayoutParams);

	        mThis = this;
	    	Button button = new Button(this);
	    	button.setOnClickListener(new OnClickListener() {
	    	    public void onClick(View v) {
	    	    	mThis.OnClickButtonRefreshAdvertising(v);
	    	    }
	    	});

	    	button.setText(R.string.button_refresh_advertising);
//	    	android:layout_alignParentBottom="true"
//			android:text="@string/button_refresh_advertising"
//			android:onClick="@string/on_click_refresh_advertising"
//	        android:id="@+id/ButtonRefreshAdvertising"
//	        android:layout_height="wrap_content"
//	        android:layout_width="fill_parent"
	    	LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
									LinearLayout.LayoutParams.FILL_PARENT,
										LinearLayout.LayoutParams.WRAP_CONTENT);
	    	myLayout.addView(button, params);	    
	        
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
		    RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/Advertising");
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
	    	mBanner.setAutoRefresh(true);
	        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.FinalCloseApplication(this);
	    }	    
	    @Override
	    protected void onPause() {
	    	super.onPause();
	    	if(mAdRefreshTimer != null){
	    		mAdRefreshTimer.cancel(); 
	    		mAdRefreshTimer = null;
	    	}
	    	mBanner.setAutoRefresh(false);
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
		public void adWhirlGeneric() {			
		}		
}
