package com.softwarrior.rutrackerdownloader;

import java.io.File;

import com.google.android.apps.analytics.GoogleAnalyticsTracker;
import com.softwarrior.about.About;
import com.softwarrior.about.Help;
import com.softwarrior.file.FileManagerActivity;
import com.softwarrior.rutrackerdownloader.DownloadService.Controller.ControllerState;

import android.app.Activity;
import android.app.Application;
import android.app.NotificationManager;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.Process;

public class RutrackerDownloaderApp extends Application {	
		
   	//Enumerations
	public enum ActivityResultType {
		RESULT_OK(-1),RESULT_CANCELED(0),RESULT_FIRST_USER(1),
		RESULT_PREFERENCES(2), RESULT_DOWNLOADER(3), RESULT_EXIT(4);
		
		private int mCode;
		private ActivityResultType(int code) {mCode = code;}
		
		public int getCode() {return mCode;}
		public static ActivityResultType getValue(int code){
			ActivityResultType result = RESULT_OK;
			for (ActivityResultType value : ActivityResultType.values()) {
				if(value.getCode() == code){result = value; break;}					
			}
			return result;
		}
	}
		
	public static GoogleAnalyticsTracker AnalyticsTracker = GoogleAnalyticsTracker.getInstance();

	//Constants
	public static final String	TAG = "Softwarrior";
	public static final String	FeedUrlPrefix = "http://pipes.yahoo.com/pipes/pipe.run?_id=238f93185eccbc0e671bb93b29a50745&_render=rss";
	
	public static final String	RT_TorrentLoginUrl = "http://login.rutracker.org/forum/login.php";
	public static final String	RT_SearchUrlPrefix = "http://rutracker.org/forum/search.php";
	public static final String	RT_SiteMap = "http://rutracker.org/forum/index.php?c=map";
	public static final String	RT_TorrentDL = "http://dl.rutracker.org/forum/dl.php?t=";
	public static final String	RT_TorrentTopic = "http://rutracker.org/forum/viewtopic.php?t=";
	public static final String	RT_CookieUrl = "http://rutracker.org/forum/index.php";
	
	public static final String	PL_TorrentLoginUrl = "http://pornolab.net/forum/login.php";
	public static final String	PL_SearchUrlPrefix = "http://pornolab.net/forum/search.php";
	public static final String	PL_SiteMap = "http://pornolab.net/forum/index.php?c=map";
	public static final String	PL_TorrentDL = "http://pornolab.net/forum/dl.php?t=";
	public static final String	PL_TorrentTopic = "http://pornolab.net/forum/viewtopic.php?t=";
	public static final String	PL_CookieUrl = "http://pornolab.net/forum/index.php";
	//Default Download Preferences constants
	public static final int		ListenPort = 54312;
	public static final int		UploadLimit = -1;
	public static final int		DownloadLimit = -1;
	public static final int		ProxyType = 0; //none
	public static final String 	HostName =  new String();
	public static final int 	PortNumber = -1;
	public static final String 	UserName = new String();
	public static final String 	UserPassword = new String();
	public static final String 	TorrentFileName = "downloader.torrent";
	public static final String 	TorrentSavePath = Environment.getExternalStorageDirectory()+"/";// + "/RutrackerDownloader";
	
	//Variables
	public static String	TorrentLoginUrl = RT_TorrentLoginUrl;
	public static String	SearchUrlPrefix = RT_SearchUrlPrefix;
	public static String	SiteMap = RT_SiteMap;
	public static String    TorrentDL = RT_TorrentDL;
	public static String	TorrentTopic = RT_TorrentTopic;
	public static String	CookieUrl = RT_CookieUrl;
	
	public static String	CookieData = new String();
	//"http://pipes.yahoo.com/pipes/pipe.run?_id=238f93185eccbc0e671bb93b29a50745&_render=rss&type=video_foreign_films&date=2010&name=the";
	public static String	FeedUrl = new String();
	//"http://rutracker.org/forum/search.php?nm=TEST"
	public static String	SearchUrl = new String();
	public static boolean	ExitState = false;	

		
	static public void SetupPornolab(Activity activity){
    	RutrackerDownloaderApp.TorrentLoginUrl = RutrackerDownloaderApp.PL_TorrentLoginUrl;
    	RutrackerDownloaderApp.SearchUrlPrefix = RutrackerDownloaderApp.PL_SearchUrlPrefix;
    	RutrackerDownloaderApp.SiteMap = RutrackerDownloaderApp.PL_SiteMap;
    	RutrackerDownloaderApp.TorrentDL = RutrackerDownloaderApp.PL_TorrentDL;
    	RutrackerDownloaderApp.TorrentTopic = RutrackerDownloaderApp.PL_TorrentTopic;
    	RutrackerDownloaderApp.CookieUrl = RutrackerDownloaderApp.PL_CookieUrl;
		PreferencesTabs.SetRightCustomTitle(activity.getString(R.string.preferences_pornolab_title));
	}

