package com.softwarrior.rutrackerdownloader;

import android.app.ExpandableListActivity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.CheckBox;
import android.widget.ExpandableListView;
import android.widget.TextView;
import java.util.ArrayList;
import android.util.Log;

public class TorrentFilesExList extends ExpandableListActivity {
    private TorrentFileAdapter mExpListAdapter;

    private static ArrayList<String> mTorrentFiles = new ArrayList<String>(1);
    public static ArrayList<Byte> TorrentFilesPriority = new ArrayList<Byte>(1);
    
    String TORRENT_FILES = new String(
    		"CROT\\01_10_01.mp3\n" +
    		"CROT\\02_10_01.mp3\n" +
    		"CROT\\1980\04\03_10_01.mp3\n" +
    		"CROT\\03_10_01.mp3\n" +
    		"TORT\\01_10_01.mp3\n" +
    		"TORT\\1977\01_10_01.mp3\n" +
    		"TORT\\02_10_01.mp3\n" +
    		"TORT\\03_10_01.mp3\n" +
    		"TORT\\04_10_01.mp3\n" +
    		"COMPOT\\01_10_01.mp\n" +
    		"COMPOT\\2010\01\01_10_01.mp3\n"+
    		"COMPOT\\02_10_01.mp3\n"
    );

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
    public void onCreate(Bundle icicle){
        super.onCreate(icicle);
        setContentView(R.layout.expandable_list);
        FillTorrentFiles(TORRENT_FILES);
        
        ArrayList<String> groupNames = new ArrayList<String>();
        groupNames.add( "CROT" );
	    groupNames.add( "TORT" );
	    groupNames.add( "COMPOT" );
        
	    ArrayList<ArrayList<TorrentFile>> tfiles = new ArrayList<ArrayList<TorrentFile>>(); 
        ArrayList<TorrentFile> tfile = new ArrayList<TorrentFile>();
        tfile.add( new TorrentFile( "CROT\\01_10_01.mp3", 1, true ) ); 
        tfile.add( new TorrentFile( "CROT\\02_10_01.mp3", 2, true ) ); 
        tfile.add( new TorrentFile( "CROT\\03_10_01.mp3", 3, true ) );
        tfiles.add( tfile );
        tfile = new ArrayList<TorrentFile>();
        tfile.add( new TorrentFile( "TORT\\01_10_01.mp3", 4, true ) );
        tfile.add( new TorrentFile( "TORT\\02_10_01.mp3", 5, true ) ); 
        tfile.add( new TorrentFile( "TORT\\03_10_01.mp3", 6, true ) );
        tfile.add( new TorrentFile( "TORT\\04_10_01.mp3", 7, true ) );
        tfiles.add( tfile );
        tfile = new ArrayList<TorrentFile>();
        tfile.add( new TorrentFile( "COMPOT\\01_10_01.mp3", 8, true ) );
        tfile.add( new TorrentFile( "COMPOT\\02_10_01.mp3", 9, true ) );
        tfiles.add( tfile );

		mExpListAdapter = new TorrentFileAdapter( this,groupNames, tfiles );
		setListAdapter( mExpListAdapter );
    }

    public void onContentChanged  () {
        super.onContentChanged();
        Log.d(RutrackerDownloaderApp.TAG, "onContentChanged" );
    }

    public boolean onChildClick( ExpandableListView parent, View v, int groupPosition, int childPosition, long id) {
        Log.d(RutrackerDownloaderApp.TAG, "onChildClick: "+childPosition );
        CheckBox cb = (CheckBox)v.findViewById( R.id.check1 );
        if( cb != null )
            cb.toggle();
        return false;
    }
}

class TorrentFile {
    String  mName = null;
    int     mNumber = -1;
    boolean mState = false;

    public TorrentFile( String name, int number, boolean state ) { mName = name; mNumber = number; mState = state;}

    public String getName() { return mName;}
    public int getNumber() { return mNumber;}
    public boolean getState() { return mState; }
}

class TorrentFileAdapter extends BaseExpandableListAdapter {

