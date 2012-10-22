package com.softwarrior.web;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ListActivity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.softwarrior.rutrackerdownloaderlite.*;
import com.softwarrior.rutrackerdownloaderlite.RutrackerDownloaderApp.ActivityResultType;
//----------------------------------------------------------------------------------
public class WebHistory extends ListActivity{
    static public ArrayList<WebHistoryContainer> WebHistories = new ArrayList<WebHistoryContainer>();
        
    static private WebHistoryAdapter mAdapter;
//    private SearchSiteName mActiveSite = SearchSiteName.getDefaultValue(); 
	TextView mRightText = null;
	TextView mLeftText = null;
	
	private static final int DIALOG_CLEAR_HISTORY = 44;

    enum MenuType{
    	About, Help, Main, FileManager, Exit;
    }

    static public class WebHistoryContainer{
    	public volatile String  DateTime = "";
    	public volatile String  Name = "";
    	public volatile String  Url = "";
    	public volatile String  Action = "";
        
        public WebHistoryContainer(String dateTime, String name, String url, String action){
        	DateTime = dateTime; Name = name; Url = url; Action = action;
        }
    }
    
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_CUSTOM_TITLE);

        // Use a custom layout file
        setContentView(R.layout.webhistorieslist);
        
        final ListView listView = getListView();
        // Tell the list view which view to display when the list is empty
        listView.setEmptyView(findViewById(R.id.empty));
      
        listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
            public void onItemClick(AdapterView<?> parent, View view, int position, long id){
              WebHistoryContainer whc = WebHistories.get(position);
        	  Bundle bundle = new Bundle();
        	  bundle.putString("LoadUrl", whc.Url);
        	  bundle.putString("Action", whc.Action);
        	  Intent intent = new Intent(Intent.ACTION_VIEW);
        	  intent.putExtras(bundle);
        	  intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
        	  intent.setClassName(WebHistory.this, TorrentWebClient.class.getName());
        	  startActivityForResult(intent,0);
        	  finish();
            }
        });        
        // Set up our adapter
        mAdapter = new WebHistoryAdapter(this);
        setListAdapter(mAdapter);        

        getWindow().setFeatureInt(Window.FEATURE_CUSTOM_TITLE, R.layout.custom_title);
        mRightText = (TextView) findViewById(R.id.right_text);
        mLeftText = (TextView) findViewById(R.id.left_text);
        mLeftText.setTextColor(getResources().getColor(R.color.gold));
        mLeftText.setTypeface(null,Typeface.BOLD);
        mRightText.setTextColor(getResources().getColor(R.color.gold));
        mRightText.setTypeface(null,Typeface.BOLD);
        
        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
        RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/WebHistory");
    }
  
    @Override
    protected void onResume() {
        super.onResume();
        mAdapter.notifyDataSetChanged();
//        mActiveSite = RutrackerDownloaderApp.GetSiteName(this);
//    	if(mLeftText!=null)
//    		mLeftText.setText(R.string.app_name); 
//    	if(mRightText!=null){
//            if(mActiveSite == SearchSiteName.PORNOLAB_NET)            	
//            	mRightText.setText(R.string.preferences_pornolab_title);
//            else if(mActiveSite == SearchSiteName.RUTRACKER_ORG)            	
//            	mRightText.setText(R.string.preferences_rutracker_title);
//            else if(mActiveSite == SearchSiteName.NNM_CLUB_RU)            	
//                	mRightText.setText(R.string.preferences_nnmclub_title);
//    	}
        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
    }
        
    static public void AddWebHistory(Context context, String name, String url, String action){
        if(url.length() < 3)
        	return;
    	for(int i=0;i<WebHistories.size();i++){
    		WebHistoryContainer tc = WebHistories.get(i);
    		if(tc.Url.equals(url)){
    	    	Date current_date = new Date();
    			DateFormat formatter = DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT);
    			String dateTime = formatter.format(current_date);
    			tc.Name = name;
    			tc.DateTime = dateTime; 
    			return;
    		}
    	}
    	Date current_date = new Date();
		DateFormat formatter = DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT);
		String dateTime = formatter.format(current_date);
    	WebHistories.add(new WebHistoryContainer(dateTime, name, url, action));
    	Toast.makeText(context, context.getString(R.string.web_history_stored), Toast.LENGTH_SHORT).show();
    }

    static public void AddWebHistory(String dateTime, String name, String url, String action){
        if(url.length() < 3)
        	return;
    	for(int i=0;i<WebHistories.size();i++){
    		WebHistoryContainer tc = WebHistories.get(i);
    		if(tc.Url.equals(url))
    			return;
    	}
    	WebHistories.add(new WebHistoryContainer(dateTime, name, url, action));    	
    }
    
    static private void RemoveWebHistory(String url){
    	for(int i=0;i<WebHistories.size();i++){
    		WebHistoryContainer tc = WebHistories.get(i);
    		if(tc.Url.equals(url)){
   				try {
   					Thread.sleep(10);
   				} catch (InterruptedException e) {
   					e.printStackTrace();
   				}
   				WebHistories.remove(i);
   		        mAdapter.notifyDataSetChanged();
    			return;
    		}
    	}
    }
                
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch(ActivityResultType.getValue(resultCode))
        {
        case RESULT_DOWNLOADER:
        case RESULT_MAIN:
        case RESULT_EXIT:
            setResult(resultCode);
            finish();
            break;
        };      
    }
    
    public class WebHistoryAdapter extends BaseAdapter {
        private LayoutInflater mInflater;
        private Context mContext;

        public WebHistoryAdapter(Context c) { 
            mContext = c;
            mInflater = (LayoutInflater)mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        }
        public int getCount(){ return WebHistories.size(); }
        public Object getItem(int position) { return position;}
        public long getItemId(int position) { return position;}
        public View getView(int position, View convertView, ViewGroup parent) {
            View v = null;
            if( convertView != null )
                v = convertView;
            else
                v = mInflater.inflate(R.layout.webhistory_row, parent, false);
            WebHistoryContainer tc = WebHistories.get(position);
            TextView tv_date_time = (TextView)v.findViewById( R.id.date_time );
            TextView tv_action = (TextView)v.findViewById( R.id.action );
            TextView tv_name = (TextView)v.findViewById( R.id.name );
            TextView tv_url = (TextView)v.findViewById( R.id.url );
            Button b_close = (Button)v.findViewById(R.id.button_menu);
//            if(mActiveSite == SearchSiteName.PORNOLAB_NET){
//            	if(tc.Url.contains(RutrackerDownloaderApp.RT_Site) ||
//            	   tc.Url.contains(RutrackerDownloaderApp.NN_Site)){
//            	   v.setClickable(true);
//            	   v.setBackgroundColor(Color.LTGRAY);
//            	}
//            }
//            else if(mActiveSite == SearchSiteName.NNM_CLUB_RU){
//            	if(tc.Url.contains(RutrackerDownloaderApp.RT_Site) ||
//                   tc.Url.contains(RutrackerDownloaderApp.PL_Site)){
//             	   v.setClickable(true);
//            	   v.setBackgroundColor(Color.LTGRAY);
//            	}
//            }
//            else if(mActiveSite == SearchSiteName.RUTRACKER_ORG){
//            	if(tc.Url.contains(RutrackerDownloaderApp.NN_Site) ||
//                   tc.Url.contains(RutrackerDownloaderApp.PL_Site)){
//             	   v.setClickable(true);
//            	   v.setBackgroundColor(Color.LTGRAY);
//            	}
//            }            
            if(b_close != null){
	            b_close.setTag(tc);
	            b_close.setOnClickListener(new OnClickListener() {			
					public void onClick(View v) {
						WebHistoryContainer whc = (WebHistoryContainer)v.getTag();
						RemoveWebHistory(whc.Url);
					}
	    		});
            }
            if(tv_date_time != null){
            	tv_date_time.setText(tc.DateTime);
            }
            if(tv_action != null){
            	String action = "";
            	if(tc.Action.equals("Show"))
            		action = getString(R.string.action_show);
            	else if(tc.Action.equals("Login"))
            		action = getString(R.string.action_login);
            	else if(tc.Action.equals("Search"))
            		action = getString(R.string.action_search);            	
            	else if(tc.Action.equals("SiteMap"))
            		action = getString(R.string.action_sitemap);
            	tv_action.setText(action);
            }
            if(tv_name != null){
            	tv_name.setText(tc.Name);
            }
            if(tv_url != null){
            	tv_url.setText(tc.Url);
            }
            return v;
        }
    }    
    public void OnClickButtonClearHistory(View v){
    	if(WebHistories.size() > 0)
    		showDialog(DIALOG_CLEAR_HISTORY);
    }
    @Override
    protected Dialog onCreateDialog(int id) {
        switch (id) {
        case DIALOG_CLEAR_HISTORY:
            return new AlertDialog.Builder(WebHistory.this)
                .setTitle(R.string.clear_history_dialog_title)
                .setPositiveButton(R.string.dialog_ok, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int whichButton) {
                    	while(WebHistories.size()>0){
    						WebHistoryContainer whc = WebHistories.get(0);
    						RemoveWebHistory(whc.Url);
                    	}    	
                        mAdapter.notifyDataSetChanged();
                    }
                }).setNegativeButton(R.string.dialog_cancel, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int whichButton) {
                        //User clicked Cancel so do some stuff
                    }
                }).create();
        }
        return null;
    }
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		super.onCreateOptionsMenu(menu);
		menu.add(Menu.NONE, MenuType.About.ordinal(), MenuType.About.ordinal(), R.string.menu_about); 
		menu.add(Menu.NONE, MenuType.Help.ordinal(), MenuType.Help.ordinal(), R.string.menu_help); 
		menu.add(Menu.NONE, MenuType.Main.ordinal(), MenuType.Main.ordinal(), R.string.menu_main);
		menu.add(Menu.NONE, MenuType.FileManager.ordinal(), MenuType.FileManager.ordinal(), R.string.menu_file_manager);
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
		case Main:{
			RutrackerDownloaderApp.MainScreen(this);
		} break;
		case FileManager:{
			RutrackerDownloaderApp.FileManagerActivity(this);
		} break;
		case Exit:{
			if(RutrackerDownloaderApp.DownloadServiceMode)
				RutrackerDownloaderApp.FinalCloseApplication(this);
			else
				RutrackerDownloaderApp.CloseApplication(this);
		} break;
		}
		return true;
	}
}
