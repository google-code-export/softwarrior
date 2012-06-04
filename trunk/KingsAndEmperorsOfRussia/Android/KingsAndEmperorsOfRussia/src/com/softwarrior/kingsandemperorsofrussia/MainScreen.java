package com.softwarrior.kingsandemperorsofrussia;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Timer;
import java.util.TimerTask;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.Toast;
import android.webkit.CacheManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebViewClient;
import android.webkit.WebStorage;
import android.webkit.JsResult;

import com.google.ads.Ad;
import com.google.ads.AdListener;
import com.google.ads.AdRequest;
import com.google.ads.AdView;
import com.google.ads.AdRequest.ErrorCode;

import com.softwarrior.kingsandemperorsofrussia.R;

public class MainScreen extends FullWakeActivity implements AdListener {    
    
    //AdMob 
    private AdView mAdView;
    private AdRequest mAdRequest;       
    private Timer mAdRefreshTimer;
    private static final int mAdRefreshTime = 30000; //30 seconds
    private Handler mAdRefreshTimerHandler;
    
    private Button mButtonAds;
    
//  private RelativeLayout mLayoutMain;
//  private RelativeLayout mLayoutWebViewAds; //0
    private RelativeLayout mLayoutSplashView; //1
//  private ViewAnimator mViewAnimator;
    
//  private ImageView mImageViewSplash; 
    private WebView mWebView;
    
    private Timer mSplashTimer;
    private Handler mSplashTimerHandler;
    private volatile boolean mStartSplashTimer = false;

//    private Timer mInternetTimer;
//    private Handler mInternetTimerHandler;
//    private volatile boolean mStartInternetTimer = false;   
    
    private Timer mExitTimer;
    private Handler mExitTimerHandler;
    private volatile boolean mStartExitTimer = false;
    private volatile int mBackPressedCount = 0;
    
    //private final String mContentFileMask = "index_%02d_%s";
    private final String mContentUrlPrefix = "http://www.softwarrior.org/KingsAndEmperorsOfRussia/";
    //private final String mContentUrlPrefix = "http://oranienbaum.i-free.com/test/KingsAndEmperorsOfRussia/";
    //private final String mServerTimeUrl = "http://oranienbaum.i-free.com/almanac/server_time.php";
    
    private final String mContentFile = "index_mobile.html";
    private final String mContentFileCheck = "index_mobile_check.html";
    
    private final long MAX_QUOTA = 104857600L;
    
    private String mContentUrlCheck = "undefined.url";
    private String mContentUrl = "undefined.url";
    
    //private boolean mCheckProgress = false;
    private boolean mUrlCheckError = false;
    
    class JsBridge {
        public void log(String consoleMessage){
            Log.w(MainApp.TAG, "onConsoleMessage: " + consoleMessage);
            if(consoleMessage.contains("Для этой даты нет контента")){
                if(mLayoutSplashView.getVisibility() == View.GONE){
                    mLayoutSplashView.setVisibility(View.VISIBLE);
                }
                CheckAndLoadUrl();
                return;
            } 
//            else if(consoleMessage.contains("ServerTime:")){
//                try{
//                    if(mInternetTimer!=null){
//                        mInternetTimer.cancel();
//                        mInternetTimer = null;
//                    }
//                    String serverTimeSec = consoleMessage.replace("ServerTime:", "");
//                    Calendar phoneCal = Calendar.getInstance();
//                    Calendar serverCal = Calendar.getInstance();
//                    serverCal.setTimeInMillis(Long.parseLong(serverTimeSec)*1000);
//                    if(Math.abs(phoneCal.get(Calendar.DAY_OF_YEAR)-serverCal.get(Calendar.DAY_OF_YEAR)) > 1){                           
//                        StartSplashTimer(1000); //1 sec
//                        mWebView.loadUrl("file:///android_asset/no_content.html");          
//                    } else{
//                        PrepareContentFile(phoneCal);
//                        CheckAndLoadUrl();
//                    }
//                }catch(Exception ex){};
//                return;
//            }               
            else if(consoleMessage.contains("KingsAndEmperorsOfRussia")){
                MainApp.AnalyticsTracker.trackPageView("/" + consoleMessage);
                return;
            }
            return;             
        }
    }
    
    @Override
    public void onCreate(Bundle icicle) {
        Log.i(MainApp.TAG,"onCreate");
        super.onCreate(icicle);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,WindowManager.LayoutParams.FLAG_FULLSCREEN);        
        setContentView(R.layout.main_screen);
                
