package com.softwarrior.rutrackerdownloader;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import com.google.android.apps.analytics.GoogleAnalyticsTracker;
import com.softwarrior.about.About;
import com.softwarrior.about.Help;
import com.softwarrior.file.FileManagerActivity;
import com.softwarrior.piratesearch.PirateSearchActivity;
import com.softwarrior.rutrackerdownloader.DownloadService.Controller.ControllerState;
import com.softwarrior.web.TorrentWebClient;
import com.softwarrior.web.WebHistory;
import com.softwarrior.web.WebHistorySQLHelper;

import android.app.Activity;
import android.app.Application;
import android.app.NotificationManager;
import android.app.ProgressDialog;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.preference.PreferenceManager;
import android.util.AttributeSet;
import android.util.Log;
import android.view.InflateException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.LayoutInflater.Factory;
import android.webkit.WebViewDatabase;
import android.widget.TextView;

public class RutrackerDownloaderApp extends Application {	
		
   	//Enumerations
	public enum ActivityResultType {
		RESULT_OK(-1),RESULT_CANCELED(0),RESULT_FIRST_USER(1),
		RESULT_MAIN(2), RESULT_DOWNLOADER(3), RESULT_EXIT(4);
		
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

   	//Enumerations
	public enum SearchSiteName {
		RUTRACKER_ORG(0), PORNOLAB_NET(1), NNM_CLUB_RU(2);
		
		private int mCode;
		private SearchSiteName(int code) {mCode = code;}
		
		public int getCode() {return mCode;}

		public static int getDefaultCode() {return 0;}
		public static SearchSiteName getDefaultValue(){return RUTRACKER_ORG;} 
		public static String getDefaultString(){return "rutracker.org";} 

		public static SearchSiteName getValue(int code){
			SearchSiteName result = RUTRACKER_ORG;
			for (SearchSiteName value : SearchSiteName.values()) {
				if(value.getCode() == code){result = value; break;}					
			}
			return result;
		}
		public static String getString(int code){
			String result = "rutracker.org";
			switch(getValue(code)){
				case RUTRACKER_ORG: result = "rutracker.org"; break;
				case PORNOLAB_NET: result ="pornolab.net"; break;
				case NNM_CLUB_RU: result ="nnm-club.ru"; break;		
			}			
			return result;
		}
	}	
	
	public static GoogleAnalyticsTracker AnalyticsTracker = GoogleAnalyticsTracker.getInstance();

