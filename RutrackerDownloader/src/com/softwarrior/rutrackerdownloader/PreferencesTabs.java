package com.softwarrior.rutrackerdownloader;


import android.app.TabActivity;
import android.os.Bundle;
import android.widget.TabHost;
import android.content.Intent;

public class PreferencesTabs extends TabActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        final TabHost tabHost = getTabHost();

        tabHost.addTab(tabHost.newTabSpec("tab_web_search")
                .setIndicator(getString(R.string.tab_web_search))
                .setContent(new Intent(this, WEBPreferencesScreen.class)));

        tabHost.addTab(tabHost.newTabSpec("tab_rss_search")
                .setIndicator(getString(R.string.tab_rss_search))
                .setContent(new Intent(this, RSSPreferencesScreen.class)));      
        //.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP)));
        // This tab sets the intent flag so that it is recreated each time the tab is clicked.
    }
}
