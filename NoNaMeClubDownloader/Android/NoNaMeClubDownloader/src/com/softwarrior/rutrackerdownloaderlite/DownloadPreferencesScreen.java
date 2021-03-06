package com.softwarrior.rutrackerdownloaderlite;

import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;
import java.util.Timer;
import java.util.TimerTask;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.TextView;

import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.CheckBoxPreference;
import android.preference.EditTextPreference;
import android.preference.PreferenceGroup;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;

import com.softwarrior.rutrackerdownloaderlite.DownloaderApp.*;

public final class DownloadPreferencesScreen extends PreferenceActivity
    implements OnSharedPreferenceChangeListener {
	
	public enum MenuType{
		About, Help, FileManager, WebHistory, Exit;
	} 
	private Timer mIPRefreshTimer;
	private static final int mIPRefreshTime = 5000; //5 seconds
	private Handler mIPRefreshTimerHandler;
	private TextView mIPAddressText;
	
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
	
	public void OnClickHomeHandler(View v){
		DownloaderApp.MainScreen(this);
	}

	@Override
	protected void onCreate(Bundle icicle) {
        requestWindowFeature(Window.FEATURE_CUSTOM_TITLE);

		super.onCreate(icicle);
        
		addPreferencesFromResource(R.xml.download_preferences);
		
		String savePath =  GetTorrentSavePath(this);
		if(savePath == null || savePath.length() < 3)
			SetTorrentSavePath(this, DownloaderApp.DefaultTorrentSavePath);    
		
		InitSummaries(getPreferenceScreen());
		setContentView(R.layout.download_preferences);

        getWindow().setFeatureInt(Window.FEATURE_CUSTOM_TITLE, R.layout.custom_title);
        
		mIPAddressText = (TextView) findViewById(R.id.ip_address);
		SetIPAdressText();
		
        mIPRefreshTimer = new Timer();
        mIPRefreshTimer.schedule(new IPRefreshTimerTask(), mIPRefreshTime, mIPRefreshTime);
        mIPRefreshTimerHandler = new Handler() {
            @Override
            public void handleMessage(Message msg) {
            	SetIPAdressText();
            }
        };  
                        		
		if(DownloaderApp.ExitState) DownloaderApp.FinalCloseApplication(this);
		DownloaderApp.AnalyticsTracker.trackPageView("/DownloadPreferencesScreen");
	}
	private class IPRefreshTimerTask extends TimerTask {			
		@Override
		public void run() {
			if(mIPRefreshTimerHandler!=null)
			    mIPRefreshTimerHandler.sendEmptyMessage(0);
		}	    	
    }
	private void SetIPAdressText(){
    	String ipAddress = getLocalIpAddress();
    	if(ipAddress.length()>1){
    		mIPAddressText.setText(ipAddress);
    		mIPAddressText.setTextColor(getResources().getColor(R.color.cyan));
    	}
    	else{
    		mIPAddressText.setTextColor(getResources().getColor(R.color.red));
    		mIPAddressText.setText(R.string.ip_address_unknown); 
    	}
	}
	public static int GetListenPort(Context context){
		int result = DownloaderApp.ListenPort; 
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		String str = preferences.getString(KEY_LISTEN_PORT, String.valueOf(DownloaderApp.ListenPort));
		try{
			result = Integer.parseInt(str);
		}catch(Exception e){
			SetListenPort(context,String.valueOf(DownloaderApp.ListenPort));
		}
		if(result < 0) {
			SetListenPort(context,String.valueOf(DownloaderApp.ListenPort));
			result = DownloaderApp.ListenPort;
		}
		return result;						
	}		
	public static int GetUploadLimit(Context context){
		int result = DownloaderApp.UploadLimit;
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		String str = preferences.getString(KEY_UPLOAD_LIMIT, String.valueOf(DownloaderApp.UploadLimit));
		try{
			result = Integer.parseInt(str);
		}catch(Exception e){
			SetUploadLimit(context,String.valueOf(DownloaderApp.UploadLimit));
		}		
		return result;												
	}
	public static int GetDownloadLimit(Context context){
		int result = DownloaderApp.DownloadLimit;
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		String str = preferences.getString(KEY_DOWNLOAD_LIMIT, String.valueOf(DownloaderApp.DownloadLimit));
		try{
			result = Integer.parseInt(str);
		}catch(Exception e){
			SetDownloadLimit(context,String.valueOf(DownloaderApp.DownloadLimit));
		}
		return result;
	}
	public static boolean GetUPNP(Context context){
		boolean result = DownloaderApp.UPNP;
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		result = preferences.getBoolean(KEY_UPNP, DownloaderApp.UPNP);
		return result;
	}
	public static boolean GetLSD(Context context){
		boolean result = DownloaderApp.LSD;
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		result = preferences.getBoolean(KEY_LSD, DownloaderApp.LSD);
		return result;
	}
	public static boolean GetNATPMP(Context context){
		boolean result = DownloaderApp.NATPMP;
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		result = preferences.getBoolean(KEY_NATPMP, DownloaderApp.NATPMP);
		return result;
	}	
	public static int GetProxyType(Context context){
		int result = DownloaderApp.ProxyType;
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		String str = preferences.getString(KEY_PROXY_TYPE, String.valueOf(DownloaderApp.ProxyType));
		try{
			result = Integer.parseInt(str);
		}catch(Exception e){
			SetProxyType(context,String.valueOf(DownloaderApp.ProxyType));
		}
		if(result < 0) {
			SetProxyType(context,String.valueOf(DownloaderApp.ProxyType));
			result = DownloaderApp.ProxyType;
		}
		return result;
	}
	public static String GetHostName(Context context){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		return preferences.getString(KEY_HOST_NAME, DownloaderApp.HostName);								
	}
	public static int GetPortNumber(Context context){
		int result = DownloaderApp.PortNumber;
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		String str = preferences.getString(KEY_PORT_NUMBER, String.valueOf(DownloaderApp.PortNumber));
		try{
			result = Integer.parseInt(str);
		}catch(Exception e){
			SetPortNumber(context,String.valueOf(DownloaderApp.PortNumber));
		}
		return result;
	}
	public static String GetUserName(Context context){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		return preferences.getString(KEY_USER_NAME, DownloaderApp.UserName);										
	}
	public static String GetUserPassword(Context context){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		return preferences.getString(KEY_PASSWORD, DownloaderApp.UserPassword);												
	}
	public static String GetTorrentSavePath(Context context){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		return preferences.getString(KEY_TORRENT_SAVE_PATH, DownloaderApp.DefaultTorrentSavePath);																
	}
	public static void SetTorrentSavePath(Context context, String SavePath){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		SharedPreferences.Editor editor = preferences.edit();
		if(SavePath == null || SavePath.length() < 3)
			editor.putString(KEY_TORRENT_SAVE_PATH, DownloaderApp.DefaultTorrentSavePath);
		else
			editor.putString(KEY_TORRENT_SAVE_PATH, SavePath);
		editor.commit();
	}
	public static void SetListenPort(Context context, String listenPort){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		SharedPreferences.Editor editor = preferences.edit();
		if(listenPort == null || listenPort.length() < 0)
			editor.putString(KEY_LISTEN_PORT, Integer.toString(DownloaderApp.ListenPort));
		else
			editor.putString(KEY_LISTEN_PORT, listenPort);
		editor.commit();		
	}	
	public static void SetUploadLimit(Context context, String uploadLimit){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		SharedPreferences.Editor editor = preferences.edit();
		if(uploadLimit == null || uploadLimit.length() < 0)
			editor.putString(KEY_UPLOAD_LIMIT, Integer.toString(DownloaderApp.UploadLimit));
		else
			editor.putString(KEY_UPLOAD_LIMIT, uploadLimit);
		editor.commit();				
	}
	public static void SetDownloadLimit(Context context, String downloadLimit){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		SharedPreferences.Editor editor = preferences.edit();
		if(downloadLimit == null || downloadLimit.length() < 0)
			editor.putString(KEY_DOWNLOAD_LIMIT, Integer.toString(DownloaderApp.DownloadLimit));
		else
			editor.putString(KEY_DOWNLOAD_LIMIT, downloadLimit);
		editor.commit();						
	}
	public static void SetProxyType(Context context, String proxyType){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		SharedPreferences.Editor editor = preferences.edit();
		if(proxyType == null || proxyType.length() < 0)
			editor.putString(KEY_PROXY_TYPE, Integer.toString(DownloaderApp.ProxyType));
		else
			editor.putString(KEY_PROXY_TYPE, proxyType);
		editor.commit();								
	}
	public static void SetPortNumber(Context context, String portNumber){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		SharedPreferences.Editor editor = preferences.edit();
		if(portNumber == null || portNumber.length() < 0)
			editor.putString(KEY_PORT_NUMBER, Integer.toString(DownloaderApp.PortNumber));
		else
			editor.putString(KEY_PORT_NUMBER, portNumber);
		editor.commit();										
	}
	
  @Override
  protected void onPause() {
	super.onPause();
	getPreferenceScreen().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this); 
	InitSummaries(getPreferenceScreen());
  	if(mIPRefreshTimer != null){
  		mIPRefreshTimer.cancel(); 
  		mIPRefreshTimer = null;
  	}
  }
  @Override
  protected void onRestart() {
  	super.onRestart();
  	mIPRefreshTimer = new Timer();
  	mIPRefreshTimer.schedule(new IPRefreshTimerTask(), 0, mIPRefreshTime);
  }  
  @Override
  protected void onResume() {
	super.onResume();
	 InitSummaries(getPreferenceScreen());
	getPreferenceScreen().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
	if(DownloaderApp.ExitState) DownloaderApp.FinalCloseApplication(this);
  }

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		super.onCreateOptionsMenu(menu);
		menu.add(Menu.NONE, MenuType.About.ordinal(), MenuType.About.ordinal(), R.string.menu_about); 
		menu.add(Menu.NONE, MenuType.Help.ordinal(), MenuType.Help.ordinal(), R.string.menu_help);
		menu.add(Menu.NONE, MenuType.FileManager.ordinal(), MenuType.FileManager.ordinal(), R.string.menu_file_manager);
		menu.add(Menu.NONE, MenuType.WebHistory.ordinal(), MenuType.WebHistory.ordinal(), R.string.menu_web_history);
		menu.add(Menu.NONE, MenuType.Exit.ordinal(), MenuType.Exit.ordinal(), R.string.menu_exit);
	    DownloaderApp.SetMenuBackground(this);
		return true;
	}
	
	@Override
	public boolean onMenuItemSelected(int featureId, MenuItem item) {
		super.onMenuItemSelected(featureId, item);
		MenuType type = MenuType.values()[item.getItemId()];
		switch(type)
		{
		case About:{
			DownloaderApp.AboutActivity(this);
		} break;
		case Help:{
			DownloaderApp.HelpActivity(this);
		} break;
		case FileManager:{
			DownloaderApp.FileManagerActivity(this);
		} break;
		case WebHistory:{
			DownloaderApp.WebHistoryActivity(this);
		} break;
		case Exit:{
			DownloaderApp.FinalCloseApplication(this);
		} break;
		}
		return true;
	}

	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		switch(ActivityResultType.getValue(resultCode))
		{
		case RESULT_DOWNLOADER:
		case RESULT_MAIN:
		case RESULT_EXIT:
			setResult(resultCode);
			finish();
			break;
		};		
	}
    
