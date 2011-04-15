package com.softwarrior.rutrackerdownloader;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.CheckBoxPreference;
import android.preference.EditTextPreference;
import android.preference.PreferenceGroup;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;


import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp.*;

public final class DownloadPreferencesScreen extends PreferenceActivity
    implements OnSharedPreferenceChangeListener {
	
	public enum MenuType{
		About, Help, FileManager, Exit;
	} 
	
	public static final String KEY_LISTEN_PORT="preferences_listen_port";
	public static final String KEY_UPLOAD_LIMIT="preferences_upload_limit";
	public static final String KEY_DOWNLOAD_LIMIT="preferences_download_limit";
	public static final String KEY_UPNP="preferences_upnp";
	public static final String KEY_LSD="preferences_lsd";
	public static final String KEY_NATPMP="preferences_natpmp";
		
	public static final String KEY_PROXY_TYPE="preferences_proxy_type";
	public static final String KEY_HOST_NAME="preferences_host_name";
	public static final String KEY_PORT_NUMBER="preferences_port_number";
	public static final String KEY_USER_NAME="preferences_user_name";
	public static final String KEY_PASSWORD="preferences_password";
	
	public static final String KEY_TORRENT_SAVE_PATH="preferences_torrent_save_path";
			
	@Override
	protected void onCreate(Bundle icicle) {
		super.onCreate(icicle);
		addPreferencesFromResource(R.xml.download_preferences);
		
		String savePath =  GetTorrentSavePath(this);
		if(savePath == null || savePath.length() < 3)
			SetTorrentSavePath(this, RutrackerDownloaderApp.DefaultTorrentSavePath);    
		
		InitSummaries(getPreferenceScreen());
		setContentView(R.layout.download_preferences);
		
		if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.FinalCloseApplication(this);
		RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/DownloadPreferencesScreen");
	}
	
	@Override
	protected void onDestroy() {
		super.onDestroy();
		//RutrackerDownloaderApp.AnalyticsTracker.dispatch();
	}

	
	public static int GetListenPort(Context context){
		int result = RutrackerDownloaderApp.ListenPort; 
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		String str = preferences.getString(KEY_LISTEN_PORT, String.valueOf(RutrackerDownloaderApp.ListenPort));
		try{
			result = Integer.parseInt(str);
		}catch(Exception e){
			SetListenPort(context,String.valueOf(RutrackerDownloaderApp.ListenPort));
		}
		if(result < 0) {
			SetListenPort(context,String.valueOf(RutrackerDownloaderApp.ListenPort));
			result = RutrackerDownloaderApp.ListenPort;
		}
		return result;						
	}		
	public static int GetUploadLimit(Context context){
		int result = RutrackerDownloaderApp.UploadLimit;
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		String str = preferences.getString(KEY_UPLOAD_LIMIT, String.valueOf(RutrackerDownloaderApp.UploadLimit));
		try{
			result = Integer.parseInt(str);
		}catch(Exception e){
			SetUploadLimit(context,String.valueOf(RutrackerDownloaderApp.UploadLimit));
		}		
		return result;												
	}
	public static int GetDownloadLimit(Context context){
		int result = RutrackerDownloaderApp.DownloadLimit;
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		String str = preferences.getString(KEY_DOWNLOAD_LIMIT, String.valueOf(RutrackerDownloaderApp.DownloadLimit));
		try{
			result = Integer.parseInt(str);
		}catch(Exception e){
			SetDownloadLimit(context,String.valueOf(RutrackerDownloaderApp.DownloadLimit));
		}
		return result;
	}
	public static boolean GetUPNP(Context context){
		boolean result = RutrackerDownloaderApp.UPNP;
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		result = preferences.getBoolean(KEY_UPNP, RutrackerDownloaderApp.UPNP);
		return result;
	}
	public static boolean GetLSD(Context context){
		boolean result = RutrackerDownloaderApp.LSD;
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		result = preferences.getBoolean(KEY_LSD, RutrackerDownloaderApp.LSD);
		return result;
	}
	public static boolean GetNATPMP(Context context){
		boolean result = RutrackerDownloaderApp.NATPMP;
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		result = preferences.getBoolean(KEY_NATPMP, RutrackerDownloaderApp.NATPMP);
		return result;
	}	
	public static int GetProxyType(Context context){
		int result = RutrackerDownloaderApp.ProxyType;
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		String str = preferences.getString(KEY_PROXY_TYPE, String.valueOf(RutrackerDownloaderApp.ProxyType));
		try{
			result = Integer.parseInt(str);
		}catch(Exception e){
			SetProxyType(context,String.valueOf(RutrackerDownloaderApp.ProxyType));
		}
		if(result < 0) {
			SetProxyType(context,String.valueOf(RutrackerDownloaderApp.ProxyType));
			result = RutrackerDownloaderApp.ProxyType;
		}
		return result;
	}
	public static String GetHostName(Context context){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		return preferences.getString(KEY_HOST_NAME, RutrackerDownloaderApp.HostName);								
	}
	public static int GetPortNumber(Context context){
		int result = RutrackerDownloaderApp.PortNumber;
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		String str = preferences.getString(KEY_PORT_NUMBER, String.valueOf(RutrackerDownloaderApp.PortNumber));
		try{
			result = Integer.parseInt(str);
		}catch(Exception e){
			SetPortNumber(context,String.valueOf(RutrackerDownloaderApp.PortNumber));
		}
		return result;
	}
	public static String GetUserName(Context context){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		return preferences.getString(KEY_USER_NAME, RutrackerDownloaderApp.UserName);										
	}
	public static String GetUserPassword(Context context){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		return preferences.getString(KEY_PASSWORD, RutrackerDownloaderApp.UserPassword);												
	}
	public static String GetTorrentSavePath(Context context){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		return preferences.getString(KEY_TORRENT_SAVE_PATH, RutrackerDownloaderApp.DefaultTorrentSavePath);																
	}
	public static void SetTorrentSavePath(Context context, String SavePath){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		SharedPreferences.Editor editor = preferences.edit();
		if(SavePath == null || SavePath.length() < 3)
			editor.putString(KEY_TORRENT_SAVE_PATH, RutrackerDownloaderApp.DefaultTorrentSavePath);
		else
			editor.putString(KEY_TORRENT_SAVE_PATH, SavePath);
		editor.commit();
	}
	public static void SetListenPort(Context context, String listenPort){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		SharedPreferences.Editor editor = preferences.edit();
		if(listenPort == null || listenPort.length() < 1)
			editor.putString(KEY_LISTEN_PORT, Integer.toString(RutrackerDownloaderApp.ListenPort));
		else
			editor.putString(KEY_LISTEN_PORT, listenPort);
		editor.commit();		
	}	
	public static void SetUploadLimit(Context context, String uploadLimit){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		SharedPreferences.Editor editor = preferences.edit();
		if(uploadLimit == null || uploadLimit.length() < 1)
			editor.putString(KEY_UPLOAD_LIMIT, Integer.toString(RutrackerDownloaderApp.UploadLimit));
		else
			editor.putString(KEY_UPLOAD_LIMIT, uploadLimit);
		editor.commit();				
	}
	public static void SetDownloadLimit(Context context, String downloadLimit){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		SharedPreferences.Editor editor = preferences.edit();
		if(downloadLimit == null || downloadLimit.length() < 1)
			editor.putString(KEY_DOWNLOAD_LIMIT, Integer.toString(RutrackerDownloaderApp.DownloadLimit));
		else
			editor.putString(KEY_DOWNLOAD_LIMIT, downloadLimit);
		editor.commit();						
	}
	public static void SetProxyType(Context context, String proxyType){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		SharedPreferences.Editor editor = preferences.edit();
		if(proxyType == null || proxyType.length() < 1)
			editor.putString(KEY_PROXY_TYPE, Integer.toString(RutrackerDownloaderApp.ProxyType));
		else
			editor.putString(KEY_PROXY_TYPE, proxyType);
		editor.commit();								
	}
	public static void SetPortNumber(Context context, String portNumber){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		SharedPreferences.Editor editor = preferences.edit();
		if(portNumber == null || portNumber.length() < 1)
			editor.putString(KEY_PORT_NUMBER, Integer.toString(RutrackerDownloaderApp.PortNumber));
		else
			editor.putString(KEY_PORT_NUMBER, portNumber);
		editor.commit();										
	}
	
  @Override
  protected void onPause() {
	super.onPause();
	getPreferenceScreen().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this); 
	InitSummaries(getPreferenceScreen());
  }
  
  @Override
  protected void onResume() {
	super.onResume();
	 InitSummaries(getPreferenceScreen());
	getPreferenceScreen().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
	if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.FinalCloseApplication(this);
  }

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		super.onCreateOptionsMenu(menu);
		menu.add(Menu.NONE, MenuType.About.ordinal(), MenuType.About.ordinal(), R.string.menu_about); 
		menu.add(Menu.NONE, MenuType.Help.ordinal(), MenuType.Help.ordinal(), R.string.menu_help);
		menu.add(Menu.NONE, MenuType.FileManager.ordinal(), MenuType.FileManager.ordinal(), R.string.menu_file_manager);
		menu.add(Menu.NONE, MenuType.Exit.ordinal(), MenuType.Exit.ordinal(), R.string.menu_exit);
		return true;
	}
	
	@Override
	public boolean onMenuItemSelected(int featureId, MenuItem item) {
		super.onMenuItemSelected(featureId, item);
		MenuType type = MenuType.values()[item.getItemId()];
		switch(type)
		{
		case About:{
			RutrackerDownloaderApp.AboutActivity(this);
		} break;
		case Help:{
			RutrackerDownloaderApp.HelpActivity(this);
		} break;
		case FileManager:{
			RutrackerDownloaderApp.FileManagerActivity(this);
		} break;
		case Exit:{
			RutrackerDownloaderApp.FinalCloseApplication(this);
		} break;
		}
		return true;
	}

    @Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		switch(ActivityResultType.getValue(resultCode))
		{
		case RESULT_DOWNLOADER:{
			RutrackerDownloaderApp.OpenDownloaderActivity(this);
		} break;
		case RESULT_PREFERENCES:{			
		} break;
		case RESULT_EXIT:
			RutrackerDownloaderApp.FinalCloseApplication(this);
		default:{
		} break;
		};
	}
    
	@Override 
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		if(keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0)
			RutrackerDownloaderApp.FinalCloseApplication(this);
		return super.onKeyDown(keyCode,event); 
	}
	  
  //Set the summaries of all preferences
  private void InitSummaries(PreferenceGroup pg) {
	  for (int i = 0; i < pg.getPreferenceCount(); ++i) {
		  Preference p = pg.getPreference(i);
		  if(p instanceof PreferenceScreen) {
			  PreferenceScreen preferenceScreen = (PreferenceScreen) p;
			  String key = preferenceScreen.getKey();
			  if(key != null && preferenceScreen.getKey().equals(KEY_TORRENT_SAVE_PATH)){
				  preferenceScreen.setSummary(GetTorrentSavePath(this));
			  }else if (p instanceof PreferenceGroup)
				  InitSummaries((PreferenceGroup) p); // recursion
		  }else if (p instanceof PreferenceGroup)
			  InitSummaries((PreferenceGroup) p); // recursion
		  else
			  SetSummary(p);
	  }
  }
  
  //Set the summaries of the given preference
  private void SetSummary(Preference pref) {
   // react on type or key
    if (pref instanceof CheckBoxPreference) {
    	CheckBoxPreference checkBoxPreference = (CheckBoxPreference) pref;
    	checkBoxPreference.setSummary(checkBoxPreference.isChecked() ? getString(R.string.summary_chechbox_disable) : getString(R.string.summary_chechbox_enable));
    }
    else if(pref instanceof EditTextPreference) {
    	EditTextPreference editTextPreference = (EditTextPreference) pref;
    	editTextPreference.setSummary(getString(R.string.summary_edittext_current) + ": " + editTextPreference.getText()); 
    }
    else if(pref instanceof PreferenceScreen) {
		  PreferenceScreen preferenceScreen = (PreferenceScreen) pref;
		  String key = preferenceScreen.getKey();
		  if(key != null && preferenceScreen.getKey().equals(KEY_TORRENT_SAVE_PATH)){
			  preferenceScreen.setSummary(GetTorrentSavePath(this));
		  }
    }
  }
  
  public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
	  
	  PreferenceScreen preferences = getPreferenceScreen();
	  Preference pref =  preferences.findPreference(key);
	  if (pref instanceof EditTextPreference){
		  EditTextPreference pr = (EditTextPreference) pref;	 
		  if(key.equals(KEY_LISTEN_PORT) ||
			 key.equals(KEY_UPLOAD_LIMIT) ||
			 key.equals(KEY_DOWNLOAD_LIMIT) ||
			 key.equals(KEY_PROXY_TYPE) ||
			 key.equals(KEY_PORT_NUMBER) ){
			
			String  str = sharedPreferences.getString(key, "-1");
			if(key.equals(KEY_PROXY_TYPE))
					str = sharedPreferences.getString(key, Integer.toString(RutrackerDownloaderApp.ProxyType));		
			else if(key.equals(KEY_LISTEN_PORT))
					str = sharedPreferences.getString(key, Integer.toString(RutrackerDownloaderApp.ListenPort));
			int value = 0;
			try{
				value = Integer.parseInt(str);
			}catch(Exception e){
					str = "-1";
				if(key.equals(KEY_PROXY_TYPE))
					str = Integer.toString(RutrackerDownloaderApp.ProxyType);
				else if(key.equals(KEY_LISTEN_PORT))
					str = Integer.toString(RutrackerDownloaderApp.ListenPort);
				pr.setText(str);
			}
			if(key.equals(KEY_LISTEN_PORT) && value < 0)
				pr.setText(Integer.toString(RutrackerDownloaderApp.ListenPort));
			else if(key.equals(KEY_PROXY_TYPE) && value < 0)
				pr.setText(Integer.toString(RutrackerDownloaderApp.ProxyType));
		  } 
		  else if(key.equals(KEY_TORRENT_SAVE_PATH)){
			  String savePath = sharedPreferences.getString(key, RutrackerDownloaderApp.DefaultTorrentSavePath);
			  if(savePath == null || savePath.length() < 3)
				  pr.setText(RutrackerDownloaderApp.DefaultTorrentSavePath);		    	
		  }	  
	  }
	  SetSummary(pref);	  
  }
  
  public void OnClickButtonDownloader(View v) {
	  RutrackerDownloaderApp.OpenDownloaderActivity(this);
  }  
  public void OnClickButtonActivateSettings(View v) {
	  stopService(new Intent(this,DownloadService.class));
	  startService(new Intent(this, DownloadService.class));	  
  }
}