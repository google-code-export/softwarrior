package com.softwarrior.rutrackerdownloader;

import com.softwarrior.file.FileManagerActivity;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.Environment;

public class RutrackerDownloaderApp extends Application {	
		
   	//Enumerations
	public enum ActivityResultType {
		RESULT_OK(-1),RESULT_CANCELED(0),RESULT_FIRST_USER(1),
		RESULT_PREFERENCES(2), RESULT_EXIT(3);
		
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
	
	//Constants
	public static final String TAG = "Softwarrior";
	public static final String TorrentLoginUrl = "http://login.rutracker.org/forum/login.php";
	public static final String FeedUrlPrefix = "http://pipes.yahoo.com/pipes/pipe.run?_id=238f93185eccbc0e671bb93b29a50745&_render=rss";
	public static final String SearchUrlPrefix = "http://rutracker.org/forum/search.php";
	public static final String SavePath   = Environment.getExternalStorageDirectory() + "/RutrackerDownloader";
	public static final String TorrentFullFileName = Environment.getExternalStorageDirectory() + "/RutrackerDownloader/downloader.torrent";	
		
	//Variables
	public static String CookieData = new String();
	//"http://pipes.yahoo.com/pipes/pipe.run?_id=238f93185eccbc0e671bb93b29a50745&_render=rss&type=video_foreign_films&date=2010&name=the";
	public static String FeedUrl = new String();
	//"http://rutracker.org/forum/search.php?nm=TEST"
	public static String SearchUrl = new String();
	public static boolean ExitState = false;
	
	
    static public void PreferencesScreenActivity(Activity activity){
    	activity.setResult(RutrackerDownloaderApp.ActivityResultType.RESULT_PREFERENCES.getCode());
    	activity.finish();
    }
    
    static public void FileManagerActivity(Activity activity){
    	Intent intent = new Intent(Intent.ACTION_VIEW);
    	intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
    	intent.setClassName(activity, FileManagerActivity.class.getName());
    	activity.startActivityForResult(intent,0);      
    }
 
    static public void CloseApplication(Activity activity){
    	RutrackerDownloaderApp.ExitState = true;
    	activity.setResult(RutrackerDownloaderApp.ActivityResultType.RESULT_EXIT.getCode());
    	activity.finish();
    }
    
    static public void HelpActivity(Activity activity){
    }
 
    static public void AboutActivity(Activity activity){
    }
 
}

// For targetSdkVersion="5" or higher, one needs to use the following code instead of the one above:
// (See http://android-developers.blogspot.com/2009/12/back-and-other-hard-keys-three-stories.html )

/*
//@Override
public boolean onKeyDown(int keyCode, KeyEvent event)  {
    if (android.os.Build.VERSION.SDK_INT < android.os.Build.VERSION_CODES.ECLAIR
            && keyCode == KeyEvent.KEYCODE_BACK
            && event.getRepeatCount() == 0) {
        // Take care of calling this method on earlier versions of
        // the platform where it doesn't exist.
        onBackPressed();
    }

    return super.onKeyDown(keyCode, event);
}

//@Override
public void onBackPressed() {
    // This will be called either automatically for you on 2.0
    // or later, or by the code above on earlier versions of the
    // platform.
	if (mStepsBack > 0) {
		upOneLevel();
	} else {
		finish();
	}
}
*/
