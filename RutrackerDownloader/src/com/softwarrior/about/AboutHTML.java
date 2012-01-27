package com.softwarrior.about;

import com.softwarrior.rutrackerdownloader.R;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp.ActivityResultType;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class AboutHTML extends Activity {

	  private WebView mWebView;
	  
	    @Override
	    public void onCreate(Bundle icicle) {
	        super.onCreate(icicle);
	    	requestWindowFeature(Window.FEATURE_NO_TITLE);

	        setContentView(R.layout.help);
	       
	        setTitleColor(getResources().getColor(R.color.gold));
	        
	        mWebView = (WebView) findViewById(R.id.WebViewHelp);
			mWebView.setInitialScale(0);
			mWebView.setVerticalScrollBarEnabled(false);
	        WebSettings browserset = mWebView.getSettings();
	        browserset.setLoadsImagesAutomatically(true);
	        browserset.setJavaScriptEnabled(true);
	        browserset.setDatabaseEnabled(true);
	        String dataBasePath = getApplicationContext().getDir("database", 0).getPath(); 
	        browserset.setDatabasePath(dataBasePath);
	        browserset.setDomStorageEnabled(true);
	        browserset.setRenderPriority(WebSettings.RenderPriority.HIGH);
	        browserset.setSupportZoom(false);
	        browserset.setUserAgentString( browserset.getUserAgentString() + " (Almanac ClientApp)" );
	        browserset.setAllowFileAccess(true);
	        browserset.setSavePassword(false);
	        browserset.setSupportMultipleWindows(false);
	        browserset.setAppCacheEnabled(true);
	        String caschePath = getApplicationContext().getDir("cashe", 0).getPath();
	        browserset.setAppCachePath(caschePath);
	        browserset.setAppCacheMaxSize(1*1024*1024);                

	        	        
	        mWebView.loadUrl(getString(R.string.url_about));       
	        //mWebView.loadUrl("http://rutracker.org/forum/index.php");
	        //mWebView.loadUrl("file:///android_asset/demo.html");
	        //mWebView.loadUrl("file:////sdcard/Downloads/GM_Direction.html");
	        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
		    RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/About");
	    }
	    
	    @Override
	    protected void onResume() {
	    	super.onResume();
	        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
	    }
	    		
		@Override
		protected void onActivityResult(int requestCode, int resultCode, Intent data) {
			switch(ActivityResultType.getValue(resultCode))
			{
			case RESULT_DOWNLOADER:
			case RESULT_MAIN:
			case RESULT_EXIT:
				setResult(resultCode);
				finish();
				break;
			};		
		}
}
