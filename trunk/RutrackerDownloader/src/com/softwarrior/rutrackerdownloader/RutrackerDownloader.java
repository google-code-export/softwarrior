package com.softwarrior.rutrackerdownloader;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import com.softwarrior.rss.*;
import com.softwarrior.web.*;
import com.softwarrior.libtorrent.*;

public class RutrackerDownloader extends Activity {

	LibTorrent mLibTorrent =  new LibTorrent();
    
	String mSavePath   = Environment.getExternalStorageDirectory() + "/RutrackerDownloader";
    String mTorentFile = Environment.getExternalStorageDirectory() + "/RutrackerDownloader/download.torrent";
	
    
    public enum ActionType{
    	RSS, WEB, START, STOP;
    }
    
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
		
        
		Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
        intent.setClassName(this, TorrentWebClient.class.getName());
        startActivity(intent);

//        Intent intent = new Intent(Intent.ACTION_VIEW);
//        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
//        intent.setClassName(this, TorrentHttpPost.class.getName());
//        startActivity(intent);

    }

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		super.onCreateOptionsMenu(menu);
		menu.add(Menu.NONE, ActionType.RSS.ordinal(), ActionType.RSS.ordinal(), R.string.menu_rss);
		menu.add(Menu.NONE, ActionType.WEB.ordinal(), ActionType.WEB.ordinal(),R.string.menu_web);
		menu.add(Menu.NONE, ActionType.START.ordinal(), ActionType.START.ordinal(), R.string.menu_start);
		menu.add(Menu.NONE, ActionType.STOP.ordinal(), ActionType.STOP.ordinal(), R.string.menu_stop);
		return true;
	}

	@SuppressWarnings("unchecked")
	@Override
	public boolean onMenuItemSelected(int featureId, MenuItem item) {
		super.onMenuItemSelected(featureId, item);
		ActionType type = ActionType.values()[item.getItemId()];
        
		switch(type)
		{
		case RSS:{
			Intent intent = new Intent(Intent.ACTION_VIEW);
	        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
			intent.setClassName(this, MessageList.class.getName());
	        startActivity(intent);
		} break;
		case WEB:{
			Intent intent = new Intent(Intent.ACTION_VIEW);
	        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
	        intent.setClassName(this, TorrentWebClient.class.getName());
	        startActivity(intent);
		} break;
		case START:{
			mLibTorrent.StartDownload(mSavePath, mTorentFile, 6881, 6889);
		} break;
		case STOP:{
			mLibTorrent.StopDownload();
		} break;
		}
		return true;
	}
    
    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {    	
    	boolean result = true;    
    	if(keyCode == KeyEvent.KEYCODE_MENU) {    		
            result = super.onKeyDown(keyCode,event);
    	}
		if(keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0)
		{
			mLibTorrent.StopDownload();
			result = super.onKeyDown(keyCode,event);
		}
	  return result; 
    }    
}