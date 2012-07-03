package com.softwarrior.rutrackerdownloader;

import com.softwarrior.rutrackerdownloader.R;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.Window;

public class ProgramsScreen extends Activity {	

	    @Override
	    public void onCreate(Bundle icicle) {
	        super.onCreate(icicle);
	        requestWindowFeature(Window.FEATURE_CUSTOM_TITLE);	        
	        setContentView(R.layout.programs_screen);	        
	        getWindow().setFeatureInt(Window.FEATURE_CUSTOM_TITLE, R.layout.custom_title);
	        RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/ProgramsScreen");
	    }

	    public void OnClickMainButtonProg1(View v){
	    	Intent browserIntent = new Intent(Intent.ACTION_VIEW, Uri.parse("https://play.google.com/store/apps/details?id=com.softwarrior.kingsandemperorsofrussia"));
	    	startActivity(browserIntent);
		}
	    public void OnClickMainButtonProg2(View v){
	    	Intent browserIntent = new Intent(Intent.ACTION_VIEW, Uri.parse("http://www.softwarrior.org/AdultVideo/Android/AdultVideo.apk"));
	    	startActivity(browserIntent);
		}				

}