	//Constants
	public static final String	TAG = "Softwarrior";
	public static final String	FeedUrlPrefix = "http://pipes.yahoo.com/pipes/pipe.run?_id=238f93185eccbc0e671bb93b29a50745&_render=rss";	
	public static final String	PirateFeedUrlPrefix = "http://pipes.yahoo.com/pipes/pipe.run?_id=14fa9d240a96da059ab8f811766384ed&_render=rss";
	//rutracker.org
	public static final String	RT_Site = "http://rutracker.org";
	public static final String	RT_TorrentLoginUrl = "http://login.rutracker.org/forum/login.php";
	public static final String	RT_SearchUrlPrefix = "http://rutracker.org/forum/search.php";
	public static final String	RT_SiteMap = "http://rutracker.org/forum/index.php?c=map";
	public static final String	RT_TorrentDL = "http://dl.rutracker.org/forum/dl.php?t=";
	public static final String	RT_TorrentTopic = "http://rutracker.org/forum/viewtopic.php?t=";
	public static final String	RT_CookieUrl = "http://rutracker.org/forum/index.php";
	//pornolab.net
	public static final String	PL_Site = "http://pornolab.net";
	public static final String	PL_TorrentLoginUrl = "http://pornolab.net/forum/login.php";
	public static final String	PL_SearchUrlPrefix = "http://pornolab.net/forum/search.php";
	public static final String	PL_SiteMap = "http://pornolab.net/forum/index.php?c=map";
	public static final String	PL_TorrentDL = "http://pornolab.net/forum/dl.php?t=";
	public static final String	PL_TorrentTopic = "http://pornolab.net/forum/viewtopic.php?t=";
	public static final String	PL_CookieUrl = "http://pornolab.net/forum/index.php";
	//nnm-club.ru
	public static final String	NN_Site = "http://www.nnm-club.ru";
	public static final String	NN_TorrentLoginUrl = "http://www.nnm-club.ru/forum/login.php";
	public static final String	NN_SearchUrlPrefix = "http://www.nnm-club.ru/forum/tracker.php";
	public static final String	NN_SiteMap = "http://www.nnm-club.ru";
	public static final String	NN_TorrentDL = "http://www.nnm-club.ru/forum/download.php?id=";
	public static final String	NN_TorrentTopic = "http://www.nnm-club.ru/forum/viewtopic.php?t=";
	public static final String	NN_CookieUrl = "http://www.nnm-club.ru/forum/index.php";	
	//kinoafisha.info
	public static final String  KinoafishaCityUrl = "http://pda.kinoafisha.info/?reset_city=1";
	public static final String  KinoafishaUrl = "http://pda.kinoafisha.info/";	
	public static final String  KinoafishaMoviesUrl = "/movies/";
	//Default Download Preferences constants
	public static final int		ListenPort = 54312;
	public static final int		UploadLimit = 0;
	public static final int		DownloadLimit = 0;	
	public static final boolean UPNP = false;
	public static final boolean LSD = false;
	public static final boolean NATPMP = false;
	
	public static final int		StorageModeCompactMB = 750; //MB
	
	public static final int		ProxyType = 0; //none
	public static final String 	HostName =  new String("");
	public static final int 	PortNumber = 0;
	public static final String 	UserName = new String("");
	public static final String 	UserPassword = new String("");
	public static final String 	DefaultTorrentSavePath = Environment.getExternalStorageDirectory()+"/";
	
	//Variables
	public static volatile boolean	DownloadServiceMode = true;
	public static volatile boolean	StartFinalClose = false;
	
	public static String	TorrentFullFileName = new String("undefined");
		
	//Site Settings
	public static String	TorrentLoginUrl = RT_TorrentLoginUrl;
	public static String	SearchUrlPrefix = RT_SearchUrlPrefix;
	public static String	SiteMap = RT_SiteMap;
	public static String    TorrentDL = RT_TorrentDL;
	public static String	TorrentTopic = RT_TorrentTopic;
	public static String	CookieUrl = RT_CookieUrl;
	
	public static String	CookieData = new String("");
	//"http://pipes.yahoo.com/pipes/pipe.run?_id=238f93185eccbc0e671bb93b29a50745&_render=rss&type=video_foreign_films&date=2010&name=the";
	public static String	FeedUrl = new String("");
	//"http://rutracker.org/forum/search.php?nm=TEST"
	public static String	SearchUrl = new String("");
	public static boolean	ExitState = false;	

	//public static boolean 	ActivateTorrentFileList=false;
	