	static public void SetupRutracker(Activity activity){
    	RutrackerDownloaderApp.TorrentLoginUrl = RutrackerDownloaderApp.RT_TorrentLoginUrl;
    	RutrackerDownloaderApp.SearchUrlPrefix = RutrackerDownloaderApp.RT_SearchUrlPrefix;
    	RutrackerDownloaderApp.SiteMap = RutrackerDownloaderApp.RT_SiteMap;        			
    	RutrackerDownloaderApp.TorrentDL = RutrackerDownloaderApp.RT_TorrentDL;
    	RutrackerDownloaderApp.TorrentTopic = RutrackerDownloaderApp.RT_TorrentTopic;
    	RutrackerDownloaderApp.CookieUrl = RutrackerDownloaderApp.RT_CookieUrl;
    	PreferencesTabs.SetRightCustomTitle(activity.getString(R.string.preferences_rutracker_title));
	}
	
    static public void PreferencesScreenActivity(Activity activity){
    	activity.setResult(RutrackerDownloaderApp.ActivityResultType.RESULT_PREFERENCES.getCode());
    	activity.overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
    	activity.finish();
    }

    static public void ToDownloaderActivity(Activity activity){
    	activity.setResult(RutrackerDownloaderApp.ActivityResultType.RESULT_DOWNLOADER.getCode());
    	activity.overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
    	activity.finish();
    }

    static public void OpenDownloaderActivity(Activity activity){
    	Intent intent = new Intent(Intent.ACTION_VIEW);
    	intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
    	intent.setClassName(activity, DownloadService.Controller.class.getName());
    	activity.startActivityForResult(intent, 0);
    }
    
    static public void FileManagerActivity(Activity activity){
    	Intent intent = new Intent(Intent.ACTION_VIEW);
    	intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
    	intent.setClassName(activity, FileManagerActivity.class.getName());
    	activity.startActivityForResult(intent,0); 
    	activity.overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
    }
 
    static public void CloseApplication(Activity activity){
    	RutrackerDownloaderApp.ExitState = true;
    	activity.setResult(RutrackerDownloaderApp.ActivityResultType.RESULT_EXIT.getCode());
    	activity.overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
    	activity.finish();
    }
        
    static public void FinalCloseApplication(final Activity activity){ 
    	final ProgressDialog dialog = ProgressDialog.show(activity, "", activity.getString(R.string.progress_close), true, false);
    	RutrackerDownloaderApp.ExitState = true;
		activity.stopService(new Intent(activity,DownloadService.class));
		NotificationManager nm = (NotificationManager)activity.getSystemService(NOTIFICATION_SERVICE);
 		nm.cancelAll();
    	SharedPreferences prefs =  activity.getSharedPreferences(DownloadService.Controller.class.getName(), MODE_PRIVATE);
    	SharedPreferences.Editor ed = prefs.edit();
        ed.putInt(ControllerState.class.getName(), ControllerState.Undefined.ordinal());
        ed.commit();
        RutrackerDownloaderApp.AnalyticsTracker.dispatch();
        RutrackerDownloaderApp.AnalyticsTracker.stop();
        final Handler handler = new Handler() {
            @Override
            public void handleMessage(Message msg) {
                dialog.dismiss();
                activity.moveTaskToBack(false);
        	  	Process.killProcess(Process.myPid());
            }
        };        
        // Start lengthy operation in a background thread
        new Thread(new Runnable() {
            public void run() {
		        RutrackerDownloaderApp.ClearCache(activity);
		        handler.sendEmptyMessage(0);
            }
        }).start();
	}    
    static public void HelpActivity(Activity activity){
    	Intent intent = new Intent(Intent.ACTION_VIEW);
    	intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
    	intent.setClassName(activity, Help.class.getName());
    	activity.startActivityForResult(intent, 0);
    }
 
    static public void AboutActivity(Activity activity){
    	Intent intent = new Intent(Intent.ACTION_VIEW);
    	intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
    	intent.setClassName(activity, About.class.getName());
    	activity.startActivityForResult(intent, 0);
    }
    
    static public void ClearCache(Context context){    	
    	try { 
    		File dir = context.getCacheDir(); 
    		if (dir != null && dir.isDirectory()) { 
    			deleteDir(dir); 
    		} 
    	} catch (Exception e){}     	
    }
    
    public static boolean deleteDir(File dir) { 
    	if (dir != null && dir.isDirectory()) { 
    		String[] children = dir.list(); 
    		for (int i = 0; i < children.length; i++) { 
    			boolean success = deleteDir(new File(dir, children[i])); 
    			if (!success) { 
    				return false; 
    			} 
    		} 
    	}
    	// The directory is now empty so delete it 
    	return dir.delete();
    }
}