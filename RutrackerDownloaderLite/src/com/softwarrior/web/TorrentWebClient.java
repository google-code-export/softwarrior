package com.softwarrior.web;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.GZIPInputStream;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

import com.softwarrior.rutrackerdownloaderlite.DownloadPreferencesScreen;
import com.softwarrior.rutrackerdownloaderlite.R;
import com.softwarrior.rutrackerdownloaderlite.RutrackerDownloaderApp;
import com.softwarrior.rutrackerdownloaderlite.SiteChoice;
import com.softwarrior.rutrackerdownloaderlite.RutrackerDownloaderApp.ActivityResultType;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import android.widget.Toast;
import android.widget.ViewAnimator;

public class TorrentWebClient extends Activity {

    private WebView mWebView;
   
    private String  mLoadUrl = new String();
    private String  mAction = new String();
    private String  mCurrentUrl = new String();
    private String  mDistributionNumber = new String();
    private boolean mCatchBackKey = false;
    private boolean mNNSearch = false;
    private boolean mRefreshNNSearch = false;
    private String mSearchString = new String("");
    
    final Activity activity = this;
    
    public enum MenuType{
    	About, Help, Preferences, FileManager, Exit;
    }

    @Override
    public void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        requestWindowFeature(Window.FEATURE_INDETERMINATE_PROGRESS);
        setContentView(R.layout.web);
                
        CookieSyncManager.createInstance(this);
        
        Bundle bundle = this.getIntent().getExtras();
        mAction = bundle.getString("Action");
        mLoadUrl = bundle.getString("LoadUrl");
        
        mWebView = (WebView) findViewById(R.id.webview);

        WebSettings webSettings = mWebView.getSettings();
        webSettings.setSavePassword(true);
        webSettings.setSaveFormData(true);
        webSettings.setJavaScriptEnabled(true);
        webSettings.setSupportZoom(true);
        //webSettings.setPluginState(WebSettings.PluginState.OFF); 
               
        mWebView.setWebChromeClient(new WebChromeClient() {
            public void onProgressChanged(WebView view, int progress){
                activity.setProgress(progress * 100);
                setProgressBarIndeterminateVisibility(true);
                if(progress == 100)
                	setProgressBarIndeterminateVisibility(false);
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
            	if(mNNSearch && mRefreshNNSearch && url.equals(RutrackerDownloaderApp.NN_SearchUrlPrefix)){
            		mRefreshNNSearch = false;
            		NNMClubSearchResultThread(mSearchString);
            	}
            	activity.setTitle(url);
            	ManageDownloadButton(url);
            	super.onPageStarted(view, url, favicon);
            }
        }); 
                