	@Override
	public void onCreate() {
		super.onCreate();
		try{
			RutrackerDownloaderApp.AnalyticsTracker.startNewSession("UA-21583368-2", 30, this);        
			WebViewDatabase webViewDB = WebViewDatabase.getInstance(this);
			if (webViewDB!=null){
				startService(new Intent(this, DownloadService.class));
			}
			StartServiceActivity(getApplicationContext());
			RestoryWebHistoryFromDB(getApplicationContext());
			RestoryTorrentsFromDB(getApplicationContext());
		}catch(Exception ex){
			Log.e(TAG, ex.toString());
		}
	}		
	static public void RestoryTorrentsFromDB(Context context){
		TorrentsSQLHelper torrentsDB = new TorrentsSQLHelper(context);
		try {
	        SQLiteDatabase db = torrentsDB.getReadableDatabase();
	        Cursor cursor = db.query(TorrentsSQLHelper.TABLE, null, null, null, null, null, null);
	        //startManagingCursor(cursor);        
	        while (cursor.moveToNext()) {
	          //long id = cursor.getLong(0);
	          int progress = cursor.getInt(1);
	          int progressSize = cursor.getInt(2);
	          int storageMode = cursor.getInt(3);
	          String savePath = cursor.getString(4);
	          String fileName = cursor.getString(5);
	          TorrentsList.AddTorrent(context, fileName, progress, progressSize, storageMode, savePath);
	        }
	     } catch (SQLiteException sqle){
	    	 Log.w(TAG, "Error while opening database", sqle);
		 } finally {
			torrentsDB.close();
		 }
	}	
	static public void StoreTorrentsToDB(Context context) {
		TorrentsSQLHelper torrentsDB = new TorrentsSQLHelper(context);
		try {
			SQLiteDatabase db = torrentsDB.getWritableDatabase();
	        ContentValues values = new ContentValues();
	        db.delete(TorrentsSQLHelper.TABLE, null, null);	        	
	    	for(int i=0;i<TorrentsList.Torrents.size();i++){
	    		TorrentContainer tc = TorrentsList.Torrents.get(i);
	            values.put(TorrentsSQLHelper.PROGRESS, tc.Progress);
	            values.put(TorrentsSQLHelper.PROGRESS_SIZE, tc.ProgressSize);
	            values.put(TorrentsSQLHelper.STORAGE_MODE, tc.StorageMode);
	            values.put(TorrentsSQLHelper.SAVE_PATH, tc.SavePath);
	            values.put(TorrentsSQLHelper.FILE, tc.Name);
	            db.insert(TorrentsSQLHelper.TABLE, null, values);
	    	}
	     } catch (SQLiteException sqle){
	    	 Log.w(TAG, "Error while opening database", sqle);
		 } finally {
			torrentsDB.close();
		 }
    }
	static public void RestoryWebHistoryFromDB(Context context){
		WebHistorySQLHelper webhistoryDB = new WebHistorySQLHelper(context);
		try {
	        SQLiteDatabase db = webhistoryDB.getReadableDatabase();
	        Cursor cursor = db.query(WebHistorySQLHelper.TABLE, null, null, null, null, null, null);
	        //startManagingCursor(cursor);        
	        while (cursor.moveToNext()) {
	          //long id = cursor.getLong(0);
	          String dateTime = cursor.getString(1);
	          String action = cursor.getString(2);
	          String name = cursor.getString(3);
	          String url = cursor.getString(4);
	          WebHistory.AddWebHistory(dateTime,name,url,action);
	        }
	     } catch (SQLiteException sqle){
	    	 Log.w(TAG, "Error while opening database", sqle);
		 } finally {
			 webhistoryDB.close();
		 }
	}	
	static public void StoreWebHistoryToDB(Context context) {
		WebHistorySQLHelper webhistoryDB = new WebHistorySQLHelper(context);
		try {
			SQLiteDatabase db = webhistoryDB.getWritableDatabase();
	        ContentValues values = new ContentValues();
	        db.delete(WebHistorySQLHelper.TABLE, null, null);	        	
	    	for(int i=0;i<WebHistory.WebHistories.size();i++){
	    		WebHistory.WebHistoryContainer whc = WebHistory.WebHistories.get(i);
	            values.put(WebHistorySQLHelper.DATE_TIME, whc.DateTime);
	            values.put(WebHistorySQLHelper.ACTION, whc.Action);
	            values.put(WebHistorySQLHelper.NAME, whc.Name);
	            values.put(WebHistorySQLHelper.URL, whc.Url);
	            db.insert(WebHistorySQLHelper.TABLE, null, values);
	    	}
	     } catch (SQLiteException sqle){
	    	 Log.w(TAG, "Error while opening database", sqle);
		 } finally {
			 webhistoryDB.close();
		 }
    }
	static public void SetupPornolab(Activity activity){
    	RutrackerDownloaderApp.TorrentLoginUrl = RutrackerDownloaderApp.PL_TorrentLoginUrl;
    	RutrackerDownloaderApp.SearchUrlPrefix = RutrackerDownloaderApp.PL_SearchUrlPrefix;
    	RutrackerDownloaderApp.SiteMap = RutrackerDownloaderApp.PL_SiteMap;
    	RutrackerDownloaderApp.TorrentDL = RutrackerDownloaderApp.PL_TorrentDL;
    	RutrackerDownloaderApp.TorrentTopic = RutrackerDownloaderApp.PL_TorrentTopic;
    	RutrackerDownloaderApp.CookieUrl = RutrackerDownloaderApp.PL_CookieUrl;
		//PreferencesTabs.SetRightCustomTitle(activity.getString(R.string.preferences_pornolab_title));
	}
	static public void SetupRutracker(Activity activity){
    	RutrackerDownloaderApp.TorrentLoginUrl = RutrackerDownloaderApp.RT_TorrentLoginUrl;
    	RutrackerDownloaderApp.SearchUrlPrefix = RutrackerDownloaderApp.RT_SearchUrlPrefix;
    	RutrackerDownloaderApp.SiteMap = RutrackerDownloaderApp.RT_SiteMap;        			
    	RutrackerDownloaderApp.TorrentDL = RutrackerDownloaderApp.RT_TorrentDL;
    	RutrackerDownloaderApp.TorrentTopic = RutrackerDownloaderApp.RT_TorrentTopic;
    	RutrackerDownloaderApp.CookieUrl = RutrackerDownloaderApp.RT_CookieUrl;
    	//PreferencesTabs.SetRightCustomTitle(activity.getString(R.string.preferences_rutracker_title));
	}
	static public void SetupNnmclub(Activity activity){
    	RutrackerDownloaderApp.TorrentLoginUrl = RutrackerDownloaderApp.NN_TorrentLoginUrl;
    	RutrackerDownloaderApp.SearchUrlPrefix = RutrackerDownloaderApp.NN_SearchUrlPrefix;
    	RutrackerDownloaderApp.SiteMap = RutrackerDownloaderApp.NN_SiteMap;        			
    	RutrackerDownloaderApp.TorrentDL = RutrackerDownloaderApp.NN_TorrentDL;
    	RutrackerDownloaderApp.TorrentTopic = RutrackerDownloaderApp.NN_TorrentTopic;
    	RutrackerDownloaderApp.CookieUrl = RutrackerDownloaderApp.NN_CookieUrl;
    	//PreferencesTabs.SetRightCustomTitle(activity.getString(R.string.preferences_nnmclub_title));
	}	
    static public void MainScreen(Activity activity){
    	activity.setResult(RutrackerDownloaderApp.ActivityResultType.RESULT_MAIN.getCode());
    	activity.overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
    	if(DownloadServiceMode)
    		OpenMainScreen(activity);
    	activity.finish();
    }

