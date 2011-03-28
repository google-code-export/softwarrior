package com.softwarrior.rutrackerdownloaderlite;

import android.app.TabActivity;
import android.os.Bundle;
import android.view.Window;
import android.widget.TabHost;
import android.widget.TextView;
import android.content.Intent;

public class PreferencesTabs extends TabActivity {
		
	static TextView mRightText = null;
	
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState); 
        requestWindowFeature(Window.FEATURE_CUSTOM_TITLE);
                  
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

        tabHost.addTab(tabHost.newTabSpec("tab_site_choise")
                .setIndicator(getString(R.string.tab_site_choise))
                .setContent(new Intent(this, SiteChoice.class)));      
        
        Bundle bundle = this.getIntent().getExtras();
        if(bundle != null){
        	String currentTab = bundle.getString("CurrentTab");
	        if(currentTab != null)
	        {
	        	tabHost.setCurrentTabByTag(currentTab);
	        }
        }
        getWindow().setFeatureInt(Window.FEATURE_CUSTOM_TITLE, R.layout.custom_title);
        mRightText = (TextView) findViewById(R.id.right_text);
        
        if(SiteChoice.GetSite(this) == SiteChoice.SiteType.PORNOLAB)
        	RutrackerDownloaderApp.SetupPornolab(this);
        else if(SiteChoice.GetSite(this) == SiteChoice.SiteType.NNMCLUB)
        	RutrackerDownloaderApp.SetupNnmclub(this);
        else
        	RutrackerDownloaderApp.SetupRutracker(this);
        
        RutrackerDownloaderApp.DownloadServiceMode = false;        
        RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/StartApplication");
    } 
    
    public static void SetRightCustomTitle(String text){
    	if(mRightText != null)
    		mRightText.setText(text);    	
    }
    public static String GetRightCustomTitle(){
    	String result = new String("");
    	if(mRightText != null)    	
    		result = (String)mRightText.getText();
    	return result;
    }
}