//	@Override 
//	public boolean onKeyDown(int keyCode, KeyEvent event) {
//		if(keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0)
//			RutrackerDownloaderApp.FinalCloseApplication(this);
//		return super.onKeyDown(keyCode,event); 
//	}
	  
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
    	String key = pref.getKey();
    	if(key.equals(KEY_LISTEN_PORT) ||
    	   key.equals(KEY_UPLOAD_LIMIT) ||
		   key.equals(KEY_DOWNLOAD_LIMIT) ||
		   key.equals(KEY_PORT_NUMBER))
    		editTextPreference.setSummary(getString(R.string.summary_edittext_current_zerro) + ": " + editTextPreference.getText());
    	else
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
			 key.equals(KEY_PORT_NUMBER) ){
			
			String  str = sharedPreferences.getString(key, "0");
			if(key.equals(KEY_LISTEN_PORT))
					str = sharedPreferences.getString(key, Integer.toString(DownloaderApp.ListenPort));
			int value = 0;
			try{
				value = Integer.parseInt(str);
			}catch(Exception e){
					str = "0";
				if(key.equals(KEY_LISTEN_PORT))
					str = Integer.toString(DownloaderApp.ListenPort);
				pr.setText(str);
			}
			if(key.equals(KEY_LISTEN_PORT) && value < 0)
				pr.setText(Integer.toString(DownloaderApp.ListenPort));
		  } 
		  else if(key.equals(KEY_TORRENT_SAVE_PATH)){
			  String savePath = sharedPreferences.getString(key, DownloaderApp.DefaultTorrentSavePath);
			  if(savePath == null || savePath.length() < 3)
				  pr.setText(DownloaderApp.DefaultTorrentSavePath);		    	
		  }
	  }
	  SetSummary(pref);	  
  }
  
  public void OnClickButtonDownloader(View v) {
	  DownloaderApp.OpenDownloaderActivity(this);
  }  
  public void OnClickButtonActivateSettings(View v) {
	  stopService(new Intent(this,DownloadService.class));
	  startService(new Intent(this, DownloadService.class));	  
  }
  public static String getLocalIpAddress() { 
	  try {
	      for (Enumeration<NetworkInterface> en = NetworkInterface.getNetworkInterfaces(); en.hasMoreElements();) {
	          NetworkInterface intf = en.nextElement();
	          for (Enumeration<InetAddress> enumIpAddr = intf.getInetAddresses(); enumIpAddr.hasMoreElements();) {
	              InetAddress inetAddress = enumIpAddr.nextElement();
	              if (!inetAddress.isLoopbackAddress()) {
	            	  String ipVersion = "";
	            	  if (inetAddress instanceof Inet4Address) {
	            		  ipVersion = " IPv4: ";
	            	  }
	            	  else if (inetAddress instanceof Inet6Address) {
	            		  ipVersion = " IPv6: ";
	            	  }
	                  return ipVersion + inetAddress.getHostAddress().toString();
	              }
	          }
	      }
	  } catch (Exception ex) {}
	  return "";
  }
}