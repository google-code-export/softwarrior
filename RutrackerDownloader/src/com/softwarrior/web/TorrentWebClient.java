package com.softwarrior.web;


import com.softwarrior.rutrackerdownloader.DownloadService;
import com.softwarrior.rutrackerdownloader.R;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp.ActivityResultType;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import android.widget.ViewAnimator;

public class TorrentWebClient extends Activity {

    private WebView mWebView;
   
    private String  mLoadUrl = new String();
    private String  mAction = new String();
    private String  mCurrentUrl = new String();
    private String  mDistributionNumber = new String();
    private boolean mCatchBackKey = false;
    
    final Activity activity = this;
    
    public enum MenuType{
    	About, Help, Preferences, Exit;
    }

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
            
            @Override
            public void onPageStarted(WebView view, String url, Bitmap favicon) {
            	ManageDownloadButton(url);
            	super.onPageStarted(view, url, favicon);
            }
        }); 
        
        Bundle bundle = this.getIntent().getExtras();
        mAction = bundle.getString("Action");
        if(mAction.equals("Login")) {
        	ViewAnimator viewAnimator = (ViewAnimator) findViewById(R.id.ViewAnimator);
        	viewAnimator.setVisibility(View.VISIBLE);
        	RelativeLayout buttonsLayout = (RelativeLayout) findViewById(R.id.LoginLayout);
        	buttonsLayout.setVisibility(View.VISIBLE);
        	viewAnimator.bringChildToFront(buttonsLayout);
        }
        else if(mAction.equals("Show")){        	
        }
        else if(mAction.equals("Search")){
        	mCatchBackKey = true;
        }        
        mLoadUrl = bundle.getString("LoadUrl");
        mWebView.loadUrl(mLoadUrl);       
        //mWebView.loadUrl("http://rutracker.org/forum/index.php");
        //mWebView.loadUrl("http://rutracker.org/forum/viewtopic.php?t=2587860");        
        //mWebView.loadUrl("file:///android_asset/demo.html");
        //mWebView.loadUrl("file:////sdcard/Downloads/GM_Direction.html");
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if(mCatchBackKey){	        	
	    	if ((keyCode == KeyEvent.KEYCODE_BACK) && mWebView.canGoBack()) {
	        	mWebView.goBack();
	            return true;
	        }
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		switch(ActivityResultType.getValue(resultCode))
		{
		case RESULT_PREFERENCES:
		case RESULT_EXIT:
			setResult(resultCode);
			finish();
			break;
		};		
	}

    private void ManageDownloadButton(String current_url) {
    	if(mAction.equals("Show") || mAction.equals("Search")){        	
	    	if(current_url.contains("http://rutracker.org/forum/viewtopic.php?t=")){
	    		mCurrentUrl = current_url;
	    		mDistributionNumber = current_url.replace("http://rutracker.org/forum/viewtopic.php?t=", "");
	    		mDistributionNumber= mDistributionNumber.trim();
	        	ViewAnimator viewAnimator = (ViewAnimator) findViewById(R.id.ViewAnimator);
	        	viewAnimator.setVisibility(View.VISIBLE);
	        	RelativeLayout downloadLayout = (RelativeLayout) findViewById(R.id.DownloadLayout);
	        	downloadLayout.setVisibility(View.VISIBLE);
	        	viewAnimator.bringChildToFront(downloadLayout);
	    	}
	    	else{
	    		mDistributionNumber = new String();
	        	ViewAnimator viewAnimator = (ViewAnimator) findViewById(R.id.ViewAnimator);
	        	viewAnimator.setVisibility(View.GONE);            		
	    	}
    	}
    }
    
    public void OnClickButtonDownload(View v) {    	
    	if(mDistributionNumber.length()>0){
    		CookieSyncManager.getInstance().sync();
    		CookieManager cookieManager  = CookieManager.getInstance();	
    		RutrackerDownloaderApp.CookieData = cookieManager.getCookie(mCurrentUrl);
    		TorrentDownloader torrentDownloader = new TorrentDownloader(RutrackerDownloaderApp.CookieData, RutrackerDownloaderApp.TorrentFullFileName);
    		torrentDownloader.Download(mDistributionNumber);
    		
			Intent intent = new Intent(Intent.ACTION_VIEW);
			intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
			intent.setClassName(this, DownloadService.Controller.class.getName());
			startActivityForResult(intent, 0);
    	}    	
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

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		super.onCreateOptionsMenu(menu);
		menu.add(Menu.NONE, MenuType.About.ordinal(), MenuType.About.ordinal(), R.string.menu_about); 
		menu.add(Menu.NONE, MenuType.Help.ordinal(), MenuType.Help.ordinal(), R.string.menu_help); 
		menu.add(Menu.NONE, MenuType.Preferences.ordinal(), MenuType.Preferences.ordinal(), R.string.menu_preferences);
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
			AboutActivity();
		} break;
		case Help:{
			HelpActivity();
		} break;
		case Preferences:{
			PreferencesScreenActivity();
		} break;
		case Exit:{
			CloseApplication();
		} break;
		}
		return true;
	}

	private void AboutActivity(){
    }

    private void HelpActivity(){
    }
    
    private void PreferencesScreenActivity(){
    	setResult(RutrackerDownloaderApp.ActivityResultType.RESULT_PREFERENCES.getCode());
    	finish();
    }

    private void CloseApplication(){
    	setResult(RutrackerDownloaderApp.ActivityResultType.RESULT_EXIT.getCode());
    	finish();
    }
    
    public void OnClickButtonRefreshPage(View v) {
    	mWebView.loadUrl(mLoadUrl);
    }
    
    public void OnClickButtonFinishLogin(View v) {
		CookieSyncManager.getInstance().sync();
		CookieManager cookieManager  = CookieManager.getInstance();	
//		"http://rutracker.org/forum/viewtopic.php?t=2587860" 
		RutrackerDownloaderApp.CookieData = cookieManager.getCookie("http://rutracker.org/forum/index.php");
		finish();
    }  
}