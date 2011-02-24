package com.softwarrior.about;

import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Hashtable;
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
import com.inmobi.androidsdk.EducationType;
import com.inmobi.androidsdk.EthnicityType;
import com.inmobi.androidsdk.GenderType;
import com.inmobi.androidsdk.InMobiAdDelegate;
import com.inmobi.androidsdk.impl.InMobiAdView;
import com.millennialmedia.android.MMAdView;
import com.millennialmedia.android.MMAdView.MMAdListener;

import com.softwarrior.rutrackerdownloader.FullWakeActivity;
import com.softwarrior.rutrackerdownloader.R;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp.ActivityResultType;

import android.content.Intent;
import android.location.Location;
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

public class AllAdvertising extends FullWakeActivity implements AdListener, InterstitialAdListener, InMobiAdDelegate, AdWhirlInterface  {

	
		//declare adview object
		MMAdView mMMAdview;
		MMAdListener mMMListener;
		//declare your APID, given to you by Millennial Media
		final static String MYAPID = "36640";
		AllAdvertising mThis;
	
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
	        LinearLayout myLayout = (LinearLayout) findViewById(R.id.container);

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
		    //RutrackerDownloader SDK Key:09a0faf9236e480cb1b93417f2e40b11
		    AdWhirlLayout adWhirlLayout = new AdWhirlLayout(this,"09a0faf9236e480cb1b93417f2e40b11");
		    adWhirlLayout.setAdWhirlInterface(this);
		    adWhirlLayout.setMaxWidth(width);
		    adWhirlLayout.setMaxHeight(height);
		    RelativeLayout.LayoutParams adWhirlLayoutParams = new RelativeLayout.LayoutParams(
		    		RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.WRAP_CONTENT);
		    adWhirlLayoutParams.addRule(RelativeLayout.CENTER_HORIZONTAL);
		    myLayout.addView(adWhirlLayout, adWhirlLayoutParams);

	        /* Millennial Media Ad View Integration
	         * 1) If passing Meta Values to increase ad accuracy, instantiate a
	         * hashtable and pass in data as Key-Value pairs. All KV pairs are optional.
	         * 
	         * 2) Required. Instantiate a new MMAdView and pass the following required values:
	         * 		- Context. "this"
	         * 		- APID: This number uniquely identifies your application and is given to you by Millennial Media	
	         * 		- Refresh ads: refresh delay in seconds. Set to 0 for no refresh. Minimum is 30 seconds.
	         *      - Test Mode: true to test that you are properly receiving ads
	         * **Optional**:
	         * 		- Hashtable of meta values, includes: age, gender, marital status, zip code, income, latitude, longitude
	         * 		- Accelerometer disable: boolean variable to disable accelerometer ads if your app uses the accelerometer. Refer to documentation to implement
	         */
	        Hashtable<String, String> map = new Hashtable<String, String>();
	        map.put("age", "45");
	        map.put("gender", "male");
	        map.put("zip", "21224");
	        map.put("marital", "single");
	        map.put("orientation", "straight");
	        map.put("ethnicity", "hispanic");
			map.put("education", "college");
			map.put("children", "2");
			map.put("politics", "moderate");
	        map.put("income", "50000");
	        map.put("keywords", "soccer");
	        map.put("height", "53");  
	        map.put("width", "320"); 
	             
	        //create an adview

	        mMMAdview = new MMAdView(this, MYAPID, "MMBannerAdTop", 30, true, map);
	        
	        //adview = new MMAdView(this.getApplicationContext(), MYAPID, "MMBannerAdTop", 30, false);

			/* Use the appropriate instantiation of the MMAdView for the ad type you wish to display */
			//adview = new MMAdView((Activity) this, MYAPID, "MMBannerAdBottom", 60, true, map);
			//adview = new MMAdView((Activity) this, MYAPID, "MMBannerAdRectangle", 60, true, map);
			//adview = new MMAdView((Activity) this, MYAPID, "MMFullScreenAdLaunch", 0, true, map);
			//adview = new MMAdView((Activity) this, MYAPID, "MMFullScreenAdTransition", 0, true, map);
	        
	        //LinearLayout myLayout = (LinearLayout) findViewById(R.id.container);
	        //add the object to the view layout
	        myLayout.addView(mMMAdview, new LinearLayout.LayoutParams(LinearLayout.LayoutParams.FILL_PARENT,LinearLayout.LayoutParams.WRAP_CONTENT));
	        
	        /* Implement this code and the listener methods below if you want to received notifications
	         * of events occurring within the SDK
	         */
	        mMMListener = new MyMMAdListener();
	        mMMAdview.setListener(mMMListener);
	               
	        /* Use this to call for an ad if you have disabled automatic ad calls. The refresh
	         * delay must be set to -1 to use this method.
	         */
	        //adview.callForAd();
	        
	        /* Use this code if you want to participate in Millennial Media's
	         * app conversion tracking.
	         */
	        //adview.startConversionTrackerWithGoalId("YOUR_GOAL_ID");
	        
	        
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
	        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.FinalCloseApplication(this);
	    }
	    
	    @Override
	    protected void onPause() {
	    	super.onPause();
	    	if(mAdRefreshTimer != null){
	    		mAdRefreshTimer.cancel(); 
	    		mAdRefreshTimer = null;
	    	}
//	        ZestadzAd.stopAdpull();
	        mMMAdview.halt();
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
		//millennialmedia
	    /* Methods to implement as part of the listener interface */    
	    public class MyMMAdListener implements MMAdListener 
	    {
	    	public void MMAdFailed(MMAdView adview)
	    	{
	    		Log.v(RutrackerDownloaderApp.TAG, "Millennial Ad View Failed" );
	    	}

	    	public void MMAdReturned(MMAdView adview)
	    	{
	    		Log.v(RutrackerDownloaderApp.TAG, "Millennial Ad View Success" );
	    	}
	    	
			public void MMAdClickedToNewBrowser(MMAdView adview)
			{
				Log.v(RutrackerDownloaderApp.TAG, "Millennial Ad clicked, new browser launched" );
			}
			
			public void MMAdClickedToOverlay(MMAdView adview)
			{
				Log.v(RutrackerDownloaderApp.TAG, "Millennial Ad Clicked to overlay" );
			}
			
			public void MMAdOverlayLaunched(MMAdView adview)
			{
				Log.v(RutrackerDownloaderApp.TAG, "Millennial Ad Overlay Launched" );
			}		
	    }

		public void adWhirlGeneric() {
			// TODO Auto-generated method stub
			
		}		
}