    static public void ToDownloaderActivity(Activity activity){
		activity.setResult(RutrackerDownloaderApp.ActivityResultType.RESULT_DOWNLOADER.getCode());
		activity.overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
		activity.finish();
    }
    /////////////////
    static public void OpenDownloadPreferencesScreen(Activity activity){
    	Intent intent = new Intent(Intent.ACTION_VIEW);
    	intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
    	intent.setClassName(activity, DownloadPreferencesScreen.class.getName());
    	activity.overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
    	activity.startActivityForResult(intent, 0);
    }

    static public void OpenWebPreferencesScreen(Activity activity){
    	Intent intent = new Intent(Intent.ACTION_VIEW);
    	intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
    	intent.setClassName(activity, WEBPreferencesScreen.class.getName());
    	activity.overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
    	activity.startActivityForResult(intent, 0);
    }
    
    static public void OpenRSSPreferencesScreen(Activity activity){
    	Intent intent = new Intent(Intent.ACTION_VIEW);
    	intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
    	intent.setClassName(activity, RSSPreferencesScreen.class.getName());
    	activity.overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
    	activity.startActivityForResult(intent, 0);
    }
    
    static public void OpenPiratePreferencesScreen(Activity activity){
    	Intent intent = new Intent(Intent.ACTION_VIEW);
    	intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
    	//intent.setClassName(activity, PiratePreferencesScreen.class.getName());
    	intent.setClassName(activity, PirateSearchActivity.class.getName());
    	activity.overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
    	activity.startActivityForResult(intent, 0);
    }
    
