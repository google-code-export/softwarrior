package com.softwarrior.rutrackerdownloaderdonate;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;

public class RutrackerDownloaderDonateApp extends Application  {

	@Override
	public void onCreate() {
		super.onCreate();		
		SharedPreferences settings = getSharedPreferences("RutrackerDownloader", Context.MODE_PRIVATE);
		SharedPreferences.Editor editor = settings.edit();
		editor.putString("Service", "yes");
		editor.commit();
	}
	
}