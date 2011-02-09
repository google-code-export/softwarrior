package com.softwarrior.rutrackerdownloader;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.view.KeyEvent;

import com.softwarrior.rss.MessageList;

import com.softwarrior.libtorrent.*;

public class RutrackerDownloader extends Activity {

	LibTorrent mLibTorrent =  new LibTorrent();
    
	String mSavePath   = Environment.getExternalStorageDirectory() + "/RutrackerDownloader";
    String mTorentFile = Environment.getExternalStorageDirectory() + "/RutrackerDownloader/download.torrent";
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
        intent.setClassName(this, MessageList.class.getName());
        startActivity(intent);
    }
    
    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {    	
    	boolean result = true;    
    	if(keyCode == KeyEvent.KEYCODE_MENU) {    		
    		mLibTorrent.StartDownload(mSavePath, mTorentFile,6881, 6889);    		
            result = true;
    	}
		if(keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0)
		{
			mLibTorrent.StopDownload();
			result = super.onKeyDown(keyCode,event);
		}
	  return result; 
    }    
}