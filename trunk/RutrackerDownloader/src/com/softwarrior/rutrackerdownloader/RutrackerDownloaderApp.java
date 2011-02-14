package com.softwarrior.rutrackerdownloader;

import com.softwarrior.libtorrent.LibTorrent;
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
	
	public static final LibTorrent LibTorrent =  new LibTorrent();
	
	//Variables
	public static String CookieData = new String();
	//"http://pipes.yahoo.com/pipes/pipe.run?_id=238f93185eccbc0e671bb93b29a50745&_render=rss&type=video_foreign_films&date=2010&name=the";
	public static String FeedUrl = new String();
	//"http://rutracker.org/forum/search.php?nm=TEST"
	public static String SearchUrl = new String();
}
/*
public class RutrackerDownloader extends Activity {
    
    public enum ActivityType{    	
    	UNDEFINED, PREFERENCES_SCREEN, MESSAGE_LIST, TORRENT_WEB_CLIENT;
    }
    
    	//Enumerations
	public enum MessageListResultTypes {
		RESULT_OK(-1),RESULT_CANCELED(0),RESULT_FIRST_USER(1),
		RESULT_ABOUT(2), RESULT_HELP(3), RESULT_PREFERENCES(4), RESULT_EXIT(5);
		
		private int mCode;
		private MessageListResultTypes(int code) {mCode = code;}
		
		public int getCode() {return mCode;}
		public static MessageListResultTypes getValue(int code){
			MessageListResultTypes result = RESULT_OK;
			for (MessageListResultTypes value : MessageListResultTypes.values()) {
				if(value.getCode() == code){result = value; break;}					
			}
			return result;
		}
	}
     
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,WindowManager.LayoutParams.FLAG_FULLSCREEN);
        PreferencesScreenActivity();
    }
                
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		ActivityType type = ActivityType.values()[requestCode];        
		switch(type)
		{
		case PREFERENCES_SCREEN:{
			PreferencesScreenActivityResult(resultCode);
		} break;
		case MESSAGE_LIST:{
			MessageListActivityResult(resultCode);
		} break;
		case TORRENT_WEB_CLIENT:{
		} break;
		default: {
			CloseApplication();
		} break;
		};
    }
        	
//  mLibTorrent.StartDownload(mSavePath, mTorentFile, 6881, 6889);
//  mLibTorrent.StopDownload();
//  Log.d(RutrackerDownloaderApp.TAG, "PreferencesActivity");
		
    private void PreferencesScreenActivity(){
	   	Intent intent = new Intent(Intent.ACTION_VIEW);
	    intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
	  	intent.setClassName(this, PreferencesScreen.class.getName());
	    startActivityForResult(intent,ActivityType.PREFERENCES_SCREEN.ordinal());
    }
    
    private void PreferencesScreenActivityResult(int resultCode){
		switch(PreferencesScreenResultTypes.getValue(resultCode))
		{
		case RESULT_SEARCH:{
			MessageListActivity();
		} break;
		default: {
			CloseApplication();
		} break;
		};
    }

    private void MessageListActivity(){
	   	Intent intent = new Intent(Intent.ACTION_VIEW);
	    intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
	  	intent.setClassName(this, MessageList.class.getName());
	    startActivityForResult(intent,ActivityType.MESSAGE_LIST.ordinal());
    }

    private void MessageListActivityResult(int resultCode){    	
		switch(MessageListResultTypes.getValue(resultCode))
		{
		case RESULT_ABOUT:{
			AboutActivity();
		} break;
		case RESULT_HELP:{
			HelpActivity();
		} break;
		case RESULT_PREFERENCES:{
			PreferencesScreenActivity();
		} break;
		case RESULT_EXIT:{
			CloseApplication();
		} break;
		default: {
			CloseApplication();
		} break;
		};
    }
    
    private void AboutActivity(){
    }

    private void HelpActivity(){
    }

    private void CloseApplication(){
    	moveTaskToBack(false);
    	Process.killProcess(Process.myPid());
    }
}
*/