        //AdMob
        mAdView = (AdView) findViewById(R.id.adView);        
        mButtonAds = (Button) findViewById(R.id.ButtonAds);
                       
        CookieSyncManager.createInstance(this);
                
        mStartSplashTimer = false;
        //mCheckProgress = false;
        mUrlCheckError = false;
        
        //mLayoutMain = (RelativeLayout) findViewById(R.id.LayoutMain);
//      mViewAnimator = (ViewAnimator) findViewById(R.id.ViewAnimator);
//      mViewAnimator.setDisplayedChild(1);
//      mViewAnimator.invalidate();

        mLayoutSplashView = (RelativeLayout)findViewById(R.id.LayoutViewSplash);
//        mLayoutWebViewAds = (RelativeLayout)findViewById(R.id.LayoutWebViewAds);
        
//      Animation inAnim = new AlphaAnimation(0, 1);
//      inAnim.setDuration(500);
//      Animation outAnim = new AlphaAnimation(1, 0);
//      outAnim.setDuration(500);
//      mViewAnimator.setInAnimation(inAnim);
//      mViewAnimator.setOutAnimation(outAnim);
        
        mWebView = (WebView) findViewById(R.id.webview);
//        mImageViewSplash = (ImageView)findViewById(R.id.ImageViewSplash);
//        int orientation = getResources().getConfiguration().orientation;
//        switch(orientation) {
//        case Configuration.ORIENTATION_PORTRAIT:
//          mImageViewSplash.setBackgroundDrawable(getResources().getDrawable(R.drawable.ic_splash_ver));
//          break;
//        case Configuration.ORIENTATION_LANDSCAPE:
//          mImageViewSplash.setBackgroundDrawable(getResources().getDrawable(R.drawable.ic_splash_hor));
//          break;
//        default:
//          assert false : "Unknown device orientation";
//        }                
          mWebView.setInitialScale(0);
          mWebView.setVerticalScrollBarEnabled(false);
          
          mWebView.addJavascriptInterface(new JsBridge(), "JSBridge");
//          mWebView.requestFocusFromTouch();
//--------------
//        mWebView.getSettings().setDomStorageEnabled(true);        
//        //Set cache size to 30 mb by default. should be more than enough
//        mWebView.getSettings().setAppCacheMaxSize(1024*1024*3);
//        //This next one is crazy. It's the DEFAULT location for your app's cache but it didn't work for me without this line
//        mWebView.getSettings().setAppCachePath("/data/data/com.ifree.almanac/cache");
//        mWebView.getSettings().setAllowFileAccess(true);
//        mWebView.getSettings().setAppCacheEnabled(true);
//        
//        mWebView.getSettings().setSavePassword(true);
//        mWebView.getSettings().setSaveFormData(true);
//        mWebView.getSettings().setJavaScriptEnabled(true);
//        mWebView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
//        mWebView.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
//        mWebView.getSettings().setDatabaseEnabled(true);
//        mWebView.getSettings().setSupportZoom(false);
//        //webSettings.setBuiltInZoomControls(false);
//        mWebView.getSettings().setPluginState(WebSettings.PluginState.OFF);
//-------------  
//        WebViewReflect.checkCompatibility();
//        mWebView.setInitialScale(100);
//        mWebView.setVerticalScrollBarEnabled(false);
//        mWebView.requestFocusFromTouch();
//        WebSettings localWebSettings = mWebView.getSettings();
//        localWebSettings.setJavaScriptEnabled(true);
//        localWebSettings.setJavaScriptCanOpenWindowsAutomatically(true);
//        localWebSettings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
//        localWebSettings.setDatabaseEnabled(true);
//        localWebSettings.setDatabasePath(getApplicationContext().getDir("database", 0).getPath());
//        WebViewReflect.setDomStorage(localWebSettings);
//        WebViewReflect.setStorage(localWebSettings, true, getApplicationContext().getDir("database", 0).getPath());
        //WebViewReflect.setGeolocationEnabled(localWebSettings, true);
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
        browserset.setAppCacheMaxSize(50*1024*1024);                
        //Cache move to AppData
        try{
          Method m = CacheManager.class.getDeclaredMethod("setCacheDisabled", boolean.class);
          m.setAccessible(true);
          m.invoke(null, true);
        }
        catch (Throwable e){
          Log.e(MainApp.TAG,"Reflection failed", e);
        }
        
