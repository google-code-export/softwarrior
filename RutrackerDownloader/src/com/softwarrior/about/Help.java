package com.softwarrior.about;

import com.softwarrior.rutrackerdownloader.R;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp;

import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class Help extends Activity {

	  private WebView mWebViewHelp;
	  
	    @Override
	    public void onCreate(Bundle icicle) {
	        super.onCreate(icicle);
	        setContentView(R.layout.help);
	                
	        mWebViewHelp = (WebView) findViewById(R.id.WebViewHelp);

	        WebSettings webSettings = mWebViewHelp.getSettings();
	        webSettings.setJavaScriptEnabled(true);
	        webSettings.setSupportZoom(true);
	        webSettings.setPluginState(WebSettings.PluginState.OFF); 
	        
	        
	        mWebViewHelp.loadUrl(getString(R.string.url_help));       
	        //mWebView.loadUrl("http://rutracker.org/forum/index.php");
	        //mWebView.loadUrl("file:///android_asset/demo.html");
	        //mWebView.loadUrl("file:////sdcard/Downloads/GM_Direction.html");
	        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
	    }
	    
	    @Override
	    protected void onResume() {
	    	super.onResume();
	        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
	    }

}
