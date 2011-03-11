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
    private ColorAdapter expListAdapter;

    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle icicle){
        super.onCreate(icicle);
        setContentView(R.layout.expandable_list);
        ArrayList<String> groupNames = new ArrayList<String>();
        groupNames.add( "grey" );
	    groupNames.add( "blue" );
	    groupNames.add( "yellow" );
	    groupNames.add( "red" );
        ArrayList<ArrayList<Color>> colors = new ArrayList<ArrayList<Color>>(); 
        ArrayList<Color> color = new ArrayList<Color>();
        color.add( new Color( "lightgrey","#D3D3D3", false ) ); 
		color.add( new Color( "dimgray","#696969", true ) ); 
		color.add( new Color( "sgi gray 92","#EAEAEA", false ) );
        colors.add( color );
        color = new ArrayList<Color>();
		color.add( new Color( "dodgerblue 2","#1C86EE",false ) );
		color.add( new Color(  "steelblue 2","#5CACEE",false ) ); 
		color.add( new Color( "powderblue","#B0E0E6", true ) );
        colors.add( color );
        color = new ArrayList<Color>();
		color.add( new Color( "yellow 1","#FFFF00",true ) );
		color.add( new Color( "gold 1","#FFD700",false ) ); 
		color.add( new Color( "darkgoldenrod 1","#FFB90F", true ) );
        colors.add( color );
        color = new ArrayList<Color>();
		color.add( new Color( "indianred 1","#FF6A6A",true ) );
		color.add( new Color( "firebrick 1","#FF3030",false ) ); 
		color.add( new Color( "maroon","#800000", false ) );
        colors.add( color );

		expListAdapter = new ColorAdapter( this,groupNames, colors );
		setListAdapter( expListAdapter );
    }

    public void onContentChanged  () {
        super.onContentChanged();
        Log.d(RutrackerDownloaderApp.TAG, "onContentChanged" );
    }

    public boolean onChildClick(
            ExpandableListView parent, 
            View v, 
            int groupPosition,
            int childPosition,
            long id) {
        Log.d(RutrackerDownloaderApp.TAG, "onChildClick: "+childPosition );
        CheckBox cb = (CheckBox)v.findViewById( R.id.check1 );
        if( cb != null )
            cb.toggle();
        return false;
    }
}

class Color {
    public String color = null;
    public String rgb = null;
    public boolean state = false;

    public Color( String color, String rgb, boolean state ) {
        this.color = color;
        this.rgb = rgb;
        this.state = state;
    }

    public String getColor() {
	    return color;
    }

    public String getRgb() {
	    return rgb;
    }

    public boolean getState() {
	    return state;
    }

}

class ColorAdapter extends BaseExpandableListAdapter {

    private ArrayList<String> groups;
    private ArrayList<ArrayList<Color>> colors;
    private LayoutInflater inflater;

    public ColorAdapter(Context context, 
                        ArrayList<String> groups,
						ArrayList<ArrayList<Color>> colors ) { 
		this.groups = groups;
        this.colors = colors;
        inflater = LayoutInflater.from( context );
    }

    public Object getChild(int groupPosition, int childPosition) {
        return colors.get( groupPosition ).get( childPosition );
    }

    public long getChildId(int groupPosition, int childPosition) {
        return (long)( groupPosition*1024+childPosition );  // Max 1024 children per group
    }

    public View getChildView(int groupPosition, int childPosition, boolean isLastChild, View convertView, ViewGroup parent) {
        View v = null;
        if( convertView != null )
            v = convertView;
        else
            v = inflater.inflate(R.layout.child_row, parent, false); 
        Color c = (Color)getChild( groupPosition, childPosition );
		TextView color = (TextView)v.findViewById( R.id.childname );
		if( color != null )
			color.setText( c.getColor() );
		TextView rgb = (TextView)v.findViewById( R.id.rgb );
		if( rgb != null )
			rgb.setText( c.getRgb() );
		CheckBox cb = (CheckBox)v.findViewById( R.id.check1 );
        cb.setChecked( c.getState() );
        return v;
    }

    public int getChildrenCount(int groupPosition) {
        return colors.get( groupPosition ).size();
    }

    public Object getGroup(int groupPosition) {
        return groups.get( groupPosition );        
    }

    public int getGroupCount() {
        return groups.size();
    }

    public long getGroupId(int groupPosition) {
        return (long)( groupPosition*1024 );  // To be consistent with getChildId
    } 

    public View getGroupView(int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
        View v = null;
        if( convertView != null )
            v = convertView;
        else
            v = inflater.inflate(R.layout.group_row, parent, false); 
        String gt = (String)getGroup( groupPosition );
		TextView colorGroup = (TextView)v.findViewById( R.id.childname );
		if( gt != null )
			colorGroup.setText( gt );
        return v;
    }

    public boolean hasStableIds() {
        return true;
    }

    public boolean isChildSelectable(int groupPosition, int childPosition) {
        return true;
    } 

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