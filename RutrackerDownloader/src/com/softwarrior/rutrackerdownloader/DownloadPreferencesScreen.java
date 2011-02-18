package com.softwarrior.rutrackerdownloader;

import android.app.NotificationManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Bundle;
import android.os.Process;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.CheckBoxPreference;
import android.preference.EditTextPreference;
import android.preference.PreferenceGroup;

import com.softwarrior.rutrackerdownloader.DownloadService.Controller.ControllerState;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp.*;

public final class DownloadPreferencesScreen extends PreferenceActivity
    implements OnSharedPreferenceChangeListener {

	public enum MenuType{
		About, Help, Exit;
	}
	  	
	public static final String KEY_XXX = "preferences_xxx"; 
	
	@Override
  protected void onCreate(Bundle icicle) {
    super.onCreate(icicle);
    startService(new Intent(this, DownloadService.class));
    addPreferencesFromResource(R.xml.download_preferences);
    InitSummaries(getPreferenceScreen());
    setContentView(R.layout.download_preferences);
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
		RutrackerDownloaderApp.ExitState = true;
		stopService(new Intent(this,DownloadService.class));
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
  
  public void OnClickButtonDownload(View v) {
	Intent intent = new Intent(Intent.ACTION_VIEW);
	intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
	intent.setClassName(this, DownloadService.Controller.class.getName());
	startActivityForResult(intent, 0);
  }    
}