    ArrayList<String> mGroups;
    ArrayList<ArrayList<TorrentFile>> mTfiles;
    LayoutInflater mInflater;

    public TorrentFileAdapter(Context context, ArrayList<String> groups, ArrayList<ArrayList<TorrentFile>> tfiles ) { 
		mGroups = groups;
        mTfiles = tfiles;
        mInflater = LayoutInflater.from( context );
    }

    public Object getChild(int groupPosition, int childPosition) {
        return mTfiles.get( groupPosition ).get( childPosition );
    }

    public long getChildId(int groupPosition, int childPosition) {
        return (long)( groupPosition*2048+childPosition );  // Max 2048 children per group
    }

    public View getChildView(int groupPosition, int childPosition, boolean isLastChild, View convertView, ViewGroup parent) {
        View v = null;
        if( convertView != null )
            v = convertView;
        else
            v = mInflater.inflate(R.layout.child_row, parent, false); 
        TorrentFile tfile = (TorrentFile)getChild( groupPosition, childPosition );
		TextView tfile_name = (TextView)v.findViewById( R.id.childname );
		if( tfile_name != null )
			tfile_name.setText( tfile.getName() );
		CheckBox cb = (CheckBox)v.findViewById( R.id.check1 );
        cb.setChecked( tfile.getState() );
        return v;
    }
    public int getChildrenCount(int groupPosition) {
        return mTfiles.get( groupPosition ).size();
    }
    public Object getGroup(int groupPosition) {
        return mGroups.get( groupPosition );        
    }
    public int getGroupCount() {
        return mTfiles.size();
    }
    public long getGroupId(int groupPosition) { 
    	return (long)( groupPosition*2048 );  // To be consistent with getChildId  
    }
    public View getGroupView(int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
        View v = null;
        if( convertView != null )
            v = convertView;
        else
            v = mInflater.inflate(R.layout.group_row, parent, false); 
        String gt = (String)getGroup( groupPosition );
		TextView group = (TextView)v.findViewById( R.id.childname );
		if( gt != null )
			group.setText( gt );
        return v;
    }
    public boolean hasStableIds() {return true;} 
    public boolean isChildSelectable(int groupPosition, int childPosition) {return true;} 
    public void onGroupCollapsed (int groupPosition) {} 
    public void onGroupExpanded(int groupPosition) {}
}


