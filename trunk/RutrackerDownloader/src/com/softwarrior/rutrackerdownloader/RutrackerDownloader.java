package com.softwarrior.rutrackerdownloader;

import android.app.Activity;

import android.content.Intent;

import android.os.Bundle;
import android.os.Environment;
import android.os.Message;
import android.os.Handler;
import android.os.Process;

import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

import android.widget.ImageView;

import com.softwarrior.rss.*;
import com.softwarrior.web.*;
import com.softwarrior.libtorrent.*;
import com.softwarrior.common.*;

public class RutrackerDownloader extends Activity {

	LibTorrent mLibTorrent =  new LibTorrent();
	
	String mSavePath   = Environment.getExternalStorageDirectory() + "/RutrackerDownloader";
    String mTorentFile = Environment.getExternalStorageDirectory() + "/RutrackerDownloader/download.torrent";
	    
    public enum ActionType{
    	ABOUT, HELP, PREFERENCES, EXIT;
    }

    public enum ActivityResultType{
    	UNDEFINED_ACTIVITY, PREFERENCES_ACTIVITY, RSS_ACTIVITY;
    }
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,WindowManager.LayoutParams.FLAG_FULLSCREEN);
        PreferencesActivity();
    }
                
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		ActivityResultType type = ActivityResultType.values()[requestCode];        
		switch(type)
		{
		case PREFERENCES_ACTIVITY:{
			Log.d(Constants.LOG_TAG, "onActivityResult PREFERENCES_ACTIVITY");
			RssActivity();
		} break;
		case RSS_ACTIVITY:
		{
			Log.d(Constants.LOG_TAG, "onActivityResult RSS_ACTIVITY");
			CloseApplication();
		} break;
		};
    }
        
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		super.onCreateOptionsMenu(menu);
		menu.add(Menu.NONE, ActionType.ABOUT.ordinal(), ActionType.ABOUT.ordinal(), R.string.menu_about);
		menu.add(Menu.NONE, ActionType.HELP.ordinal(), ActionType.HELP.ordinal(),R.string.menu_help);
		menu.add(Menu.NONE, ActionType.PREFERENCES.ordinal(), ActionType.PREFERENCES.ordinal(), R.string.menu_preferences);
		menu.add(Menu.NONE, ActionType.EXIT.ordinal(), ActionType.EXIT.ordinal(), R.string.menu_exit);
		return true;
	}
	
//  mLibTorrent.StartDownload(mSavePath, mTorentFile, 6881, 6889);
//  mLibTorrent.StopDownload();
	
	@Override
	public boolean onMenuItemSelected(int featureId, MenuItem item) {
		super.onMenuItemSelected(featureId, item);
		ActionType type = ActionType.values()[item.getItemId()];        
		switch(type)
		{
		case ABOUT:{
			AboutActivity();
		} break;
		case HELP:{
			HelpActivity();
		} break;
		case PREFERENCES:{
			PreferencesActivity();
		} break;
		case EXIT:{
		} break;
		}
		return true;
	}
	
    private void PreferencesActivity(){
    	Log.d(Constants.LOG_TAG, "PreferencesActivity");
	   	Intent intent = new Intent(Intent.ACTION_VIEW);
	    intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
	  	intent.setClassName(this, PreferencesScreen.class.getName());
	    startActivityForResult(intent,ActivityResultType.PREFERENCES_ACTIVITY.ordinal());
    }

    private void RssActivity(){
    	Log.d(Constants.LOG_TAG, "RssActivity");
	   	Intent intent = new Intent(Intent.ACTION_VIEW);
	    intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
	  	intent.setClassName(this, MessageList.class.getName());
	    startActivityForResult(intent,ActivityResultType.RSS_ACTIVITY.ordinal());
    }
    
    private void AboutActivity(){
    }

    private void HelpActivity(){
    }

    private void CloseApplication(){
    	moveTaskToBack(false);
    	Process.killProcess(Process.myPid());
    }

    
    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {    	
    	boolean result = true;    
    	if(keyCode == KeyEvent.KEYCODE_MENU) {    		
            result = super.onKeyDown(keyCode,event);
    	}
		if(keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0){
			result = super.onKeyDown(keyCode,event);
		}
		return result; 
    }        
}