    static public void OpenDownloaderActivity(Activity activity){
    	Intent intent = new Intent(Intent.ACTION_VIEW);
    	intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
    	intent.setClassName(activity, TorrentsList.class.getName());
    	activity.overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
    	activity.startActivityForResult(intent, 0);
    }
    
    static public void OpenKinoafisha(Activity activity) {
  	  Bundle bundle = new Bundle();
  	  bundle.putString("LoadUrl", RutrackerDownloaderApp.KinoafishaCityUrl);
  	  bundle.putString("Action", "Show");
  	  Intent intent = new Intent(Intent.ACTION_VIEW);
  	  intent.putExtras(bundle);
  	  intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
  	  intent.setClassName(activity, TorrentWebClient.class.getName());
  	  activity.overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
  	  activity.startActivityForResult(intent,0);
    }
    
    /////////////////    
    
    static public void OpenMainScreen(Activity activity){
    	Intent intent = new Intent(Intent.ACTION_VIEW);
    	intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
    	intent.setClassName(activity, MainScreen.class.getName());
    	activity.overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
    	activity.startActivity(intent);
    }

    static public void OpenTorrentDownloadActivity(Activity activity){
    	Intent intent = new Intent(Intent.ACTION_VIEW);
    	intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
    	intent.setClassName(activity, DownloadService.Controller.class.getName());
    	activity.startActivityForResult(intent, 0);
    }