/*
import android.app.ExpandableListActivity;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.Gravity;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ContextMenu.ContextMenuInfo;
import android.widget.AbsListView;
import android.widget.BaseExpandableListAdapter;
import android.widget.CheckedTextView;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ExpandableListView.ExpandableListContextMenuInfo;

public class TorrentFilesExList extends ExpandableListActivity {

    ExpandableListAdapter mAdapter;
    public static final int CHILDREN = 3;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Set up our adapter
        mAdapter = new MyExpandableListAdapter();
        setListAdapter(mAdapter);
        registerForContextMenu(getExpandableListView());
        
		final ExpandableListView listView = getExpandableListView();
		listView.setItemsCanFocus(false);
		listView.setChoiceMode(ExpandableListView.CHOICE_MODE_MULTIPLE);
		OnChildClickListener cl = new OnChildClickListener(){
			public boolean onChildClick(ExpandableListView parent, View v,int groupPosition, int childPosition, long id) {
					int position = groupPosition*(CHILDREN + 1) + childPosition + 1;
					if(getExpandableListView().isItemChecked(position) ){
							getExpandableListView().setItemChecked(position, false);
					}else{
							getExpandableListView().setItemChecked(position, true);
					}
					Toast.makeText(TorrentFilesExList.this,
					"groupPosition:"+
					groupPosition
					+ "childPosition:" +
					childPosition
					+ "id:" +
					id
					+ "position:" +
					position
					+ "is checked? " +
					getExpandableListView().isItemChecked(position), 
					Toast.LENGTH_SHORT).show();

					return false;
				}
		};		
		listView.setOnChildClickListener(cl);
    }

    @Override 
    public boolean onChildClick(ExpandableListView parent, View v, int  groupPosition, int childPosition, long id) 
    { 
           CheckedTextView tempView = (CheckedTextView)v.findViewById (android.R.id.text1); 
           tempView.setChecked(!tempView.isChecked()); 
           return super.onChildClick(parent, v, groupPosition,childPosition, id); 
    } 
    
    @Override
    public void onCreateContextMenu(ContextMenu menu, View v, ContextMenuInfo menuInfo) {
        menu.setHeaderTitle("Sample menu");
        menu.add(0, 0, 0, "Hello");
    }
    
    @Override
    public boolean onContextItemSelected(MenuItem item) {
        ExpandableListContextMenuInfo info = (ExpandableListContextMenuInfo) item.getMenuInfo();

        String title = ((TextView) info.targetView).getText().toString();
        
        int type = ExpandableListView.getPackedPositionType(info.packedPosition);
        if (type == ExpandableListView.PACKED_POSITION_TYPE_CHILD) {
            int groupPos = ExpandableListView.getPackedPositionGroup(info.packedPosition); 
            int childPos = ExpandableListView.getPackedPositionChild(info.packedPosition); 
            Toast.makeText(this, title + ": Child " + childPos + " clicked in group " + groupPos,
                    Toast.LENGTH_SHORT).show();
            return true;
        } else if (type == ExpandableListView.PACKED_POSITION_TYPE_GROUP) {
            int groupPos = ExpandableListView.getPackedPositionGroup(info.packedPosition); 
            Toast.makeText(this, title + ": Group " + groupPos + " clicked", Toast.LENGTH_SHORT).show();
            return true;
        }
        
        return false;
    }

     //A simple adapter which maintains an ArrayList of photo resource Ids. 
     //Each photo is displayed as an image. This adapter supports clearing the
     //list of photos and adding a new photo.
    public class MyExpandableListAdapter extends BaseExpandableListAdapter {
        // Sample data set.  children[i] contains the children (String[]) for groups[i].
        private String[] groups = { "People Names", "Dog Names", "Cat Names", "Fish Names" };
        private String[][] children = {
                { "Arnold", "Barry", "Chuck", "David" },
                { "Ace", "Bandit", "Cha-Cha", "Deuce" },
                { "Fluffy", "Snuggles" },
                { "Goldy", "Bubbles" }
        };
        
        public Object getChild(int groupPosition, int childPosition) {
            return children[groupPosition][childPosition];
        }

        public long getChildId(int groupPosition, int childPosition) {
            return childPosition;
        }

        public int getChildrenCount(int groupPosition) {
            return children[groupPosition].length;
        }

        public CheckedTextView getGenericView() {
            // Layout parameters for the ExpandableListView
            AbsListView.LayoutParams lp = new AbsListView.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, 64);

            CheckedTextView textView = new CheckedTextView(TorrentFilesExList.this);
            textView.setLayoutParams(lp);
            // Center the text vertically
            textView.setGravity(Gravity.CENTER_VERTICAL | Gravity.LEFT);
            // Set the text starting position
            textView.setPadding(36, 0, 0, 0);
            //textView.setCheckMark(android.R.attr.listChoiceIndicatorMultiple);
            return textView;
        }
        
        public View getChildView(int groupPosition, int childPosition, boolean isLastChild,
                View convertView, ViewGroup parent) {
        	CheckedTextView textView = getGenericView();
            textView.setText(getChild(groupPosition, childPosition).toString());
            return textView;
        }

        public Object getGroup(int groupPosition) {
            return groups[groupPosition];
        }

        public int getGroupCount() {
            return groups.length;
        }

        public long getGroupId(int groupPosition) {
            return groupPosition;
        }

        public View getGroupView(int groupPosition, boolean isExpanded, View convertView,
                ViewGroup parent) {
        	CheckedTextView textView = getGenericView();
            textView.setText(getGroup(groupPosition).toString());
            return textView;
        }

        public boolean isChildSelectable(int groupPosition, int childPosition) {
            return true;
        }

        public boolean hasStableIds() {
            return true;
        }

    }
}
*/