package com.softwarrior.cashpointviewer;

import android.app.Activity;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;

public class AboutActivity extends Activity {
    @Override
    public void onCreate(Bundle savedInstanceState) {
	super.onCreate(savedInstanceState);
	requestWindowFeature(Window.FEATURE_NO_TITLE);
	setContentView(R.layout.about);
	
	String strVersion = getString(R.string.version) + " ";
	try {
	    PackageInfo pi = getPackageManager().getPackageInfo(getPackageName(), 0);
	    strVersion += pi.versionName;
	} catch(PackageManager.NameNotFoundException e) {
	    Log.w(CashpointViewerApp.TAG, "Cannot get app version: " + e.toString());
	    strVersion += "?";
	}
	TextView tvVersion = (TextView)findViewById(R.id.TextViewVersionName);
	tvVersion.setText(strVersion);
//COMMENT
	
	LinearLayout layout = (LinearLayout)findViewById(R.id.LinearLayoutAbout);
	layout.setOnTouchListener(new View.OnTouchListener() {
	    @Override
	    public boolean onTouch(View v, MotionEvent event) {
		finish();
		return true;
	    }
	});
    }
}