        mWebView.setWebChromeClient(new WebChromeClient() {
            public boolean onJsAlert (WebView view, String url, String message, JsResult result){
                Toast.makeText(MainScreen.this, message, Toast.LENGTH_LONG).show();
                result.confirm();
                return true;
            }           
//          public boolean onConsoleMessage(ConsoleMessage consoleMessage){
//              Log.w(FreeAlmanacApp.TAG, "onConsoleMessage: " + consoleMessage.message());
//              if(consoleMessage.message().contains("Для этой даты нет контента")){
//                  if(mLayoutSplashView.getVisibility() == View.GONE){
//                      mLayoutSplashView.setVisibility(View.VISIBLE);
//                  }
//                  CheckAndLoadUrl();
//                  return true;
//              } 
//              else if(consoleMessage.message().contains("ServerTime:")){
//                  try{
//                      if(mInternetTimer!=null){
//                          mInternetTimer.cancel();
//                          mInternetTimer = null;
//                      }
//                      String serverTimeSec = consoleMessage.message().replace("ServerTime:", "");
//                      Calendar phoneCal = Calendar.getInstance();
//                      Calendar serverCal = Calendar.getInstance();
//                      serverCal.setTimeInMillis(Long.parseLong(serverTimeSec)*1000);
//                      if(Math.abs(phoneCal.get(Calendar.DAY_OF_YEAR)-serverCal.get(Calendar.DAY_OF_YEAR)) > 1){                           
//                          StartSplashTimer(1000); //1 sec
//                          mWebView.loadUrl("file:///android_asset/no_content.html");          
//                      } else{
//                          PrepareContentFile(phoneCal);
//                          CheckAndLoadUrl();
//                      }
//                  }catch(Exception ex){};
//                  return true;
//              }               
//              else if(consoleMessage.message().contains("FrivolousAlmanac")){
//                  FreeAlmanacApp.AnalyticsTracker.trackPageView("/" + consoleMessage.message());
//                  return true;
//              }
//              return false;               
//          }           
          public void onExceededDatabaseQuota(String paramString1, String paramString2, long paramLong1, long paramLong2, long paramLong3, WebStorage.QuotaUpdater paramQuotaUpdater)
            {
              Log.d(MainApp.TAG, "event raised onExceededDatabaseQuota estimatedSize: " + Long.toString(paramLong2) + " currentQuota: " + Long.toString(paramLong1) + " totalUsedQuota: " + Long.toString(paramLong3));
              if (paramLong2 < MAX_QUOTA)
              {
                Log.d(MainApp.TAG, "calling quotaUpdater.updateQuota newQuota: " + Long.toString(paramLong2));
                paramQuotaUpdater.updateQuota(paramLong2);
              }
            }
//          public void onGeolocationPermissionsShowPrompt(String paramString, GeolocationPermissions.Callback paramCallback)
//          {
//            super.onGeolocationPermissionsShowPrompt(paramString, paramCallback);
//            paramCallback.invoke(paramString, true, false);
//          }
            public void onReachedMaxAppCacheSize(long spaceNeeded, long totalUsedQuota,QuotaUpdater quotaUpdater){
                Log.d(MainApp.TAG, "!!!!! spaceNeeded=" + spaceNeeded);  
                quotaUpdater.updateQuota(spaceNeeded * 2);
            }           
            public void onProgressChanged(WebView view, int progress){
                if(progress == 100) Log.w(MainApp.TAG,"onProgressChanged = 100");
//              if(mCheckProgress == true && progress == 100){                  
//                  StartSplashTimer(2500); //2.5 sec
//              }
            }
        });        
        mWebView.setWebViewClient(new WebViewClient() {
            @Override
            public void onReceivedError(WebView view, int errorCode, String description, String failingUrl){
                Log.w(MainApp.TAG, "Failing Url: " + failingUrl + " Error description: " + description + " Error code: " + errorCode);
                if(mContentUrlCheck.equals(failingUrl)) {
                    mUrlCheckError = true;
                    if(MainApp.isNetworkAvailable(MainScreen.this)){
                        //ClearCash();
                        //mCheckProgress = true;
                        mWebView.getSettings().setCacheMode(WebSettings.LOAD_DEFAULT);
                    	//mWebView.getSettings().setCacheMode(WebSettings.LOAD_CACHE_ELSE_NETWORK);
                        mWebView.loadUrl(mContentUrl);
                        Toast.makeText(MainScreen.this, getString(R.string.download_msg), Toast.LENGTH_LONG).show();
                    } else {
                        //mCheckProgress = false;
                        StartSplashTimer(1000); //1 sec
                        mWebView.loadUrl("file:///android_asset/no_connection.html");           
                    }
                } else 
                if(mContentUrl.equals(failingUrl)) {
                    //mCheckProgress = false;
                    StartSplashTimer(1000); //1 sec
                    view.loadUrl("file:///android_asset/no_connection.html");
                    //view.loadData("No internet connection, you can not download the content.", "text/html", "UTF-8");
                    //Toast.makeText(MainScreen.this, "Нет интернет соединения", Toast.LENGTH_SHORT).show();
                }
            }
            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url){
                //Toast.makeText(MainScreen.this, "Url loading=" + url, Toast.LENGTH_SHORT).show();                
                try {
                    if (url.contains("softwarrior.org")){
                          view.loadUrl(url);
                          return false;                     
                    } else {
                        Log.w(MainApp.TAG,"shouldOverrideUrlLoading="+url);
                        Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(url)); 
                        startActivity(intent);
                        return true;                        
                    }                
//                  if (url.contains("youtube") ||
//                      url.contains("mailto") ||
//                      url.contains("market")) {
//                          Log.w(FreeAlmanacApp.TAG,"shouldOverrideUrlLoading="+url);
//                          Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(url)); 
//                          startActivity(intent);
//                          return true;
//                  }else {
//                        view.loadUrl(url);
//                        return false;
//                  }                  
                  }
                catch (Exception e) {
                    e.printStackTrace();
                }
                return true;
            }
            @Override
            public void onLoadResource(WebView view, String url){
                Log.d(MainApp.TAG,"onLoadResource: " + url);
                try {
                    if (url.contains("http://vkontakte.ru") ||
                        url.contains("http://www.facebook.com") || 
                        url.contains("https://twitter.com") ||
                        url.contains("http://connect.mail.ru")){
                            Log.w(MainApp.TAG,"onLoadResource="+url);
                            Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(url)); 
                            startActivity(intent);
                            if (mWebView.canGoBack())
                                mWebView.goBack();
                    }                  
                  }
                catch (Exception e) {
                    e.printStackTrace();
                }
                super.onLoadResource(view, url);
            }
            @Override
            public void onPageFinished (WebView view, String url){
                Log.w(MainApp.TAG,"onPageFinished: " + url);
                if(url.contains("server_time.php") || url.contains("no_connection.html") || url.contains("no_content.html")){                   
                } else
                if(mUrlCheckError == false && url.contains(mContentFileCheck)){
                    //mCheckProgress = true;
                    mWebView.getSettings().setCacheMode(WebSettings.LOAD_DEFAULT);
                    mWebView.loadUrl(mContentUrl);                  
                } else 
                if(url.contains(mContentUrl)){
                    //mCheckProgress = true;
                    StartSplashTimer(1000); 
                }
                super.onPageFinished(view, url);
            }
        });
        //mWebView.loadUrl("http://rutracker.org/forum/index.php");
        //mWebView.loadUrl("file:////sdcard/Downloads/GM_Direction.html");
        //mWebView.loadUrl("file:///android_asset/index.html");
        
        boolean DEBUG_MODE = true; 
