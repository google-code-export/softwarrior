package com.softwarrior.about;

import java.util.Arrays;
import java.util.HashSet;

import com.adwhirl.AdWhirlLayout;
import com.adwhirl.AdWhirlLayout.AdWhirlInterface;
import com.adwhirl.AdWhirlManager;
import com.adwhirl.AdWhirlTargeting;
import com.adwhirl.util.AdWhirlUtil;
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
import android.widget.LinearLayout;

public class AdWhirlAdvertising extends FullWakeActivity implements AdWhirlInterface {
	  
		public enum MenuType{
			About, Help, FileManager, Exit;
		}

	   @Override
	    public void onCreate(Bundle savedInstanceState) {
	        super.onCreate(savedInstanceState);
	        setContentView(R.layout.adwhirl_advertising);

	        LinearLayout layout = (LinearLayout) findViewById(R.id.layout_main);

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
		    AdWhirlTargeting.setTestMode(true);

//		    AdWhirlAdapter.setGoogleAdSenseAppName("RutrackerDownloader");
//		    AdWhirlAdapter.setGoogleAdSenseCompanyName("Individial");
//		    AdWhirlAdapter.setGoogleAdSenseChannel("games");
//		    AdWhirlAdapter.setGoogleAdSenseExpandDirection("BOTTOM");
		    // Optional, will fetch new config if necessary after five minutes.
		    AdWhirlManager.setConfigExpireTimeout(1000 * 60 * 5);

		    // References AdWhirlLayout defined in the layout XML.
		    AdWhirlLayout adWhirlLayout = (AdWhirlLayout) findViewById(R.id.adwhirl_layout);
		    adWhirlLayout.setAdWhirlInterface(this);
		    adWhirlLayout.setMaxWidth(width);
		    adWhirlLayout.setMaxHeight(height);

		    // Instantiates AdWhirlLayout from code.
		    // Note: Showing two ads on the same screen is for illustrative purposes
		    // only. You should check with ad networks on their specific policies.
//		    AdWhirlLayout adWhirlLayout2 = new AdWhirlLayout(this,"09a0faf9236e480cb1b93417f2e40b11");
//		    adWhirlLayout2.setAdWhirlInterface(this);
//		    adWhirlLayout2.setMaxWidth(width);
//		    adWhirlLayout2.setMaxHeight(height);
//		    RelativeLayout.LayoutParams adWhirlLayoutParams = new RelativeLayout.LayoutParams(
//		    		RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.WRAP_CONTENT);
//		    adWhirlLayoutParams.addRule(RelativeLayout.CENTER_HORIZONTAL);
//		    layout.setGravity(Gravity.CENTER_HORIZONTAL);
//		    layout.addView(adWhirlLayout2, adWhirlLayoutParams);
//
//		    TextView textView = new TextView(this);
//		    textView.setText("Below AdWhirlLayout from code");
//		    layout.addView(textView, adWhirlLayoutParams);
//		    layout.setGravity(Gravity.CENTER_HORIZONTAL);
		    layout.invalidate();
	    	        	        	        
	        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.FinalCloseApplication(this);
		    RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/Advertising");
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
		protected void onDestroy() {
			super.onDestroy();
			//RutrackerDownloaderApp.AnalyticsTracker.dispatch();
		}
		
        //TODO: Need to show animation picture with girl
						
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
	    }
	    	    	    		
		public void adWhirlGeneric() {
			Log.e(AdWhirlUtil.ADWHIRL, "In adWhirlGeneric()");
		}
}
