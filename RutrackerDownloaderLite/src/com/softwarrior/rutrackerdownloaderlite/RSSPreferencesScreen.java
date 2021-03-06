package com.softwarrior.rutrackerdownloaderlite;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import com.softwarrior.rss.MessageList;
import com.softwarrior.web.TorrentWebClient;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.CheckBoxPreference;
import android.preference.EditTextPreference;
import android.preference.PreferenceGroup;

import com.softwarrior.rutrackerdownloaderlite.RutrackerDownloaderApp.*;

public final class RSSPreferencesScreen extends PreferenceActivity
    implements OnSharedPreferenceChangeListener {

	  String mType = new String();
	  String mDate = new String();
	  String mName = new String();

	 Button	mButtonSearch;
	 Button mButtonLogin;
	  
	public enum MenuType{
		About, Help, FileManager, Exit;
	}
	  	
	//http://feed.rutracker.org/atom/f/XX.atom
	//FILMS, VIDEO, TV
	public static final String KEY_VIDEO_FOREIGN_FILMS = "preferences_video_foreign_films"; //7
	public static final String KEY_VIDEO_RUSSIAN_FILMS = "preferences_video_russian_films"; //22
	public static final String KEY_VIDEO_AUTHORS_FILMS = "preferences_video_authors_films"; //124
	public static final String KEY_VIDEO_THEATRE = "preferences_video_theatre"; //511
	public static final String KEY_VIDEO_ANIMATIONS = "preferences_video_animations"; //4
	public static final String KEY_VIDEO_ANIMATION_SERIALS = "preferences_video_animation_serials"; //921
	public static final String KEY_VIDEO_ANIME = "preferences_video_anime"; //33
	//SERIALS
	public static final String KEY_SERIALS_FOREIGN = "preferences_serials_foreign"; //189
	public static final String KEY_SERIALS_RUSSIAN = "preferences_serials_russian"; //9
	//AUDIOBOOKS
	public static final String KEY_AUDIOBOOKS_AUDIOBOOKS = "preferences_audiobooks_audiobooks";	//401,402,399
	//MUSIC
	public static final String KEY_MUSIC_CLASSIC = "preferences_music_classic"; //436,969
	public static final String KEY_MUSIC_POPE_DANCE = "preferences_music_pope_dance"; //428
	//TITLE
	public static final String KEY_SEARCH_YEAR = "preferences_search_year";
	public static final String KEY_SEARCH_NAME = "preferences_search_name";

	
	@Override
  protected void onCreate(Bundle icicle) {
    super.onCreate(icicle);
    addPreferencesFromResource(R.xml.rss_preferences);
    InitSummaries(getPreferenceScreen());
    setContentView(R.layout.preferences);
	mButtonSearch = (Button)findViewById(R.id.ButtonSearch);
	mButtonLogin = (Button)findViewById(R.id.ButtonLogin);
    if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.FinalCloseApplication(this);
	RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/RSSPreferencesScreen");
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
    if(SiteChoice.GetSite(this) == SiteChoice.SiteType.RUTRACKER) {
    	getPreferenceScreen().setEnabled(true);
    	mButtonSearch.setEnabled(true);
    	mButtonLogin.setEnabled(true);    	
    } else{
    	getPreferenceScreen().setEnabled(false);
    	mButtonSearch.setEnabled(false);
    	mButtonLogin.setEnabled(false);
        Toast.makeText(this, R.string.rss_disable,Toast.LENGTH_SHORT).show();
    }
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
		  if (p instanceof PreferenceGroup)
			  InitSummaries((PreferenceGroup) p); // recursion
		  else
			  SetSummary(p);
	  }
  }

  private void CreateFeedUrl()
  {
	  mType = new String();
	  mDate = new String();
	  mName = new String();
	  
	  RutrackerDownloaderApp.FeedUrl = RutrackerDownloaderApp.FeedUrlPrefix;

	  CreateFeedUrlRecursive(getPreferenceScreen());

	  if(mType.length()>0){
		  mType = mType.substring(0, mType.length() -1);
		  RutrackerDownloaderApp.FeedUrl += "&type=";
		  RutrackerDownloaderApp.FeedUrl += mType;
	  }
  	  if(mDate.length()>0){
		  RutrackerDownloaderApp.FeedUrl += "&date=";
		  RutrackerDownloaderApp.FeedUrl += mDate;
  	  }
  	  if(mName.length()>0){
  		  	RutrackerDownloaderApp.FeedUrl += "&name=";
			String enc_text = new String();
			try {
				enc_text = URLEncoder.encode(mName, "cp-1251");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			RutrackerDownloaderApp.FeedUrl += enc_text;
  	  }
  	  Log.d(RutrackerDownloaderApp.TAG,RutrackerDownloaderApp.FeedUrl);
  }
  
  private void CreateFeedUrlRecursive(PreferenceGroup pg) {
	  for (int i = 0; i < pg.getPreferenceCount(); ++i) {
		  Preference p = pg.getPreference(i);
		  if (p instanceof PreferenceGroup)
			  CreateFeedUrlRecursive((PreferenceGroup) p); // recursion
		  else 
			  SetFeedUrl(p);
	  }
  }

  private void SetFeedUrl(Preference pref)
  {
    if (pref instanceof CheckBoxPreference) {
    	CheckBoxPreference checkBoxPreference = (CheckBoxPreference) pref;
    	if(checkBoxPreference.isChecked())
    	{
    		mType += checkBoxPreference.getKey().replace("preferences_", "");
    		mType += ",";
    	}
    }
    else if(pref instanceof EditTextPreference) {
    	EditTextPreference editTextPreference = (EditTextPreference) pref;
    	String text = editTextPreference.getText();		    	
    	if(text != null){
	    	if(text.length()>0){
	    		if(editTextPreference.getKey().equals(KEY_SEARCH_YEAR)){
	    			mDate = text;
	    		}
	    		if(editTextPreference.getKey().equals(KEY_SEARCH_NAME)){
	    			mName = text;
	    		}		    			
	    	}
    	}
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
  }
  
  public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
	  Preference pref = findPreference(key);
	  SetSummary(pref);
  }
  
  public void OnClickButtonSearch(View v) {
	  CreateFeedUrl();
	  Intent intent = new Intent(Intent.ACTION_VIEW);
	  intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
	  intent.setClassName(this, MessageList.class.getName());
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