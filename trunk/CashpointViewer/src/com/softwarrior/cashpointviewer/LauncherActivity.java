package com.softwarrior.cashpointviewer;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;

public class LauncherActivity  extends FullWakeActivity {
    @Override
    public void onCreate(Bundle savedInstanceState) {
    	super.onCreate(savedInstanceState);
    	requestWindowFeature(Window.FEATURE_NO_TITLE);
    }
	
    @Override
    protected void onStart() {
    	super.onStart();
	
    	setContentView(R.layout.splash);
    	ImageView iv = (ImageView)findViewById(R.id.ImageViewSplash);

    	String storagePath = getResources().getString(R.string.storage_path);
    	String splashFileName = DebugOptions.getInstance().getSplashFile();
    	String splashPath = storagePath + "/" + splashFileName; 
    	Bitmap bmp = BitmapFactory.decodeFile(splashPath);
    	if(bmp != null)
    		iv.setImageBitmap(bmp);
    	else
    		iv.setImageDrawable(getResources().getDrawable(R.drawable.splash_default));
	
    	int splashTime = DebugOptions.getInstance().getSplashTime();
    	if(splashTime < 0) {
	    //Show until tapped
    		iv.setOnClickListener(new View.OnClickListener() {
    		@Override
    		public void onClick(View v) {
    			chooseLayers();
    		}
    		});
    	} else if(splashTime > 0) {
	    //Show for the specified amount of time
    		SplashHandler handler = new SplashHandler();
    		Message m = handler.obtainMessage();
    		handler.sendMessageDelayed(m, splashTime * 1000);
    	} else
    		chooseLayers();
    	}
    
    private void chooseLayers() {
    	setContentView(R.layout.launcher);
    	Intent intent = new Intent(this,ChooseLayersActivity.class);
    	intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
    	startActivityForResult(intent, 0);
    }
    
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
    	Log.d(CashpointViewerApp.TAG, "LauncherActivity.onActivityResult() called, killing app");
    	moveTaskToBack(false);
    	Process.killProcess(Process.myPid());
    }
    
    private class SplashHandler extends Handler {
		@Override
		public void handleMessage(Message message) {
		    setContentView(R.layout.launcher);
		    Intent intent = new Intent(LauncherActivity.this,ChooseLayersActivity.class);
		    intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
		    startActivityForResult(intent,0);
		}
    }
}
