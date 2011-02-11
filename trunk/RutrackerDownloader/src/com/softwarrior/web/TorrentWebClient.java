package com.softwarrior.web;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.softwarrior.rutrackerdownloader.R;

import android.app.Activity;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.KeyEvent;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class TorrentWebClient extends Activity {

    private static final String LOG_TAG = "WebClient";

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
        mWebView.loadUrl("http://rutracker.org/forum/viewtopic.php?t=2587860");
        //mWebView.loadUrl("http://login.rutracker.org/forum/login.php");
        
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
    
    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {    	
    	boolean result = true;    
		if(keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0)
		{
			CookieSyncManager.getInstance().sync();
			CookieManager cookieManager  = CookieManager.getInstance();	
			String cookie_data = cookieManager.getCookie("http://rutracker.org/forum/viewtopic.php?t=2587860"); 
	        
			try{				
				URL url = new URL("http://dl.rutracker.org/forum/dl.php?t=2587860");				
				URLConnection connection = url.openConnection();
				HttpURLConnection httppost = (HttpURLConnection) connection;
				httppost.setDoInput(true);
			    httppost.setDoOutput(true);

			    httppost.setRequestMethod("POST");

				httppost.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2");
			    httppost.setRequestProperty("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
			    httppost.setRequestProperty("Accept-Language", "ru,en-us;q=0.7,en;q=0.3");
			    httppost.setRequestProperty("Accept-Encoding", "gzip,deflate");
			    httppost.setRequestProperty("Accept-Charset", "windows-1251,utf-8;q=0.7,*;q=0.7");
			    httppost.setRequestProperty("Keep-Alive", "300");
			    httppost.setRequestProperty("Connection", "keep-alive");
			    httppost.setRequestProperty("Referer", "http://rutracker.org/forum/viewtopic.php?t=2587860");
			    httppost.setRequestProperty("Cookie", cookie_data +"; bb_dl=2587860");
			    httppost.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
			    httppost.setRequestProperty("Content-Length", "0");

			    //PrintMapWithList(httppost.getHeaderFields());
		    		    		        		    
			    //DataOutputStream dos = new DataOutputStream(httppost.getOutputStream());
			    //dos.write(b); // bytes[] b of post data

				InputStream inputStream = httppost.getInputStream();
		        if(inputStream != null) {
					//StringBuffer sb = new StringBuffer();
			        int chr = 0;
		        	
			        String torentFile1 = Environment.getExternalStorageDirectory() + "/RutrackerDownloader/download1.torrent";
					FileOutputStream fos = new FileOutputStream(torentFile1); 

			        while ((chr = inputStream.read()) != -1) {
			            //sb.append((char) chr);
			            fos.write(chr);
			        }
			        inputStream.close();
		    		fos.flush();
		    		fos.close();  
		        }
		       // String reply = sb.toString();		        	    		
			} catch (Exception ex){
				Log.e(LOG_TAG, ex.toString());
		    }
			//////////////////////////////////////////
			result = super.onKeyDown(keyCode,event);
		}
	  return result; 
    } 
    //-------------------------------------------------------
    void PrintMapWithList(Map<String, List<String>> MapList)
    {
        Set map_set = MapList.entrySet();
        Iterator map_it = map_set.iterator();
        
        while(map_it.hasNext())
        {
            Map.Entry map_entry =(Map.Entry)map_it.next();
            String key=(String)map_entry.getKey();
            String resultText = key;
            resultText += ": ";
            List<String> value_list=(List<String>)map_entry.getValue();	            
            Iterator list_it=value_list.iterator();
            while(list_it.hasNext())
            {
              String value=(String)list_it.next();
              resultText += value;
            }
            Log.i(LOG_TAG ,resultText);
        }
    }
}