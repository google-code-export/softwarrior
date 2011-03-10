package com.softwarrior.rutrackerdownloader;

import java.util.ArrayList;

import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp.ActivityResultType;

import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CheckedTextView;
import android.widget.ListView;

public class TorrentFilesList extends ListActivity {
    
    private static ArrayList<String> mTorrentFiles = new ArrayList<String>(1);
    public static ArrayList<Byte> TorrentFilesPriority = new ArrayList<Byte>(1);
    
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
         
        int count = mTorrentFiles.size();
	    String[] files = new String[count];
	    for(int i=0;i<count;i++) files[i] = (String)mTorrentFiles.get(i);	                   
                        
        setListAdapter(new ArrayAdapter<String>(this, R.layout.list_item_multiple_choice, files));
        
        final ListView listView = getListView();
        listView.setItemsCanFocus(false);
        listView.setChoiceMode(ListView.CHOICE_MODE_MULTIPLE);
        

	  	listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
	    	public void onItemClick(AdapterView<?> parent, View view, int position, long id){
	    		//0 - piece is not downloaded at all
				//1 - normal priority. Download order is dependent on availability				
				CheckedTextView ctv = (CheckedTextView)view;				
				byte priority = 0;	    		
	    		if(ctv.isChecked())
	    			priority = 1;	    			
	    		TorrentFilesPriority.set(position, priority);
	    	}
	  	});

        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
	    RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/TorrentFilesList");
    }
    
    static public void FillTorrentFiles(String torrentFiles){
    	if( torrentFiles!= null){
	    	mTorrentFiles.clear();
	    	TorrentFilesPriority.clear();
	    	int last_index = 0;
	    	int current_index = torrentFiles.indexOf('\n',0);  
	    	while(current_index > 0 ){
	    		String filename = torrentFiles.substring(last_index, current_index);
	    		mTorrentFiles.add(filename);
	    		TorrentFilesPriority.add((byte)1);
	    		last_index = current_index+1; 
	    		current_index = torrentFiles.indexOf('\n',last_index);
	    	}
	    }
    }
    
    @Override
    protected void onResume() {
    	super.onResume();
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
}
