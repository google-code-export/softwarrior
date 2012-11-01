package com.softwarrior.rutrackerdownloaderlite;

import android.app.Activity;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.util.Log;

public class FullWakeActivity extends Activity {
    private WakeLock mWakeLock;
    
    @Override
    public void onCreate(Bundle savedInstanceState) {
	super.onCreate(savedInstanceState);
	
	PowerManager pm = (PowerManager)getSystemService(POWER_SERVICE);
	mWakeLock = pm.newWakeLock(PowerManager.FULL_WAKE_LOCK
		| PowerManager.ACQUIRE_CAUSES_WAKEUP, "SHARED");
	mWakeLock.setReferenceCounted(false);
    }
    
    @Override
    protected void onDestroy() {
	if(mWakeLock.isHeld()) {
	    Log.w(DownloaderApp.TAG, "WakeLock is still held");
	    mWakeLock.release();
	}
	super.onDestroy();
    }
    
    @Override
    protected void onResume() {
	super.onResume();
	mWakeLock.acquire();
    }
    
    @Override
    protected void onPause() {
	mWakeLock.release();
	super.onPause();
    }
}
