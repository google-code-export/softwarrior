package com.softwarrior.rutrackerdownloader;

import android.app.ListActivity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.CompoundButton.OnCheckedChangeListener;

import java.util.ArrayList;

public class TorrentsList extends ListActivity {

    TorrentAdapter mAdapter;

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

//      int size = listView.getAdapter().getCount();
//      for(int i=0; i<size; i++)
//      	listView.setItemChecked(i, true);
      
      listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
	    	public void onItemClick(AdapterView<?> parent, View view, int position, long id){
//	    		TorrentContainer tc = (TorrentContainer)listView.getItemAtPosition(position);	    		
	    	}
	  	});        
        // Set up our adapter
        mAdapter = new TorrentAdapter(this);
        setListAdapter(mAdapter);        
        // Wire up the clear button to remove all torrents
        Button clear = (Button) findViewById(R.id.clear);
        clear.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                mAdapter.clearTorrents();
            } });        
        // Wire up the add button to add a new torrent
        Button add = (Button) findViewById(R.id.add);
        add.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                mAdapter.addTorrent();
            } });
    }
    
    public class TorrentContainer{
    	private String  mName = "Name";
    	private boolean mState = false;
		
    	public void setState(boolean flag){mState=flag;}
		public String getName(){ return mName;}
		public boolean getState() { return mState;}		
    }
    //A simple adapter which maintains an ArrayList of photo resource Ids. 
    //Each photo is displayed as an image. This adapter supports clearing the
    //list of photos and adding a new photo.
    public class TorrentAdapter extends BaseAdapter {
        private ArrayList<TorrentContainer> mTorrents = new ArrayList<TorrentContainer>();        
    	private LayoutInflater mInflater;

        public TorrentAdapter(Context c) { 
        	mContext = c;
            mInflater = (LayoutInflater)mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        }
        public int getCount(){ return mTorrents.size(); }
        public Object getItem(int position) { return position;}
        public long getItemId(int position) { return position;}
        public View getView(int position, View convertView, ViewGroup parent) {
        	View v = null;
            if( convertView != null )
                v = convertView;
            else
            	v = mInflater.inflate(R.layout.torrent_row, parent, false);
            TextView tv_name = (TextView)v.findViewById( R.id.childname );
            TorrentContainer tc = mTorrents.get(position);
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

        private Context mContext;

        public void clearTorrents() {
            mTorrents.clear();
            notifyDataSetChanged();
        }        
        public void addTorrent() {
            mTorrents.add(new TorrentContainer());
            notifyDataSetChanged();
        }
    }
}
