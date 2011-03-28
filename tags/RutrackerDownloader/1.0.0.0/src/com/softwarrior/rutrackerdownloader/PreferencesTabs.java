package com.softwarrior.rutrackerdownloader;

import com.softwarrior.about.AllAdvertising;

import android.app.TabActivity;
import android.os.Bundle;
import android.widget.TabHost;
import android.content.Intent;

public class PreferencesTabs extends TabActivity {
		
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        //Start the tracker in manual dispatch mode...
         RutrackerDownloaderApp.AnalyticsTracker.start("UA-21583368-2", 30, this);
        // ...alternatively, the tracker can be started with a dispatch interval (in seconds).
        //RutrackerDownloaderApp.start("UA-21583368-2", 20, this);

        // Add a Custom Variable to this pageview, with name of "Medium" and value "MobileApp" and scope of session-level.
        // RutrackerDownloaderApp.AnalyticsTracker.setCustomVar(1, "Navigation Type", "Button click", 2);
        // Track a page view. This is probably the best way to track which parts of your application
        // are being used.
        // E.g.
        // tracker.trackPageView("/help"); to track someone looking at the help screen.
        // tracker.trackPageView("/level2"); to track someone reaching level 2 in a game.
        // tracker.trackPageView("/uploadScreen"); to track someone using an upload screen.
        
//         Pageview Tracking:
//         A pageview is a standard means to measure traffic volume to a traditional website. 
//         Because mobile apps don't contain HTML pages, you must decide when (and how often) to trigger a pageview request. 
//         Also, since pageview requests are designed to report on directory structures, you should provide descriptive names 
//         for the requests to take advantage of page path naming in the Content reports in Analytics. 
//         The names you choose will be populated in your Analytics reports as page paths even though they are not actually HTML pages, 
//         but you can use this to your advantage by structuring paths to provide additional groupings for your calls.

//         Event Tracking:
//         In Analytics, events are designed to track user interaction to web page elements distinctly from pageview requests.
//         You can use the Event Tracking feature of Google Analytics to make additional calls that will be reported in the Event Tracking section of the Analytics report interface. 
//         Events are grouped using categories and may also use per-event labels, which provides flexibility in reporting. 
//         For example, a multimedia app could could have play/stop/pause actions for its video category and assign a label for each video name. 
//         The Google Analytics reports would then aggregate events for all events tagged with the video category. For more information on Event Tracking, see the Event Tracking Guide

//         Custom Variables:
//         Custom variables are name-value pair tags that you can insert in your tracking code in order to refine Google Analytics tracking. 
//         For more information on how you can use custom variables, read the Custom Variable Guide.
         
         
        final TabHost tabHost = getTabHost();        
                
        tabHost.addTab(tabHost.newTabSpec("tab_web_search")
                .setIndicator(getString(R.string.tab_web_search))
                .setContent(new Intent(this, WEBPreferencesScreen.class)));

        tabHost.addTab(tabHost.newTabSpec("tab_rss_search")
                .setIndicator(getString(R.string.tab_rss_search))
                .setContent(new Intent(this, RSSPreferencesScreen.class)));      
        		//.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP))); This tab sets the intent flag so that it is recreated each time the tab is clicked.

        tabHost.addTab(tabHost.newTabSpec("tab_download")
                .setIndicator(getString(R.string.tab_download))
                .setContent(new Intent(this, DownloadPreferencesScreen.class)));      

        tabHost.addTab(tabHost.newTabSpec("tab_advertising")
                .setIndicator(getString(R.string.tab_advertising))
                .setContent(new Intent(this, AllAdvertising.class)));      
        
        Bundle bundle = this.getIntent().getExtras();
        if(bundle != null){
        	String currentTab = bundle.getString("CurrentTab");
	        if(currentTab != null)
	        {
	        	tabHost.setCurrentTabByTag(currentTab);
	        }
        }
        startService(new Intent(this, DownloadService.class));
        
        RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/StartApplication");
    }
    
    @Override
    protected void onDestroy() {
    	super.onDestroy();
        RutrackerDownloaderApp.AnalyticsTracker.dispatch();
        RutrackerDownloaderApp.AnalyticsTracker.stop();
    }
}
