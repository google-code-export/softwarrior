package com.softwarrior.rutrackerdownloader;

import com.softwarrior.rutrackerdownloader.DownloadService.Controller.ControllerState;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp.ActivityResultType;
import com.softwarrior.web.TorrentWebClient;

import android.app.NotificationManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.CheckBoxPreference;
import android.preference.EditTextPreference;
import android.preference.PreferenceGroup;

public final class WEBPreferencesScreen extends PreferenceActivity
    implements OnSharedPreferenceChangeListener {

	String mString = new String();

	public enum MenuType{
		About, Help, Exit;
	}
	
	//TITLE
	public static final String KEY_SEARCH_STRING = "preferences_search_string";

	@Override
  protected void onCreate(Bundle icicle) {
    super.onCreate(icicle);
    addPreferencesFromResource(R.xml.web_preferences);
    InitSummaries(getPreferenceScreen());
    setContentView(R.layout.preferences);
    if(RutrackerDownloaderApp.ExitState) CloseApplication();
  }
  
  @Override
  protected void onPause() {
	super.onPause();
	getPreferenceScreen().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this); 
  }
  
  @Override
  protected void onResume() {
	super.onResume();
	getPreferenceScreen().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
	if(RutrackerDownloaderApp.ExitState) CloseApplication();
  }
  
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		super.onCreateOptionsMenu(menu);
		menu.add(Menu.NONE, MenuType.About.ordinal(), MenuType.About.ordinal(), R.string.menu_about); 
		menu.add(Menu.NONE, MenuType.Help.ordinal(), MenuType.Help.ordinal(), R.string.menu_help); 
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
			AboutActivity();
		} break;
		case Help:{
			HelpActivity();
		} break;
		case Exit:{
			CloseApplication();
		} break;
		}
		return true;
	}

	private void AboutActivity(){
    }

    private void HelpActivity(){
    }

    @Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		switch(ActivityResultType.getValue(resultCode))
		{
		case RESULT_PREFERENCES:{			
		} break;
		case RESULT_EXIT:
			CloseApplication();
		default:{
		} break;
		};
	}
    
	@Override 
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		if(keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0)
			CloseApplication();
		return super.onKeyDown(keyCode,event); 
	}
	
	private void CloseApplication(){
		stopService(new Intent(getApplicationContext(),DownloadService.class));
		NotificationManager nm = (NotificationManager)getSystemService(NOTIFICATION_SERVICE);
 		nm.cancelAll();
    	SharedPreferences prefs = getSharedPreferences(DownloadService.Controller.class.getName(), MODE_PRIVATE);
    	SharedPreferences.Editor ed = prefs.edit();
        ed.putInt(ControllerState.class.getName(), ControllerState.Undefined.ordinal());
        ed.commit();
	  	moveTaskToBack(false);
	  	Process.killProcess(Process.myPid());
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

  private void CreateSearchUrl()
  {
	  mString = new String();

	  RutrackerDownloaderApp.SearchUrl = RutrackerDownloaderApp.SearchUrlPrefix;
	  
	  CreateSearchUrlRecursive(getPreferenceScreen());

	  if(mString.length()>0){
		  RutrackerDownloaderApp.SearchUrl += "?nm=";
		  RutrackerDownloaderApp.SearchUrl += mString;
	  }
  	  Log.d(RutrackerDownloaderApp.TAG,RutrackerDownloaderApp.SearchUrl);
  }
  
  private void CreateSearchUrlRecursive(PreferenceGroup pg) {
	  for (int i = 0; i < pg.getPreferenceCount(); ++i) {
		  Preference p = pg.getPreference(i);
		  if (p instanceof PreferenceGroup)
			  CreateSearchUrlRecursive((PreferenceGroup) p); // recursion
		  else 
			  SetSearchUrl(p);
	  }
  }

  private void SetSearchUrl(Preference pref)
  {
    if(pref instanceof EditTextPreference) {
    	EditTextPreference editTextPreference = (EditTextPreference) pref;
    	String text = editTextPreference.getText();		    	
    	if(text != null){
	    	if(text.length()>0){
	    		if(editTextPreference.getKey().equals(KEY_SEARCH_STRING)){
	    			mString = text;
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
	  CreateSearchUrl();
	  Bundle bundle = new Bundle();
	  bundle.putString("LoadUrl", RutrackerDownloaderApp.SearchUrl);
	  bundle.putString("Action", "Search");
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