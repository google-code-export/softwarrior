package com.softwarrior.rutrackerdownloader;

import com.softwarrior.rutrackerdownloader.R;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp;
import com.softwarrior.rutrackerdownloader.DownloadPreferencesScreen.MenuType;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp.ActivityResultType;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.Toast;

public class MainScreen extends Activity {	
	
		private int mBackPressedCount = 0;

	    @Override
	    public void onCreate(Bundle icicle) {
	        super.onCreate(icicle);
	        requestWindowFeature(Window.FEATURE_CUSTOM_TITLE);
	        
	        setContentView(R.layout.main_screen);
	        
	        getWindow().setFeatureInt(Window.FEATURE_CUSTOM_TITLE, R.layout.custom_title);

	        switch(RutrackerDownloaderApp.GetSiteName(this)){
		        case PORNOLAB_NET: RutrackerDownloaderApp.SetupPornolab(this); break;
		        case RUTRACKER_ORG: RutrackerDownloaderApp.SetupRutracker(this); break;
		        case NNM_CLUB_RU: RutrackerDownloaderApp.SetupNnmclub(this); break;
		        default: RutrackerDownloaderApp.SetupRutracker(this); break;
	        }	        
	        RutrackerDownloaderApp.DownloadServiceMode = false;        	        
	        RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/StartApplication");
	    }
	    
	    @Override
	    protected void onResume() {
	    	super.onResume();
	    	mBackPressedCount = 0;
	        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
	    }
	    				
	    @Override
		protected void onActivityResult(int requestCode, int resultCode, Intent data) {
			switch(ActivityResultType.getValue(resultCode))
			{
			case RESULT_DOWNLOADER:{
				RutrackerDownloaderApp.OpenDownloaderActivity(this);
			} break;
			case RESULT_MAIN:{			
			} break;
			case RESULT_EXIT:
				RutrackerDownloaderApp.FinalCloseApplication(this);
			default:{
			} break;
			};
		}
		
		@Override
		public boolean onCreateOptionsMenu(Menu menu) {
			super.onCreateOptionsMenu(menu);
			menu.add(Menu.NONE, MenuType.About.ordinal(), MenuType.About.ordinal(), R.string.menu_about); 
			menu.add(Menu.NONE, MenuType.Help.ordinal(), MenuType.Help.ordinal(), R.string.menu_help);
			menu.add(Menu.NONE, MenuType.FileManager.ordinal(), MenuType.FileManager.ordinal(), R.string.menu_file_manager);
			menu.add(Menu.NONE, MenuType.WebHistory.ordinal(), MenuType.WebHistory.ordinal(), R.string.menu_web_history);
			menu.add(Menu.NONE, MenuType.Exit.ordinal(), MenuType.Exit.ordinal(), R.string.menu_exit);			
		    RutrackerDownloaderApp.SetMenuBackground(this); 
			return true;
		}
		
		@Override
		public boolean onMenuItemSelected(int featureId, MenuItem item) {
			super.onMenuItemSelected(featureId, item);
			MenuType type = MenuType.values()[item.getItemId()];
			switch(type)
			{
			case About:{
				RutrackerDownloaderApp.AboutActivity(this);
			} break;
			case Help:{
				RutrackerDownloaderApp.HelpActivity(this);
			} break;
			case FileManager:{
				RutrackerDownloaderApp.FileManagerActivity(this);
			} break;
			case WebHistory:{
				RutrackerDownloaderApp.WebHistoryActivity(this);
			} break;
			case Exit:{
				RutrackerDownloaderApp.FinalCloseApplication(this);
			} break;
			}
			return true;
		}
		@Override 
		public boolean onKeyDown(int keyCode, KeyEvent event) {
			if(keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0)
	    		if(mBackPressedCount == 0){
	    			Toast.makeText(this, getString(R.string.press_back_to_exit), Toast.LENGTH_SHORT).show();
	    			mBackPressedCount++;
	    			return true;
	    		} else {
	    			RutrackerDownloaderApp.FinalCloseApplication(this);
	    		}
			return super.onKeyDown(keyCode,event); 
		}
						
		public void OnClickMainButtonDownload(View v){
			RutrackerDownloaderApp.OpenDownloaderActivity(this);			
		}
		public void OnClickMainButtonWebSearch(View v){
			RutrackerDownloaderApp.OpenWebPreferencesScreen(this);
		}
		public void OnClickMainButtonRSSSearch(View v){
			
		}
		public void OnClickMainButtonPirateSearch(View v){
			
		}
		public void OnClickMainButtonKinoafisha(View v){
			RutrackerDownloaderApp.OpenKinoafisha(this);
		}
		public void OnClickMainButtonSettings(View v){
			RutrackerDownloaderApp.OpenDownloadPreferencesScreen(this);			
		}
		
				
}
