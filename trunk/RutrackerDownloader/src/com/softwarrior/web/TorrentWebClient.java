package com.softwarrior.web;

import com.softwarrior.rutrackerdownloader.R;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class TorrentWebClient extends Activity {

    private WebView mWebView;
    
    final Activity activity = this;

    @Override
    public void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        setContentView(R.layout.web);
        
        CookieSyncManager.createInstance(this);
        
        mWebView = (WebView) findViewById(R.id.webview);

        WebSettings webSettings = mWebView.getSettings();
        webSettings.setSavePassword(true);
        webSettings.setSaveFormData(true);
        webSettings.setJavaScriptEnabled(true);
        webSettings.setSupportZoom(true);
        webSettings.setPluginState(WebSettings.PluginState.OFF); 
        
        mWebView.setWebChromeClient(new WebChromeClient() {
            public void onProgressChanged(WebView view, int progress){
                activity.setTitle("Loading...");
                activity.setProgress(progress * 100); 
                if(progress == 100)
                    activity.setTitle(R.string.app_name);
            }
        });
 
        mWebView.setWebViewClient(new WebViewClient() {
            @Override
            public void onReceivedError(WebView view, int errorCode, String description, String failingUrl){
                // Handle the error
            }
 
            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url){
                view.loadUrl(url);
                return true;
            }
        }); 
        //mWebView.loadUrl("http://rutracker.org/forum/index.php");
        mWebView.loadUrl("http://login.rutracker.org/forum/login.php");
        
        //mWebView.loadUrl("http://rutracker.org/forum/viewtopic.php?t=2587860");        
        //mWebView.loadUrl("file:///android_asset/demo.html");
        //mWebView.loadUrl("file:////sdcard/Downloads/GM_Direction.html");
    }
    
    @Override
    protected void onResume() {
    	CookieSyncManager.getInstance().startSync();
    	super.onResume();
    }
    
    @Override
    protected void onStop() {
    	CookieSyncManager.getInstance().stopSync();
    	super.onStop();
    }

    public void OnClickButtonRepeatLogin(View v) {
    	mWebView.loadUrl("http://login.rutracker.org/forum/login.php");
    }
    
    public void OnClickButtonFinishLogin(View v) {
		CookieSyncManager.getInstance().sync();
		CookieManager cookieManager  = CookieManager.getInstance();	
//		"http://rutracker.org/forum/viewtopic.php?t=2587860" 
		RutrackerDownloaderApp.CookieData = cookieManager.getCookie("http://rutracker.org/forum/index.php");
    }  
}