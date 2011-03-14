package com.softwarrior.rutrackerdownloader;

import java.util.ArrayList;

import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp.ActivityResultType;

import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.TextView;

public class TorrentFilesList extends ListActivity {
    private static ArrayList<String> mTorrentFiles = new ArrayList<String>();
    public static ArrayList<Byte> TorrentFilesPriority = new ArrayList<Byte>();
    
    String TORRENT_FILES = new String(
    		"CROT\\01_10_01.mp3\n" +
    		"CROT\\02_10_01.mp3\n" +
    		"CROT\\1980\\04\\03_10_01.mp3\n" +
    		"CROT\\03_10_01.mp3\n" +
    		"TORT\\01_10_01.mp3\n" +
    		"77_10_01.mp3\n" +
    		"TORT\\1977\\01_10_01.mp3\n" +
    		"TORT\\02_10_01.mp3\n" +
    		"TORT\\03_10_01.mp3\n" +
    		"TORT\\04_10_01.mp3\n" +
    		"COMPOT\\01_10_01.mp\n" +
    		"COMPOT\\2010\\01\\01_10_01.mp3\n"+
    		"COMPOT\\02_10_01.mp3\n" +
    		"99_10_01.mp3\n"
    );

    byte[] FILES_PRIORITY = new byte[]{
    		1,1,1,1,1,1,1,1,1,1,1,1,1,1
    };

	private TorrentDirFileAdapter mDirFileAdapter;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.torrentfilelist);

        TorrentDir rootDir = TorrentDirFile.CreateDirFileList(TORRENT_FILES, FILES_PRIORITY);
                 
        mDirFileAdapter = new TorrentDirFileAdapter( this, rootDir.getDirFiles() );
		setListAdapter( mDirFileAdapter );
        
        final ListView listView = getListView();
        listView.setItemsCanFocus(false);
        listView.setChoiceMode(ListView.CHOICE_MODE_MULTIPLE);
             
        int size = listView.getAdapter().getCount();
        for(int i=0; i<size; i++)
        	listView.setItemChecked(i, true);
        

	  	listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
	    	public void onItemClick(AdapterView<?> parent, View view, int position, long id){
	    		//0 - piece is not downloaded at all
				//1 - normal priority. Download order is dependent on availability				
	    		TorrentDirFile dirFile = (TorrentDirFile)listView.getItemAtPosition(position);	    		
	    		if(dirFile instanceof TorrentDir){	    			
	    			TorrentDir dir =  (TorrentDir)dirFile;
	    			mDirFileAdapter.setTorrentDirFile(dir.getDirFiles());
	    		}
    			CheckBox cb = (CheckBox)view.findViewById(R.id.check1); 
    			byte priority = 0;	    		
	    		if(cb.isChecked())
	    			priority = 1;
	    		if(dirFile instanceof TorrentFile)	    			
	    			FILES_PRIORITY[dirFile.getNumber()] = priority;
//	    		TorrentFilesPriority.set(position, priority);
	    	}
	  	});

        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
//	    RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/TorrentFilesList");
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

abstract class TorrentDirFile {
    protected String  mName = null;
    protected int     mNumber = -1;
    protected boolean mState = false;
    
    public TorrentDirFile( String name, int number, boolean state ) { mName = name; mNumber = number; mState = state;}
    public TorrentDirFile( String name, boolean state ) { mName = name;  mState = state;}

    @Override
    public String toString() {
    	return mName;
    }
    
    public String getName() { return mName;}
    public int getNumber() { return mNumber;}
    public boolean getState() { return mState; }
    
    public static TorrentDir CreateDirFileList(String FileNames, byte[] priority){
    	TorrentDir result = new TorrentDir("\\",true);
        if( FileNames != null && priority != null){
        	boolean checked = true;
	    	int last_index = 0;
	    	int current_index = FileNames.indexOf('\n',last_index);
	    	int index = 0;
	    	while(current_index >= 0 ){
	    		if(priority[index] == 0) checked = false; else checked = true; 
	    		String filename = FileNames.substring(last_index, current_index);	    		
	    		result.addFile(new TorrentFile(filename,index,checked));
	    		last_index = current_index+1; 
	    		current_index = FileNames.indexOf('\n',last_index);
	    		index++;
	    	}
	    }
    	return result;
    }
}