//        try{
//            String debugFile = Environment.getExternalStorageDirectory()+"/"+"almanac_debug";
//            File file = new File(debugFile);
//            if(file.exists()){
//                DEBUG_MODE = true;
//            }
//        }catch (Exception ex){}

        Log.w(MainApp.TAG, "DEBUG_MODE="+DEBUG_MODE);
        
        if(DEBUG_MODE == true){
            PrepareContentFile(Calendar.getInstance());
            CheckAndLoadUrl();
        } else {
//            if(MainApp.isNetworkAvailable(MainScreen.this)){
//                mWebView.loadUrl(mServerTimeUrl);
//                StartInternetTimer(10000);
//            } else{
//                PrepareContentFile(Calendar.getInstance());
//                CheckAndLoadUrl();
//            }
        }
        Context context = getApplicationContext();
        if(MainApp.CheckMode(context) && MainApp.CheckService(context)){
            mAdView.setVisibility(View.GONE);
            mButtonAds.setVisibility(View.GONE);
            RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(RelativeLayout.LayoutParams.FILL_PARENT, RelativeLayout.LayoutParams.FILL_PARENT);
            lp.setMargins(0, 0, 0, 0);
            mWebView.setLayoutParams(lp);
            mWebView.addJavascriptInterface(true, "PAID_VERSION");
        } else{
            //AdMob
            mAdView.setAdListener(this);
            mAdRequest = new AdRequest();
            //mAdRequest.setTesting(true);
            mAdView.loadAd(mAdRequest);

            mAdRefreshTimer = new Timer();
            mAdRefreshTimer.schedule(new AdRefreshTimerTask(), mAdRefreshTime, mAdRefreshTime);
            mAdRefreshTimerHandler = new Handler() {
                @Override
                public void handleMessage(Message msg) {
                    mAdView.loadAd(mAdRequest);
                }
            };
        }
    }
    //---------------------------------------------------------------
    @Override
    protected void onPause() {
        super.onPause();
        if(mAdRefreshTimer != null){
            mAdRefreshTimer.cancel(); 
            mAdRefreshTimer = null;
        }
    }
    @Override
    protected void onRestart() {
        super.onRestart();
        mAdRefreshTimer = new Timer();
        mAdRefreshTimer.schedule(new AdRefreshTimerTask(), 0, mAdRefreshTime);
    }               
    //---------------------------------------------------------------
    private void PrepareContentFile(Calendar cal){
//        String dayInterval = "";
//        int dayOfMoth = cal.get(Calendar.DAY_OF_MONTH);
//        if(dayOfMoth >=1 && dayOfMoth <= 11 ){
//            dayInterval = "01_11";
//        } else 
//        if(dayOfMoth >=12 && dayOfMoth <= 21 ){
//            dayInterval = "12_21";
//        } else
//        if(dayOfMoth >=22 && dayOfMoth <= 31 ){
//            dayInterval = "22_31";
//        }           
        //mContentFile = String.format(mContentFileMask, cal.get(Calendar.MONTH)+1, dayInterval) + ".html";        
        //mContentFileCheck = String.format(mContentFileMask, cal.get(Calendar.MONTH)+1, dayInterval) + "_check.html";
        
        mContentUrl = mContentUrlPrefix + mContentFile;
        mContentUrlCheck = mContentUrlPrefix + mContentFileCheck;
    }
    //---------------------------------------------------------------
    @Override 
    public boolean onKeyDown(int keyCode, KeyEvent event) {
      if(keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0){
          if(mBackPressedCount == 0){
              Toast.makeText(this, getString(R.string.press_back_to_exit), Toast.LENGTH_SHORT).show();              
              mBackPressedCount++;
              StartExitTimer(3000);
              return true;
          } else{
              MainApp.FinalCloseApplication(this);
          }
      }
      return super.onKeyDown(keyCode, event);
     }
    //---------------------------------------------------------------
    private void StartSplashTimer(int splashTime){
        if(mStartSplashTimer == false){
            mStartSplashTimer = true;
            mSplashTimer = new Timer();
            mSplashTimer.schedule(new SplashTimerTask(), splashTime, splashTime);
            mSplashTimerHandler = new Handler() {
                @Override
                public void handleMessage(Message msg) { 
                    if(mLayoutSplashView.getVisibility() == View.VISIBLE){
                        runOnUiThread(new Runnable() {
                            public void run() {
                                mLayoutSplashView.setVisibility(View.GONE);
                            }
                        });
                    }
                    if(mSplashTimer!=null){
                        mSplashTimer.cancel();
                        mSplashTimer = null;
                    }
                }
            };
        }
    }
    //---------------------------------------------------------------
