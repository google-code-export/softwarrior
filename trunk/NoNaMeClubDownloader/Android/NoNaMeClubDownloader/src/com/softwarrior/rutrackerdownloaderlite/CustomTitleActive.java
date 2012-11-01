package com.softwarrior.rutrackerdownloaderlite;

import com.softwarrior.rutrackerdownloaderlite.R;
import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;

public class CustomTitleActive extends Activity {
	protected TextView m_RightText;
	protected TextView m_LeftText;
	
	public void OnClickHomeHandler(View v){
		DownloaderApp.MainScreen(this);
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	        requestWindowFeature(Window.FEATURE_CUSTOM_TITLE);
	        setContentView(R.layout.custom_title_screen);
	        getWindow().setFeatureInt(Window.FEATURE_CUSTOM_TITLE, R.layout.custom_title);
	        m_RightText = (TextView)findViewById(R.id.right_text);
	        m_LeftText = (TextView)findViewById(R.id.left_text);
	}
}