        if(mAction.equals("Login")) {
        	ViewAnimator viewAnimator = (ViewAnimator) findViewById(R.id.ViewAnimator);
        	viewAnimator.setVisibility(View.VISIBLE);
        	RelativeLayout buttonsLayout = (RelativeLayout) findViewById(R.id.LoginLayout);
        	buttonsLayout.setVisibility(View.VISIBLE);
        	viewAnimator.bringChildToFront(buttonsLayout);
    		activity.setTitle(mLoadUrl);        
    		mWebView.loadUrl(mLoadUrl);
        }
        else if(mAction.equals("Show")){
    		activity.setTitle(mLoadUrl);        
    		mWebView.loadUrl(mLoadUrl);
        }
        else if(mAction.equals("SiteMap")){
        	mCatchBackKey = true;
    		activity.setTitle(mLoadUrl);        
    		mWebView.loadUrl(mLoadUrl);
        }
        else if(mAction.equals("Search")){
        	mCatchBackKey = true;
        	if(SiteChoice.GetSite(this) == SiteChoice.SiteType.NNMCLUB){
        		activity.setTitle(RutrackerDownloaderApp.NN_SearchUrlPrefix);
        		mSearchString = mLoadUrl;
        		NNMClubSearchResultThread(mSearchString);
        	}
        	else {
        		activity.setTitle(mLoadUrl);        
        		mWebView.loadUrl(mLoadUrl);        		
        	}
        }    	        
        //mWebView.loadUrl("http://rutracker.org/forum/index.php");
        //mWebView.loadUrl("http://rutracker.org/forum/viewtopic.php?t=2587860");        
        //mWebView.loadUrl("file:///android_asset/demo.html");
        //mWebView.loadUrl("file:////sdcard/Downloads/GM_Direction.html");
        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
    	RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/TorrentWebClient");
    }

    public String getPostRequest(String url, String user, String pass) {
        HttpClient postClient = new DefaultHttpClient();
        HttpPost httpPost = new HttpPost(url);
        HttpResponse response;

        try {
            List<NameValuePair> nameValuePairs = new ArrayList<NameValuePair>(2);
            nameValuePairs.add(new BasicNameValuePair("f", user));
            nameValuePairs.add(new BasicNameValuePair("nm", pass));
            httpPost.setEntity(new UrlEncodedFormEntity(nameValuePairs));

            response = postClient.execute(httpPost);

            if(response.getStatusLine().getStatusCode() == 200) {
                HttpEntity entity = response.getEntity();

                if (entity != null) {
                    InputStream instream = entity.getContent();  
                    String result = convertStreamToString(instream);
                    instream.close();
                    return result; // here is a string of the result!!!
                }
            }
        } catch (Exception e) {}
        return null; // if it gets here, something wrong happens with the connection
    }

    private String convertStreamToString(InputStream is) {
        BufferedReader reader = new BufferedReader(new InputStreamReader(is));
        StringBuilder sb = new StringBuilder();

        String line = null;
        try {
            while ((line = reader.readLine()) != null) {
                sb.append(line + "\n");
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                is.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return sb.toString();
    }
    
    private void NNMClubSearchResultThread(final String SearchString ){
    	final ProgressDialog dialog = ProgressDialog.show(activity, "", activity.getString(R.string.progress_search), true, false);
        final Handler handler = new Handler() {
            @Override
            public void handleMessage(Message msg) {
                dialog.dismiss();
            	mNNSearch = true;
            }
        };        
        // Start lengthy operation in a background thread
        new Thread(new Runnable() {
            public void run() {
            	ShowNNMClubSearchResult(SearchString);
		        handler.sendEmptyMessage(0);
            }
        }).start();    	
    }
   
    private void ShowNNMClubSearchResult(String SearchString ){
		try{	    	
    		CookieSyncManager.getInstance().sync();
    		CookieManager cookieManager  = CookieManager.getInstance();	
    		RutrackerDownloaderApp.CookieData = cookieManager.getCookie(RutrackerDownloaderApp.CookieUrl);

			URL url = new URL(RutrackerDownloaderApp.NN_SearchUrlPrefix);				
			URLConnection connection = url.openConnection();
			HttpURLConnection httppost = (HttpURLConnection) connection;
			httppost.setDoInput(true);
		    httppost.setDoOutput(true);

		    httppost.setRequestMethod("POST");
		    httppost.setRequestProperty("Accept", "application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5");
		    httppost.setRequestProperty("Accept-Charset", "windows-1251,utf-8;q=0.7,*;q=0.3");
		    httppost.setRequestProperty("Accept-Encoding", "gzip,deflate");
		    httppost.setRequestProperty("Accept-Language", "en-US,ru-RU;q=0.8,ru;q=0.6,en;q=0.4");
		    httppost.setRequestProperty("Cache-Control", "max-age=0");
		    httppost.setRequestProperty("Connection", "keep-alive");
		    
		    String query=""; 
		    query += URLEncoder.encode("f", "cp-1251") + "=" + URLEncoder.encode("-1", "cp-1251"); 
		    query += "&" + URLEncoder.encode("nm", "cp-1251") + "=" + URLEncoder.encode(SearchString, "cp-1251"); 
		    int contetLength = query.length(); 		    
		    httppost.setRequestProperty("Content-Length", Integer.toString(contetLength));

		    httppost.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
		    httppost.setRequestProperty("Cookie", RutrackerDownloaderApp.CookieData);
		    httppost.setRequestProperty("Host", "www.nnm-club.ru");
		    httppost.setRequestProperty("Origin", "http://www.nnm-club.ru");
		    
		    String sid = RutrackerDownloaderApp.NN_SearchUrlPrefix + "?";
		    int sidStart = RutrackerDownloaderApp.CookieData.indexOf("sid=");
		    int sidEnd = RutrackerDownloaderApp.CookieData.indexOf(";", sidStart);	
		    if(sidEnd == -1)
		    	sidEnd = RutrackerDownloaderApp.CookieData.length();
		    if(sidStart>0 && sidEnd >0 && sidStart<sidEnd && sidEnd <= RutrackerDownloaderApp.CookieData.length())
		    	sid += RutrackerDownloaderApp.CookieData.substring(sidStart, sidEnd);		    
		    httppost.setRequestProperty("Referer", sid);
		    
		    httppost.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.151 Safari/534.16");
		    		    
			OutputStreamWriter wr = new OutputStreamWriter(httppost.getOutputStream());
            wr.write(query);		    
            wr.flush();
            wr.close();
            
            StringBuffer sb = new StringBuffer();
            GZIPInputStream gzipInput = new GZIPInputStream(new BufferedInputStream(httppost.getInputStream()));
            InputStreamReader inputStream = new InputStreamReader(gzipInput, "cp-1251");
            if(inputStream != null) {
		        int length = 0;
		        char [] readArray = new char[1024];
		        while ((length = inputStream.read(readArray)) != -1) {
		        	sb.append(readArray, 0, length);
		        }
		        inputStream.close();
	        }
		    mWebView.loadDataWithBaseURL(RutrackerDownloaderApp.NN_SearchUrlPrefix,sb.toString(),"text/html","UTF-8",RutrackerDownloaderApp.NN_SearchUrlPrefix);		    
		    
		} catch (Exception ex){
			Log.e(RutrackerDownloaderApp.TAG, ex.toString());
	    }
    }

    @Override
    protected void onDestroy() {
    	super.onDestroy();
    	//RutrackerDownloaderApp.AnalyticsTracker.dispatch();
    }
    
    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if(mCatchBackKey){	        	
	    	if ((keyCode == KeyEvent.KEYCODE_BACK) && mWebView.canGoBack()) {
	    		if(mNNSearch) mRefreshNNSearch = true;
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
		case RESULT_DOWNLOADER:
		case RESULT_PREFERENCES:
		case RESULT_EXIT:
			setResult(resultCode);
			finish();
			break;
		};		
	}

    private void ManageDownloadButton(String current_url) {
    	if(mAction.equals("Show") || mAction.equals("Search") || mAction.equals("SiteMap")){        	
	    	if(current_url.contains(RutrackerDownloaderApp.TorrentTopic)){
	    		mCurrentUrl = current_url;
	    		mDistributionNumber = current_url.replace(RutrackerDownloaderApp.TorrentTopic, "");
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
    		TorrentDownloader torrentDownloader = new TorrentDownloader(RutrackerDownloaderApp.CookieData, DownloadPreferencesScreen.GetTorrentSavePath(this));
    		if(SiteChoice.GetSite(this) == SiteChoice.SiteType.NNMCLUB)
    			torrentDownloader.DownloadNNM(mDistributionNumber);
    		else
    			torrentDownloader.Download(mDistributionNumber);    					
    	} 
    	String text = getString(R.string.torrent_file_downloaded) + " : " + RutrackerDownloaderApp.TorrentFullFileName;
    	Toast.makeText(this, text,Toast.LENGTH_SHORT).show();        
    }
    
    @Override
    protected void onResume() {
    	CookieSyncManager.getInstance().startSync();
    	super.onResume();
    	if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
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
		case Preferences:{
			RutrackerDownloaderApp.PreferencesScreenActivity(this);
		} break;
		case FileManager:{
			RutrackerDownloaderApp.FileManagerActivity(this);
		} break;
		case Exit:{
			RutrackerDownloaderApp.CloseApplication(this);
		} break;
		}
		return true;
	}
    
    public void OnClickButtonRefreshPage(View v) {
    	mWebView.loadUrl(mLoadUrl);
    }
    
    public void OnClickButtonFinishLogin(View v) {
		CookieSyncManager.getInstance().sync();
		CookieManager cookieManager  = CookieManager.getInstance();	
//		"http://rutracker.org/forum/viewtopic.php?t=2587860" 
		RutrackerDownloaderApp.CookieData = cookieManager.getCookie(RutrackerDownloaderApp.CookieUrl);
		finish();
    }  
}