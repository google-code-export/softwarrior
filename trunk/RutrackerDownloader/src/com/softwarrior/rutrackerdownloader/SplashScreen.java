package com.softwarrior.rutrackerdownloader;

import android.app.Activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;


public class SplashScreen extends Activity {

	SplashHandler mSplashHandler = null;
	Message mEndSplashMessage = null;
	int	mSplashTime = 1; //1 sec
           
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,WindowManager.LayoutParams.FLAG_FULLSCREEN);
    }
    
    @Override
    protected void onStart() {
    	super.onStart();
    	setContentView(R.layout.splash);
    	ImageView imageView = (ImageView)findViewById(R.id.ImageViewSplash);
    	imageView.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				mSplashHandler.removeMessages(mEndSplashMessage.what);
				finish();
			}
		});
    	mSplashHandler = new SplashHandler();
		mEndSplashMessage =  mSplashHandler.obtainMessage();
		mSplashHandler.sendMessageDelayed(mEndSplashMessage, mSplashTime * 1000);
    }
            
    private class SplashHandler extends Handler {	
	    @Override
		public void handleMessage(Message message) {
		   	Intent intent = new Intent(Intent.ACTION_VIEW);
		    intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
		  	intent.setClassName(getApplicationContext(), RutrackerDownloader.class.getName());
		    startActivity(intent);
	    	finish();
	    }
    }        
}