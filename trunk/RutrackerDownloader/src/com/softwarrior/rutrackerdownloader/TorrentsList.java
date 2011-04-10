package com.softwarrior.rutrackerdownloader;

import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.CompoundButton.OnCheckedChangeListener;

import java.io.File;
import java.io.FileInputStream;

import java.util.ArrayList;

import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp.ActivityResultType;
//----------------------------------------------------------------------------------
class TorrentContainer{
    private String  mName = "Name";
    private long    mProgress = 0;
    private boolean mState = false;
    
    public TorrentContainer(String FileName){mName = FileName;}
    public TorrentContainer(String FileName, long progress){mName = FileName; mProgress = progress;}
    public void setState(boolean flag){mState=flag;}
    public String getName(){return mName;}
    public boolean getState(){return mState;}
    public long getProgress(){return mProgress;}     
}
//----------------------------------------------------------------------------------
public class TorrentsList extends ListActivity {
    static public ArrayList<TorrentContainer> Torrents = new ArrayList<TorrentContainer>();
    
    TorrentAdapter mAdapter;
    
    enum MenuType{
    	About, Help, Preferences, FileManager, Exit;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // Use a custom layout file
        setContentView(R.layout.torrentslist);

        final ListView listView = getListView();
        // Tell the list view which view to display when the list is empty
        listView.setEmptyView(findViewById(R.id.empty));
        listView.setItemsCanFocus(false);
        listView.setChoiceMode(ListView.CHOICE_MODE_MULTIPLE);
      
        listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
            public void onItemClick(AdapterView<?> parent, View view, int position, long id){
              TorrentContainer tc = Torrents.get(position);
              RutrackerDownloaderApp.TorrentFullFileName = tc.getName();
              RutrackerDownloaderApp.OpenTorrentDownloadActivity(TorrentsList.this);
              finish();
            }
        });        
        // Set up our adapter
        mAdapter = new TorrentAdapter(this);
        setListAdapter(mAdapter);        

        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
        RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/TorrentsList");
    }
    
    static public void AddTorrent(String FileName, long progress){
        if(FileName.equals("undefined"))
        	return;
    	for(int i=0;i<Torrents.size();i++){
    		TorrentContainer tc = Torrents.get(i);
    		if(tc.getName().equals(FileName))
    			return;
    	}
		try {
	    	File file = new File(FileName);
			FileInputStream input = new FileInputStream(file);
			input.close();
		} catch (Exception e){
			return;
		}
    	Torrents.add(new TorrentContainer(FileName, progress));
    }
    
    public void OnClickButtonAddTorrent(View v){
        RutrackerDownloaderApp.FileManagerActivity(this);
    }

    public void OnClickButtonRemoveTorrents(View v){
        Torrents.clear();
        mAdapter.notifyDataSetChanged();
    }

    @Override
    protected void onResume() {
        super.onResume();
        AddTorrent(RutrackerDownloaderApp.TorrentFullFileName,0);
        mAdapter.notifyDataSetChanged();
        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
    }
            
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch(ActivityResultType.getValue(resultCode))
        {
        case RESULT_DOWNLOADER:
        case RESULT_PREFERENCES:
        case RESULT_EXIT:
            setResult(resultCode);
            finish();
            break;
        };      
    }
    
    public class TorrentAdapter extends BaseAdapter {
        private LayoutInflater mInflater;
        private Context mContext;

        public TorrentAdapter(Context c) { 
            mContext = c;
            mInflater = (LayoutInflater)mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        }
        public int getCount(){ return Torrents.size(); }
        public Object getItem(int position) { return position;}
        public long getItemId(int position) { return position;}
        public View getView(int position, View convertView, ViewGroup parent) {
            View v = null;
            if( convertView != null )
                v = convertView;
            else
                v = mInflater.inflate(R.layout.torrent_row, parent, false);
            TextView tv_name = (TextView)v.findViewById( R.id.childname );
            TorrentContainer tc = Torrents.get(position);
            CheckBox cb = (CheckBox)v.findViewById( R.id.check1 );
            cb.setTag(tc);
            cb.setOnCheckedChangeListener(new OnCheckedChangeListener() {           
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                    TorrentContainer tc = (TorrentContainer)buttonView.getTag();
                    tc.setState(isChecked);
                }
            });
            if( tv_name != null )
                tv_name.setText( tc.getName() );
            if( cb != null )
                    cb.setChecked( tc.getState() );
            return v;
        }
    }
    
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		super.onCreateOptionsMenu(menu);
		menu.add(Menu.NONE, MenuType.About.ordinal(), MenuType.About.ordinal(), R.string.menu_about); 
		menu.add(Menu.NONE, MenuType.Help.ordinal(), MenuType.Help.ordinal(), R.string.menu_help); 
		menu.add(Menu.NONE, MenuType.Preferences.ordinal(), MenuType.Preferences.ordinal(), R.string.menu_preferences);
		menu.add(Menu.NONE, MenuType.FileManager.ordinal(), MenuType.FileManager.ordinal(), R.string.menu_file_manager);
		menu.add(Menu.NONE, MenuType.Exit.ordinal(), MenuType.Exit.ordinal(), R.string.menu_exit);
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
		case Preferences:{
			RutrackerDownloaderApp.PreferencesScreenActivity(this);
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