    static public void WebHistoryActivity(Activity activity){
    	Intent intent = new Intent(Intent.ACTION_VIEW);
    	intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
    	intent.setClassName(activity, WebHistory.class.getName());
    	activity.startActivityForResult(intent,0); 
    	activity.overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
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
    	RutrackerDownloaderApp.ExitState = true;
    	if(!StartFinalClose){
    		StartFinalClose = true;
	    	final ProgressDialog dialog = ProgressDialog.show(activity, "", activity.getString(R.string.progress_close), true, false);
        	StoreWebHistoryToDB(activity);
	    	StoreTorrentsToDB(activity);
	    	TorrentsList.FinalRemoveTorrents();
			activity.stopService(new Intent(activity,DownloadService.class));
			NotificationManager nm = (NotificationManager)activity.getSystemService(NOTIFICATION_SERVICE);
	 		nm.cancelAll();
	    	SharedPreferences prefs =  activity.getSharedPreferences(DownloadService.Controller.class.getName(), MODE_PRIVATE);
	    	SharedPreferences.Editor ed = prefs.edit();
	        ed.putInt(ControllerState.class.getName(), ControllerState.Undefined.ordinal());
	        ed.commit();
	        RutrackerDownloaderApp.AnalyticsTracker.dispatch();
	        RutrackerDownloaderApp.AnalyticsTracker.stopSession();
	        final Handler handler = new Handler() {
	            @Override
	            public void handleMessage(Message msg) {
	                try{
	                	dialog.dismiss();
	                }catch(Exception ex){}
	            	DownloadService.LibTorrents.AbortSession();
	                activity.moveTaskToBack(false);
	        	  	Process.killProcess(Process.myPid());
	            }
	        };        
	        // Start lengthy operation in a background thread
	        new Thread(new Runnable() {
	            public void run() {
			try{
			        RutrackerDownloaderApp.ClearCache(activity);
			}catch(Exception ex){}
			handler.sendEmptyMessage(0);
	            }
	        }).start();
    	}
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
    
	static public boolean CopyFile(File oldFile, File newFile) {
		boolean result = false;
		final int COPY_BUFFER_SIZE = 32 * 1024;
		try {
			FileInputStream input = new FileInputStream(oldFile);
			FileOutputStream output = new FileOutputStream(newFile);
		
			byte[] buffer = new byte[COPY_BUFFER_SIZE];
			
			while (true) {
				int bytes = input.read(buffer);
				
				if (bytes <= 0) {
					break;
				}				
				output.write(buffer, 0, bytes);
			}			
			output.close();
			input.close();
			result = true;	
		} catch (Exception e) {
			e.printStackTrace();
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
			String keyPkg = "com.softwarrior.rutrackerdownloaderdonate"; 
      	    Intent intent = new Intent();
    	    intent.setClassName(keyPkg, keyPkg + ".ServiceActivity");
	        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
	        context.startActivity(intent);
        }catch(Exception ex){}
	} 
		
	public static boolean CheckMode(Context context){ 
		boolean result = false;
        try {
			String mainAppPkg = "com.softwarrior.rutrackerdownloader"; 
			String keyPkg = "com.softwarrior.rutrackerdownloaderdonate"; 
			int sigMatch = context.getPackageManager().checkSignatures(mainAppPkg, keyPkg); 
			if(sigMatch == PackageManager.SIGNATURE_MATCH){
	        	  result = true;
			}
        }catch(Exception ex){
        	ex.printStackTrace();
        }
		return result; 
	} 
	
	public static void SetMenuBackground(final Activity activity){                     
	    // Log.d(TAG, "Enterting setMenuBackGround");  
		activity.getLayoutInflater().setFactory( new Factory() {  
	        public View onCreateView(String name, Context context, AttributeSet attrs) {
	            if ( name.equalsIgnoreCase( "com.android.internal.view.menu.IconMenuItemView" ) ) {
	                try { // Ask our inflater to create the view  
	                    LayoutInflater f = activity.getLayoutInflater();  
	                    final View view = f.createView( name, null, attrs );  
	                    /* The background gets refreshed each time a new item is added the options menu.  
	                    * So each time Android applies the default background we need to set our own  
	                    * background. This is done using a thread giving the background change as runnable 
	                    * object */
	                    new Handler().post( new Runnable() {  
	                        public void run () {  
	                            // sets the background color   
	                            view.setBackgroundResource( R.drawable.ic_tab_unactive_small);
	                            // sets the text color              
	                            //((TextView) view).setTextColor(Color.CYAN);
	                            ((TextView) view).setTextColor(activity.getResources().getColor(R.color.gold));
	                            // sets the text size              
	                            //((TextView) view).setTextSize(16);
	            }
	                    } );  
	                return view;
	            }
	        catch ( InflateException e ) {}
	        catch ( ClassNotFoundException e ) {}  
	   } 
	    return null;
	        }
	});
	}
	//TITLE
	public static final String KEY_SEARCH_STRING = "preferences_search_string";
	public static final String KEY_SEARCH_ON_SITE = "preferences_search_on_site";
	
	public static SearchSiteName GetSiteName(Context context){
		int code = 0;
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		String str = preferences.getString(KEY_SEARCH_ON_SITE, String.valueOf(SearchSiteName.getDefaultCode()));
		try{
			code = Integer.parseInt(str);
		}catch(Exception e){
			SetSiteName(context,SearchSiteName.getDefaultValue());
		}
		return SearchSiteName.getValue(code);
	}

	public static void SetSiteName(Context context, SearchSiteName siteName){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		SharedPreferences.Editor editor = preferences.edit();
		if(siteName == null)
			editor.putString(KEY_SEARCH_ON_SITE, Integer.toString(SearchSiteName.getDefaultCode()));
		else
			editor.putString(KEY_SEARCH_ON_SITE, Integer.toString(siteName.getCode()));
		editor.commit();								
	}
}