class TorrentFile extends TorrentDirFile{
	ArrayList<TorrentDir> mSubdirs = new ArrayList<TorrentDir>();
	public TorrentFile(String name, int number, boolean state) {
		super(name,number,state);
        if( mName!= null){
	    	int last_index = 0;
	    	int current_index = mName.indexOf('\\',last_index);
	    	while(current_index >= 0 ){
	    		String dirname = mName.substring(last_index, current_index);	    		
	    		mSubdirs .add(new TorrentDir(dirname,true));
	    		last_index = current_index+1; 
	    		current_index = mName.indexOf('\\',last_index);
	    	}
	    }
	}
	public ArrayList <TorrentDir> getSubdirs(){return mSubdirs;}
}

class TorrentDir extends TorrentDirFile{
    ArrayList<TorrentDirFile> mTorrentDirFiles = new ArrayList<TorrentDirFile>();
    public TorrentDir(String name, boolean state) {super(name,state);}    
	public void addFile(TorrentFile file){
		if(file.getSubdirs().size() == 0){
				mTorrentDirFiles.add(file);
		} else{
			TorrentDir last_dir = addDir(file.getSubdirs().get(0));
			for(int i=1;i<file.getSubdirs().size();i++){
				TorrentDir dirN = file.getSubdirs().get(i);
				last_dir = last_dir.addDir(dirN);
			}
			last_dir.mTorrentDirFiles.add(file);
		}
	}
	private TorrentDir addDir(TorrentDir dir){
		TorrentDir result = null;
		for(int i=0;i<mTorrentDirFiles.size();i++){
			if(mTorrentDirFiles.get(i) instanceof TorrentDir){
				if(mTorrentDirFiles.get(i).mName.equals(dir.mName)){
					result = (TorrentDir) mTorrentDirFiles.get(i); 
				}
			}				
		}
		if(result == null){
			result = dir;
			mTorrentDirFiles.add(dir);
		}
		return result;
	}
	public int getDirFilesSize(){return mTorrentDirFiles.size();} 
	
	public TorrentDirFile[] getDirFiles(){
        int count = mTorrentDirFiles.size();
        TorrentDirFile[] dirFiles = new TorrentDirFile[count];
	    for(int i=0;i<count;i++) dirFiles[i] = (TorrentDirFile)mTorrentDirFiles.get(i);	                   
		return dirFiles;
	}
}

class TorrentDirFileAdapter extends BaseAdapter {
    private TorrentDirFile[] mTorrentDirFile;
	private LayoutInflater mInflater;
    
    public TorrentDirFileAdapter(Context context, TorrentDirFile[] dirFile) {
    	mTorrentDirFile = dirFile;
        mInflater = (LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
    }
    public void setTorrentDirFile(TorrentDirFile[] dirFile){mTorrentDirFile = dirFile;}
    public int getCount() { return mTorrentDirFile.length; }
    public Object getItem(int position) { return mTorrentDirFile[position];}
    public long getItemId(int position) { return position; }
    //Make a view to hold each row.
    public View getView(int position, View convertView, ViewGroup parent) {
    	View v = null;
        if( convertView != null )
            v = convertView;
        else
        	v = mInflater.inflate(R.layout.child_row, parent, false);
        TextView tv_name = (TextView)v.findViewById( R.id.childname );
        TorrentDirFile dirFile = mTorrentDirFile[position];
    	if(dirFile instanceof TorrentFile){    		
    		tv_name.setTypeface(null,Typeface.ITALIC);
    		tv_name.setTextSize(14);
    	}
    	else if(dirFile instanceof TorrentDir){
    		tv_name.setTypeface(null,Typeface.BOLD);
    		tv_name.setTextSize(20);
    	}
		if( tv_name != null )
			tv_name.setText( dirFile.getName() );
		CheckBox cb = (CheckBox)v.findViewById( R.id.check1 );
        cb.setChecked( dirFile.getState() );
        return v;
    }
}
