package com.softwarrior.rutrackerdownloaderlite;

import com.softwarrior.rutrackerdownloaderlite.R;
import com.softwarrior.rutrackerdownloaderlite.DownloaderApp;
import com.softwarrior.rutrackerdownloaderlite.DownloadPreferencesScreen.MenuType;
import com.softwarrior.rutrackerdownloaderlite.DownloaderApp.ActivityResultType;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;

public class MainScreen extends CustomTitleActive {	
	
		private int mBackPressedCount = 0;

	    @Override
	    public void onCreate(Bundle icicle) {
	        super.onCreate(icicle);
	        //requestWindowFeature(Window.FEATURE_CUSTOM_TITLE);	        
	        setContentView(R.layout.main_screen);        
	        //getWindow().setFeatureInt(Window.FEATURE_CUSTOM_TITLE, R.layout.custom_title);

	        switch(DownloaderApp.GetSiteName(this)){
		        case PORNOLAB_NET: DownloaderApp.SetupPornolab(this); break;
		        case RUTRACKER_ORG: DownloaderApp.SetupRutracker(this); break;
		        case NNM_CLUB_RU: DownloaderApp.SetupNnmclub(this); break;
		        default: DownloaderApp.SetupRutracker(this); break;
	        }	        
	        DownloaderApp.DownloadServiceMode = false;        	        
	        DownloaderApp.AnalyticsTracker.trackPageView("/StartApplication");
	    }
	    
	    @Override
	    protected void onResume() {
	    	super.onResume();
	    	mBackPressedCount = 0;
	        if(DownloaderApp.ExitState) DownloaderApp.CloseApplication(this);
	    }
	    				
	    @Override
		protected void onActivityResult(int requestCode, int resultCode, Intent data) {
			switch(ActivityResultType.getValue(resultCode))
			{
			case RESULT_DOWNLOADER:{
				DownloaderApp.OpenDownloaderActivity(this);
			} break;
			case RESULT_MAIN:{			
			} break;
			case RESULT_EXIT:
				DownloaderApp.FinalCloseApplication(this);
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
		    DownloaderApp.SetMenuBackground(this); 
			return true;
		}
		
		@Override
		public boolean onMenuItemSelected(int featureId, MenuItem item) {
			super.onMenuItemSelected(featureId, item);
			MenuType type = MenuType.values()[item.getItemId()];
			switch(type)
			{
			case About:{
				DownloaderApp.AboutActivity(this);
			} break;
			case Help:{
				DownloaderApp.HelpActivity(this);
			} break;
			case FileManager:{
				DownloaderApp.FileManagerActivity(this);
			} break;
			case WebHistory:{
				DownloaderApp.WebHistoryActivity(this);
			} break;
			case Exit:{
				DownloaderApp.FinalCloseApplication(this);
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
	    			DownloaderApp.FinalCloseApplication(this);
	    		}
			return super.onKeyDown(keyCode,event); 
		}
						
		public void OnClickMainButtonDownload(View v){
			DownloaderApp.OpenDownloaderActivity(this);			
		}
		public void OnClickMainButtonWebSearch(View v){
			DownloaderApp.OpenWebPreferencesScreen(this);
		}
		public void OnClickMainButtonRSSSearch(View v){
			DownloaderApp.OpenRSSPreferencesScreen(this);
		}
		public void OnClickMainButtonPirateSearch(View v){
			DownloaderApp.OpenPiratePreferencesScreen(this);
		}
		public void OnClickMainButtonKinoafisha(View v){
			DownloaderApp.OpenKinoafisha(this);
		}
		public void OnClickMainButtonSettings(View v){
			DownloaderApp.OpenDownloadPreferencesScreen(this);			
		}
}
