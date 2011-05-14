package com.softwarrior.rutrackerdownloader;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import com.softwarrior.rss.MessageList;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp.ActivityResultType;
import com.softwarrior.web.TorrentWebClient;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.RelativeLayout;

import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.CheckBoxPreference;
import android.preference.EditTextPreference;
import android.preference.PreferenceGroup;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;

public final class WEBPreferencesScreen extends PreferenceActivity
    implements OnSharedPreferenceChangeListener {
	
	static String mString = new String();
	PreferenceScreen mPSSearchOnSite;

	public enum MenuType{
		About, Help, FileManager, WebHistory, Exit;
	}
		
	//TITLE
	public static final String KEY_SEARCH_STRING = "preferences_search_string";
	public static final String KEY_SEARCH_ON_SITE = "preferences_search_on_site";

	@Override
  protected void onCreate(Bundle icicle) {
    super.onCreate(icicle);
    addPreferencesFromResource(R.xml.web_preferences);
    InitSummaries(getPreferenceScreen());
    setContentView(R.layout.web_preferences);
    RelativeLayout buttonsLayoutEx = (RelativeLayout) findViewById(R.id.ButtonsLayoutEx);
    buttonsLayoutEx.setVisibility(RelativeLayout.VISIBLE);
    if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.FinalCloseApplication(this);
	RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/WEBPreferencesScreen");
  }
	@Override
	protected void onDestroy() {
		super.onDestroy();
		//RutrackerDownloaderApp.AnalyticsTracker.dispatch();
	}
	
  @Override
  protected void onPause() {
	super.onPause();
	getPreferenceScreen().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
  }
  
  @Override
  protected void onResume() {
	super.onResume();
	try{
	    mPSSearchOnSite.setSummary(PreferencesTabs.GetRightCustomTitle());
	    PreferenceScreen preferences = getPreferenceScreen();
		Preference pref =  preferences.findPreference(KEY_SEARCH_STRING);
		EditTextPreference pr = (EditTextPreference) pref;
		String searchString = GetSearchString(this);
		pr.setText(searchString);
		SetSummary(pref);
	}catch(Exception ex){}
	getPreferenceScreen().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
	if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.FinalCloseApplication(this);
  }
  
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		super.onCreateOptionsMenu(menu);
		menu.add(Menu.NONE, MenuType.About.ordinal(), MenuType.About.ordinal(), R.string.menu_about); 
		menu.add(Menu.NONE, MenuType.Help.ordinal(), MenuType.Help.ordinal(), R.string.menu_help);
		menu.add(Menu.NONE, MenuType.FileManager.ordinal(), MenuType.FileManager.ordinal(), R.string.menu_file_manager);
		menu.add(Menu.NONE, MenuType.WebHistory.ordinal(), MenuType.WebHistory.ordinal(), R.string.menu_web_history);
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
		case WebHistory:{
			RutrackerDownloaderApp.WebHistoryActivity(this);
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
		  if (p instanceof PreferenceGroup)
		  {	
			  String key = p.getKey();
			  if(key!= null && key.equals(KEY_SEARCH_ON_SITE))
				  mPSSearchOnSite = (PreferenceScreen) p;			  
			  InitSummaries((PreferenceGroup) p); // recursion
		  }
		  else
			  SetSummary(p);
	  }
  }

  static private void CreateSearchUrl(Context context)
  {
	  mString = new String();

	  RutrackerDownloaderApp.SearchUrl = RutrackerDownloaderApp.SearchUrlPrefix;
	  
//	  CreateSearchUrlRecursive(getPreferenceScreen());
	  mString = GetSearchString(context);

	  if(mString.length()>0){
		  	if(SiteChoice.GetSite(context) == SiteChoice.SiteType.NNMCLUB){
		  		RutrackerDownloaderApp.SearchUrl = mString; 
		  	} else {
				RutrackerDownloaderApp.SearchUrl += "?nm=";		  
				String enc_text = new String();
				try {
					enc_text = URLEncoder.encode(mString, "cp-1251");
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
				RutrackerDownloaderApp.SearchUrl += enc_text;
		  	}
	  }
  	  Log.d(RutrackerDownloaderApp.TAG,RutrackerDownloaderApp.SearchUrl);
  }
  
//  private void CreateSearchUrlRecursive(PreferenceGroup pg) {
//	  for (int i = 0; i < pg.getPreferenceCount(); ++i) {
//		  Preference p = pg.getPreference(i);
//		  if (p instanceof PreferenceGroup)
//			  CreateSearchUrlRecursive((PreferenceGroup) p); // recursion
//		  else 
//			  SetSearchUrl(p);
//	  }
//  }
//
//  private void SetSearchUrl(Preference pref)
//  {
//    if(pref instanceof EditTextPreference) {
//    	EditTextPreference editTextPreference = (EditTextPreference) pref;
//    	String text = editTextPreference.getText();		    	
//    	if(text != null){
//	    	if(text.length()>0){
//	    		if(editTextPreference.getKey().equals(KEY_SEARCH_STRING)){
//	    			mString = text;
//	    		}
//	    	}
//    	}
//    }	  
//  }
  
	public static String GetSearchString(Context context){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		return preferences.getString(KEY_SEARCH_STRING, "");																
	}
	
	public static void SetSearchString(Context context, String SearchString){
		String searchString = new String("");
		if(SearchString != null)
			searchString = SearchString;
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		SharedPreferences.Editor editor = preferences.edit();
		editor.putString(KEY_SEARCH_STRING, searchString);
		editor.commit();
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
  }
  
  public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
	  Preference pref = findPreference(key);
	  SetSummary(pref);
  }
  
  public void OnClickButtonPirateSearch(View v) {  
	  RutrackerDownloaderApp.FeedUrl = RutrackerDownloaderApp.PirateFeedUrlPrefix;
	  RutrackerDownloaderApp.FeedUrl += "&search=";
	  RutrackerDownloaderApp.FeedUrl += GetSearchString(this);	  
	  Intent intent = new Intent(Intent.ACTION_VIEW);
	  intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
	  intent.setClassName(this, MessageList.class.getName());
	  startActivityForResult(intent,0);
  }
  
  public void OnClickButtonSearch(View v) {
	  CreateSearchUrl(this);
	  Bundle bundle = new Bundle();
	  bundle.putString("LoadUrl", RutrackerDownloaderApp.SearchUrl);
	  bundle.putString("Action", "Search");
	  Intent intent = new Intent(Intent.ACTION_VIEW);
	  intent.putExtras(bundle);
	  intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
	  intent.setClassName(this, TorrentWebClient.class.getName());
	  startActivityForResult(intent,0);
  }
  
  static public void StartSearch(Activity activity){
	    CreateSearchUrl(activity);	
		Bundle bundle = new Bundle();
		bundle.putString("LoadUrl", RutrackerDownloaderApp.SearchUrl);
		bundle.putString("Action", "Search");
		Intent intent = new Intent(Intent.ACTION_VIEW);
		intent.putExtras(bundle);
		intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
		intent.setClassName(activity, TorrentWebClient.class.getName());
		activity.startActivityForResult(intent,0);
  }

  public void OnClickButtonSiteMap(View v) {
	  Bundle bundle = new Bundle();
	  bundle.putString("LoadUrl", RutrackerDownloaderApp.SiteMap);
	  bundle.putString("Action", "SiteMap");
	  Intent intent = new Intent(Intent.ACTION_VIEW);
	  intent.putExtras(bundle);
	  intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
	  intent.setClassName(this, TorrentWebClient.class.getName());
	  startActivityForResult(intent,0);
  }
  
  public void OnClickButtonKinoafisha(View v) {
	  Bundle bundle = new Bundle();
	  bundle.putString("LoadUrl", RutrackerDownloaderApp.KinoafishaCityUrl);
	  bundle.putString("Action", "Show");
	  Intent intent = new Intent(Intent.ACTION_VIEW);
	  intent.putExtras(bundle);
	  intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
	  intent.setClassName(this, TorrentWebClient.class.getName());
	  startActivityForResult(intent,0);
  }

  public void OnClickButtonLogin(View v) {
	  Bundle bundle = new Bundle();
	  bundle.putString("LoadUrl", RutrackerDownloaderApp.TorrentLoginUrl);
	  bundle.putString("Action", "Login");
	  Intent intent = new Intent(Intent.ACTION_VIEW);
	  intent.putExtras(bundle);
	  intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
	  intent.setClassName(this, TorrentWebClient.class.getName());
	  startActivity(intent);
  }  
}