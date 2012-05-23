package com.softwarrior.kingsandemperorsofrussia;

import java.io.File;
import java.net.HttpURLConnection;
import java.net.URL;

import com.google.android.apps.analytics.GoogleAnalyticsTracker;
import com.softwarrior.kingsandemperorsofrussia.R;

import android.app.Activity;
import android.app.Application;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.webkit.WebViewDatabase;
import android.widget.Toast;

public class MainApp extends Application {   
    
    public static final String TAG = "Softwarrior";
    
    public static GoogleAnalyticsTracker AnalyticsTracker = GoogleAnalyticsTracker.getInstance();
        
    @Override
    public void onCreate() {
        super.onCreate();
        try{
            MainApp.AnalyticsTracker.startNewSession("UA-28551057-2", 30, this); 
            WebViewDatabase webViewDB = WebViewDatabase.getInstance(this);
            if (webViewDB == null){
                Toast.makeText(getApplicationContext(), getString(R.string.reinstall_app), Toast.LENGTH_LONG).show();
                Toast.makeText(getApplicationContext(), getString(R.string.reinstall_app), Toast.LENGTH_LONG).show();
                MainApp.AnalyticsTracker.trackEvent(
                        "Error",           // Category
                        "check NULL",      // Action
                        "WebViewDatabase", // Label
                        78);               // Value
            }
            StartServiceActivity(getApplicationContext());
        }catch(Exception ex){
            Log.e(TAG, ex.toString());
        }
    }
    
    static public void OpenMainScreen(Activity activity){
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
        intent.setClassName(activity, MainScreen.class.getName());
        activity.overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
        activity.startActivity(intent);
    }
    
    static public void FinalCloseApplication(final Activity activity){  
        MainApp.AnalyticsTracker.dispatch();
       MainApp.AnalyticsTracker.stopSession();
    }
    
    @SuppressWarnings("unused")
    static private boolean FindFileInDir(final File dir, final String fileName) {
        boolean result = false;
        if (dir!= null && dir.isDirectory()) {
            try {
                for (File child : dir.listFiles()) {
                    if (child.isDirectory()) {
                        FindFileInDir(child, fileName);
                    }
                    if (child.getName().contains(fileName)){
                        result = true;
                        break;
                    }
                }
            }
            catch(Exception e){}
        }
        return result;
    }
//    static public void ClearAppData(Context context) {
//      File cache = context.getCacheDir();
//      File appDir = new File(cache.getParent());
//      if (appDir.exists()) {
//          String[] children = appDir.list();
//          for (String s : children) {
//              if (!s.equals("lib")) {
//                  deleteDir(new File(appDir, s));
//                  Log.i("TAG", "File /data/data/APP_PACKAGE/" + s + " DELETED");
//              }
//          }
//      }
//  }
    static public void ClearAppData(Context context) {
        File cache = context.getCacheDir();
        File appDir = new File(cache.getParent());
        if (appDir.exists()) {
            String[] children = appDir.list();
            for (String s : children) {
                if (!s.equals("lib")) {
                     deleteDir(appDir); 
                    //Log.i("TAG", appDir.getPath() + s + " DELETED");
                }
            }
        }
    } 
    
    @SuppressWarnings("unused")
    static public void PrintAppData(Context context) {
        File cache = context.getCacheDir();
        File appDir = new File(cache.getParent());
        if (appDir.exists()) {
            String[] children = appDir.list();
            for (String s : children) {
                printDir(appDir); 
            }
        }
    }
   
    static private boolean deleteDir(File dir) { 
        if (dir != null && dir.isDirectory()) { 
            String[] children = dir.list(); 
            for (int i = 0; i < children.length; i++) {
                File deletedFile = new File(dir, children[i]);
                boolean success = deleteDir(deletedFile); 
                if (!success) { 
                    return false; 
                } 
            } 
        }
        // The directory is now empty so delete it 
        return dir.delete();
    }
    
    static private boolean printDir(File dir) { 
        if (dir != null && dir.isDirectory()) { 
            String[] children = dir.list(); 
            for (int i = 0; i < children.length; i++) {
                File printedFile = new File(dir, children[i]);
                boolean success = printDir(printedFile); 
                Log.i("TAG", printedFile.getPath() + " size=" + printedFile.length());
                if (!success) { 
                    return false; 
                } 
            } 
        }
        return true;
    } 
    
    static public void ClearCache(Context context){     
        try { 
            File dir = context.getCacheDir(); 
            if (dir != null && dir.isDirectory()) { 
                deleteDir(dir); 
            } 
        } catch (Exception e){}         
    }
    
    @SuppressWarnings("unused")
    static private void ClearCacheThread(final Activity activity){
        final ProgressDialog dialog = ProgressDialog.show(activity, "", activity.getString(R.string.process_content), true, false);
        final Handler handler = new Handler() {
            @Override
            public void handleMessage(Message msg) {
                try{
                    dialog.dismiss();
                }catch(Exception ex){}
            }
        };        
        // Start lengthy operation in a background thread
        new Thread(new Runnable() {
            public void run() {
                try{
                        MainApp.ClearCache(activity);
                }catch(Exception ex){}
                handler.sendEmptyMessage(0);
            }
        }).start();
    }
    
    static public boolean isPageNotFound(String url) {
        boolean result = false;
        try {
            HttpURLConnection.setFollowRedirects(false);
            URL checkURL = new URL(url);
            HttpURLConnection con = (HttpURLConnection) checkURL.openConnection();
            con.setRequestMethod("GET");
            con.connect() ; 
            if (con.getResponseCode() == 404){
                result = true;
            }
        } catch (Exception e) {}
        return result;
    }
    
    static public boolean isNetworkAvailable(Activity activity) {
        boolean result = false;
        ConnectivityManager connectivityManager = (ConnectivityManager) activity.getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if(activeNetworkInfo != null){
             result = activeNetworkInfo.isConnected();
        }
        return result;
    }
    
    public static boolean CheckService(Context context){
        boolean result = false;
        String info = System.getProperty("ServiceActivity", "no");
        if(info.equals("yes"))
            result = true;
        return result;
    }

    public static void StartServiceActivity(Context context){ 
        try {
            String keyPkg = "com.ifree.almanac.noads"; 
            Intent intent = new Intent();
            intent.setClassName(keyPkg, keyPkg + ".ServiceActivity");
            intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(intent);
        }catch(Exception ex){}
    }   
    
    public static boolean CheckMode(Context context){ 
        boolean result = false;
        try {
            String mainAppPkg = "com.ifree.almanac"; 
            String keyPkg = "com.ifree.almanac.noads"; 
            int sigMatch = context.getPackageManager().checkSignatures(mainAppPkg, keyPkg); 
            if(sigMatch == PackageManager.SIGNATURE_MATCH){
                  result = true;
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return result; 
    }
}