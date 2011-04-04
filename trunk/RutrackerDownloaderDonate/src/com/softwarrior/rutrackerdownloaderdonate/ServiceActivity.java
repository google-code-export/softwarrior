package com.softwarrior.rutrackerdownloaderdonate;

import android.app.Activity;
import android.os.Bundle;

public class ServiceActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		System.setProperty("ServiceActivity","yes");
		finish();
	}
}
