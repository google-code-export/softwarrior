package com.softwarrior.rutrackerdownloader;

import android.app.Application;
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
}