//    private void StartInternetTimer(int internetTime){
//        if(mStartInternetTimer == false){
//            mStartInternetTimer = true;
//            mInternetTimer = new Timer();
//            mInternetTimer.schedule(new InternetTimerTask(), internetTime, internetTime);
//            mInternetTimerHandler = new Handler() {
//                @Override
//                public void handleMessage(Message msg) {
//                    StartSplashTimer(1000); //1 sec
//                    mWebView.loadUrl("file:///android_asset/no_connection.html");
//                    if(mInternetTimer!=null){
//                        mInternetTimer.cancel();
//                        mInternetTimer = null;
//                    }
//                }
//            };
//        }
//    }
//    //---------------------------------------------------------------
    private void StartExitTimer(int exitTime){
        if(mStartExitTimer == false){
            mExitTimer = new Timer();
            mExitTimer.schedule(new ExitTimerTask(), exitTime, exitTime);
            mExitTimerHandler = new Handler() {
                @Override
                public void handleMessage(Message msg) {
                    if(mBackPressedCount>0)
                        mBackPressedCount--;
                    if(mExitTimer!=null){
                        mExitTimer.cancel();
                        mExitTimer = null;
                        mStartExitTimer = false;
                    }
                }
            };
            mStartExitTimer = true;
        }
    }
    //---------------------------------------------------------------
    private void CheckAndLoadUrl(){
//        if(FreeAlmanacApp.isNetworkAvailable(MainScreen.this) && FreeAlmanacApp.isPageNotFound(mContentUrlCheck)){
//          mCheckProgress = false;
//          StartSplashTimer(1000); //1 sec
//          mWebView.loadUrl("file:///android_asset/no_connection.html");
//        }
//        else{
            //mCheckProgress = false;
            mWebView.getSettings().setCacheMode(WebSettings.LOAD_CACHE_ONLY);
            mWebView.loadUrl(mContentUrlCheck);
//        }
    }    
    void ClearCash(){
        Log.w(MainApp.TAG,"ClearCash:");
        mWebView.clearHistory();
        mWebView.clearFormData();
        mWebView.clearCache(true);
//      /data/data/com.ifree.almanac/app_cashe/ApplicationCache.db
        String dbFile = getApplicationContext().getDir("cashe", 0).getPath() + "/" + "ApplicationCache.db";
//      boolean deleted = deleteDatabase(dbFile);
//      Log.w(FreeAlmanacApp.TAG,"deleteDatabase:" + dbFile + " result=" + deleted);        
//      if(deleted == true){
        SQLiteDatabase db = SQLiteDatabase.openOrCreateDatabase(dbFile, null);
        if(db != null){         
            final ArrayList<String> tableArray = new ArrayList<String>();
            Cursor c = db.rawQuery("SELECT name FROM sqlite_master WHERE type='table'", null);
            while(c.moveToNext()){
               String s=c.getString(0);
               if(s.equals("android_metadata")){
                 //System.out.println("Get Metadata");
                 continue;
               }
               else {
                  tableArray.add(s);
               }
            }
            for (String table : tableArray) {
                Log.w(MainApp.TAG, dbFile + " Table: "+ table);
                db.delete(table, "1", null);
            }
            db.close();
        }
//      }
//      FreeAlmanacApp.ClearAppData(this);
//      FreeAlmanacApp.ClearCache(this);
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
    
    private class SplashTimerTask extends TimerTask {
        @Override
        public void run() {
            if(mSplashTimerHandler!=null)
                mSplashTimerHandler.sendEmptyMessage(0);
        }
    }
    private class ExitTimerTask extends TimerTask {
        @Override
        public void run() {
            if(mExitTimerHandler!=null)
                mExitTimerHandler.sendEmptyMessage(0);
        }
    }
//    private class InternetTimerTask extends TimerTask {
//        @Override
//        public void run() {
//            if(mInternetTimerHandler!=null)
//                mInternetTimerHandler.sendEmptyMessage(0);
//        }
//    }    
    private class AdRefreshTimerTask extends TimerTask {            
        @Override
        public void run() {
            if(mAdRefreshTimerHandler!=null)
                mAdRefreshTimerHandler.sendEmptyMessage(0);
        }           
    }    
    //AdMob
    public void onDismissScreen(Ad ad) {
        Log.v(MainApp.TAG, "AdMob onDismissScreen");
    }
    public void onFailedToReceiveAd(Ad ad, ErrorCode errorCode) {
        Log.v(MainApp.TAG, "AdMob failed to receive ad (" + errorCode + ")");
        mAdView.setVisibility(View.GONE);
        mButtonAds.setVisibility(View.VISIBLE);
    }
    public void onLeaveApplication(Ad ad) {
        Log.v(MainApp.TAG, "AdMob onLeaveApplication");
    }
    public void onPresentScreen(Ad ad) {
        Log.v(MainApp.TAG, "AdMob onLeaveApplication");          
    }
    public void onReceiveAd(Ad ad) {
        Log.v(MainApp.TAG, "AdMob onReceiveAd"); 
        if(mButtonAds.getVisibility() != View.GONE){
            mButtonAds.setVisibility(View.GONE);
        }
    }
    
    public void OnClickButtonAds(View v){
        Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("https://market.android.com/details?id=com.ifree.almanac.noads")); 
        startActivity(intent);
    }
}