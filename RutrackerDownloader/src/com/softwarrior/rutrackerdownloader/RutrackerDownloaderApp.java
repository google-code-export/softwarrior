package com.softwarrior.rutrackerdownloader;

import com.google.android.apps.analytics.GoogleAnalyticsTracker;
import com.softwarrior.about.About;
import com.softwarrior.about.Help;
import com.softwarrior.file.FileManagerActivity;
import com.softwarrior.rutrackerdownloader.DownloadService.Controller.ControllerState;

import android.app.Activity;
import android.app.Application;
import android.app.NotificationManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Environment;
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
	public static final String	TorrentLoginUrl = "http://login.rutracker.org/forum/login.php";
	public static final String	FeedUrlPrefix = "http://pipes.yahoo.com/pipes/pipe.run?_id=238f93185eccbc0e671bb93b29a50745&_render=rss";
	public static final String	SearchUrlPrefix = "http://rutracker.org/forum/search.php";
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
	public static String	CookieData = new String();
	//"http://pipes.yahoo.com/pipes/pipe.run?_id=238f93185eccbc0e671bb93b29a50745&_render=rss&type=video_foreign_films&date=2010&name=the";
	public static String	FeedUrl = new String();
	//"http://rutracker.org/forum/search.php?nm=TEST"
	public static String	SearchUrl = new String();
	public static boolean	ExitState = false;	
		
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
        
    static public void FinalCloseApplication(Activity activity){
		RutrackerDownloaderApp.ExitState = true;
		activity.stopService(new Intent(activity,DownloadService.class));
		NotificationManager nm = (NotificationManager)activity.getSystemService(NOTIFICATION_SERVICE);
 		nm.cancelAll();
    	SharedPreferences prefs =  activity.getSharedPreferences(DownloadService.Controller.class.getName(), MODE_PRIVATE);
    	SharedPreferences.Editor ed = prefs.edit();
        ed.putInt(ControllerState.class.getName(), ControllerState.Undefined.ordinal());
        ed.commit();
        activity.moveTaskToBack(false);
	  	Process.killProcess(Process.myPid());
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
}