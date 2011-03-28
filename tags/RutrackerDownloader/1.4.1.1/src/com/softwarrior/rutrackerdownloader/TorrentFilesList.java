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
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ListView;
import android.widget.TextView;

public class TorrentFilesList extends ListActivity {
    
    public static String TORRENT_FILES = new String(
    		"CROT/01_10_01.mp3\n" +
    		"CROT/02_10_01.mp3\n" +
    		"CROT/1980/04/03_10_01.mp3\n" +
    		"CROT/03_10_01.mp3\n" +
    		"TORT/01_10_01.mp3\n" +
    		"77_10_01.mp3\n" +
    		"TORT/1977/01_10_01.mp3\n" +
    		"TORT/02_10_01.mp3\n" +
    		"TORT/03_10_01.mp3\n" +
    		"TORT/04_10_01.mp3\n" +
    		"COMPOT/01_10_01.mp\n" +
    		"COMPOT/2010/01/01_10_01.mp3\n"+
    		"COMPOT/02_10_01.mp3\n" +
    		"99_10_01.mp3\n"
    );
	//0 - piece is not downloaded at all
	//1 - normal priority. Download order is dependent on availability				
    public static byte[] FILES_PRIORITY = new byte[]{
    		0,1,1,1,1,1,1,1,1,1,1,1,1,0
    };

    public static boolean APPLY = false;
    
    
	private TorrentDirFileAdapter mDirFileAdapter;
	private TorrentDir mCurrentDir;
	private TextView mDirName;
	private ListView mListView;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.torrentfilelist);        
        APPLY = false;
        mCurrentDir = TorrentDirFile.CreateDirFileList(TORRENT_FILES, FILES_PRIORITY);

        mDirName = (TextView)findViewById(R.id.dir_name);
        mDirName.setText(mCurrentDir.getName());
        
        mDirFileAdapter = new TorrentDirFileAdapter( this, mCurrentDir.getDirFiles() );
		setListAdapter( mDirFileAdapter );
        
		mListView = getListView();
		mListView.setItemsCanFocus(false);
		mListView.setChoiceMode(ListView.CHOICE_MODE_MULTIPLE);
             
//        int size = mListView.getAdapter().getCount();
//        for(int i=0; i<size; i++)
//        	mListView.setItemChecked(i, true);
        
        mListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
	    	public void onItemClick(AdapterView<?> parent, View view, int position, long id){
	    		TorrentDirFile dirFile = (TorrentDirFile)mListView.getItemAtPosition(position);	    		
	    		if(dirFile instanceof TorrentDir){
	    			TorrentDir sub_dir = (TorrentDir)dirFile;
	    			sub_dir.setUpDir(mCurrentDir);
	    			mCurrentDir =  (TorrentDir)dirFile;
	    			mDirFileAdapter.setTorrentDirFile(mCurrentDir.getDirFiles());
	    	        String dir_name = mDirName.getText() + "/" + mCurrentDir.getName();
	    	        mDirName.setText(dir_name);
	    			setListAdapter(mDirFileAdapter);
	    		} 
	    	}
	  	});
	    if(!RutrackerDownloaderApp.ActivateTorrentFileList) {
	        mDirName.setTypeface(null,Typeface.BOLD);
	        mDirName.setText(R.string.file_list_activation);
	        Button button = (Button)findViewById(R.id.ButtonApply);
	        button.setEnabled(false);
	    }	    
        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
	    RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/TorrentFilesList");
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
	
   public void OnClickButtonUnselect(View v){	   
	   TorrentDirFile [] tdf = mCurrentDir.getDirFiles();
	   SelectDirFile(tdf,false);
	   mDirFileAdapter.setTorrentDirFile(mCurrentDir.getDirFiles());
	   setListAdapter(mDirFileAdapter);
   }
   public void OnClickButtonSelect(View v){
	   TorrentDirFile [] tdf = mCurrentDir.getDirFiles();
	   SelectDirFile(tdf,true);
	   mDirFileAdapter.setTorrentDirFile(mCurrentDir.getDirFiles());
	   setListAdapter(mDirFileAdapter);
   }   
   private void SelectDirFile(TorrentDirFile[] tdf, boolean flag){
	   for(int i=0; i<tdf.length;i++){
		   if(tdf[i] instanceof TorrentDir)
			   SelectDirFile(((TorrentDir)tdf[i]).getDirFiles(), flag);
		   tdf[i].setState(flag);
	   }	   
   }   
   public void OnClickButtonApply(View v){
	   APPLY = true;
	   finish();
   }   
   public void OnClickButtonUp(View v){
	   TorrentDir upDir = mCurrentDir.getUpDir();
	   if(upDir != null){
		   mCurrentDir = upDir;
		   mDirFileAdapter.setTorrentDirFile(mCurrentDir.getDirFiles());
		   String dir_name = (String) mDirName.getText();
	       int current_index = dir_name.lastIndexOf('/');
	       if(current_index >= 0 ){
	    	   dir_name = dir_name.substring(0, current_index);	    		
	    	}
		   mDirName.setText(dir_name);
		   setListAdapter(mDirFileAdapter);
	   }
   }
}
//----------------------------------------------------------------------------------
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
    public void setState(boolean state) { mState = state; }
    
    public static TorrentDir CreateDirFileList(String FileNames, byte[] priority){
    	TorrentDir result = new TorrentDir("/",true);
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
	    	int current_index = mName.indexOf('/',last_index);
	    	while(current_index >= 0 ){
	    		String dirname = mName.substring(last_index, current_index);	    		
	    		mSubdirs.add(new TorrentDir(dirname,state));
	    		last_index = current_index+1; 
	    		current_index = mName.indexOf('/',last_index);
	    		if(current_index < 0){
	    			mName = mName.substring(last_index, mName.length());
	    		}
	    	}
	    }
	}
	public ArrayList <TorrentDir> getSubdirs(){return mSubdirs;}
	@Override
	public void setState(boolean state) {
		mState = state;
    	byte priority = 1; if(!state) priority = 0;
    	TorrentFilesList.FILES_PRIORITY[mNumber] = priority; 
	}
}

class TorrentDir extends TorrentDirFile{
    ArrayList<TorrentDirFile> mTorrentDirFiles = new ArrayList<TorrentDirFile>();
    TorrentDir mUpDir = null;
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
	public void setUpDir(TorrentDir previos){mUpDir=previos;}
	public TorrentDir getUpDir(){return mUpDir;}
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
		CheckBox cb = (CheckBox)v.findViewById( R.id.check1 );
		cb.setTag(dirFile);
		cb.setOnCheckedChangeListener(new OnCheckedChangeListener() {			
			public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
	        	TorrentDirFile df = (TorrentDirFile)buttonView.getTag();
		        if(df instanceof TorrentFile)    		
		        	df.setState(isChecked);
			}
		});
		if( tv_name != null )
			tv_name.setText( dirFile.getName() );
        if(dirFile instanceof TorrentFile){    		
    		if( cb != null )
    			cb.setChecked( dirFile.getState() );
    		tv_name.setTypeface(null,Typeface.ITALIC);
    		tv_name.setTextSize(14);
    	}
    	else if(dirFile instanceof TorrentDir){
    		if( cb != null )
    			cb.setVisibility(View.GONE);
    		tv_name.setTypeface(null,Typeface.BOLD);
    		tv_name.setTextSize(20);
    	}
        return v;
    }
}

