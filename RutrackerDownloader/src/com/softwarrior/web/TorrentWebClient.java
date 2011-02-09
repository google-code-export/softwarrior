package com.softwarrior.web;

import com.softwarrior.rutrackerdownloader.R;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class TorrentWebClient extends Activity {

    private static final String LOG_TAG = "WebClient";

    private WebView mWebView;

    private Handler mHandler = new Handler();

    @Override
    public void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        setContentView(R.layout.web);
        mWebView = (WebView) findViewById(R.id.webview);

        WebSettings webSettings = mWebView.getSettings();
        webSettings.setSavePassword(true);
        webSettings.setSaveFormData(false);
        webSettings.setJavaScriptEnabled(false);
        webSettings.setSupportZoom(true);
        webSettings.setPluginState(WebSettings.PluginState.OFF); 

        mWebView.setWebChromeClient(new MyWebChromeClient());
        mWebView.addJavascriptInterface(new DemoJavaScriptInterface(), "demo");
        mWebView.loadUrl("http://rutracker.org/forum/viewtopic.php?t=2587860");
        
        //mWebView.loadUrl("file:///android_asset/demo.html");
       // mWebView.loadUrl("file:////sdcard/Downloads/GM_Direction.html");
    }

    final class DemoJavaScriptInterface {

        DemoJavaScriptInterface() {
        }
         //This is not called on the UI thread. Post a runnable to invoke loadUrl on the UI thread.
//        public void clickOnAndroid() {
//            mHandler.post(new Runnable() {
//                public void run() {
//                    //mWebView.loadUrl("javascript:wave()");
//                	mWebView.loadUrl("javascript:initialize()");
//                }
//            });
//        }
    }

    //Provides a hook for calling "alert" from javascript. Useful for debugging your javascript.
    final class MyWebChromeClient extends WebChromeClient {
        @Override
        public boolean onJsAlert(WebView view, String url, String message, JsResult result) {
            Log.d(LOG_TAG, message);
            result.confirm();
            return true;
        }
    }
}