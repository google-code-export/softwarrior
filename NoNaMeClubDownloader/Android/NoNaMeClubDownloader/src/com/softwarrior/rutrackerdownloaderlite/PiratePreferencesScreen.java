package com.softwarrior.rutrackerdownloaderlite;


import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import com.softwarrior.rss.MessageList;
import com.softwarrior.rutrackerdownloaderlite.RutrackerDownloaderApp.ActivityResultType;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;

import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.EditTextPreference;
import android.preference.PreferenceGroup;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;

public final class PiratePreferencesScreen extends PreferenceActivity
    implements OnSharedPreferenceChangeListener {
	
	static String mString = new String();
	PreferenceScreen mPSSearchOnSite;

	public enum MenuType{
		About, Help, FileManager, WebHistory, Exit;
	}
		
	@Override
  protected void onCreate(Bundle icicle) {
	requestWindowFeature(Window.FEATURE_CUSTOM_TITLE);
	super.onCreate(icicle);    
	addPreferencesFromResource(R.xml.pirate_preferences);
	InitSummaries(getPreferenceScreen());
	setContentView(R.layout.pirate_preferences);
	getWindow().setFeatureInt(Window.FEATURE_CUSTOM_TITLE, R.layout.custom_title);
	if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.FinalCloseApplication(this);
	RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/PiratePreferencesScreen");
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
		menu.add(Menu.NONE, MenuType.WebHistory.ordinal(), MenuType.WebHistory.ordinal(), R.string.menu_web_history);
		menu.add(Menu.NONE, MenuType.Exit.ordinal(), MenuType.Exit.ordinal(), R.string.menu_exit);
	    RutrackerDownloaderApp.SetMenuBackground(this);
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
		case RESULT_DOWNLOADER:
		case RESULT_MAIN:
		case RESULT_EXIT:
			setResult(resultCode);
			finish();
			break;
		};		
	}
    	
  //Set the summaries of all preferences
  private void InitSummaries(PreferenceGroup pg) {
	  for (int i = 0; i < pg.getPreferenceCount(); ++i) {
		  Preference p = pg.getPreference(i);
		  if (p instanceof PreferenceGroup)
		  {	
			  String key = p.getKey();
			  if(key!= null && key.equals(RutrackerDownloaderApp.KEY_SEARCH_ON_SITE))
				  mPSSearchOnSite = (PreferenceScreen) p;			  
			  InitSummaries((PreferenceGroup) p); // recursion
		  }
		  else
			  SetSummary(p);
	  }
  }
  
  	private  String GetSearchString(Context context){
		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
		return preferences.getString(RutrackerDownloaderApp.KEY_SEARCH_STRING, "");																
	}
			
    
  //Set the summaries of the given preference
  private void SetSummary(Preference pref) {
   // react on type or key
   if(pref instanceof EditTextPreference) {
    	EditTextPreference editTextPreference = (EditTextPreference) pref;
    	editTextPreference.setSummary(getString(R.string.summary_edittext_current) + ": " + editTextPreference.getText()); 
    }
  }
  
  public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
	  Preference pref = findPreference(key);
	  SetSummary(pref);
  }
  
  private void CreatePirateSearchUrl()
  {
	  mString = new String();
	  RutrackerDownloaderApp.FeedUrl = RutrackerDownloaderApp.PirateFeedUrlPrefix;	  
	  
	  mString = GetSearchString(this);	  
	  	  
	  if(mString.length()>0){
		  RutrackerDownloaderApp.FeedUrl += "&search=";		  
			String enc_text = new String();
			try {
				enc_text = URLEncoder.encode(mString, "cp-1251");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			RutrackerDownloaderApp.FeedUrl += enc_text;
	  }
  	  Log.d(RutrackerDownloaderApp.TAG,RutrackerDownloaderApp.SearchUrl);
  }

  
  public void OnClickButtonPirateSearch(View v) {  
	  CreatePirateSearchUrl();
	  Intent intent = new Intent(Intent.ACTION_VIEW);
	  intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
	  intent.setClassName(this, MessageList.class.getName());
	  startActivityForResult(intent,0);
  }
    
}