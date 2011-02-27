package com.softwarrior.rss;

import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;

import org.xmlpull.v1.XmlSerializer;

import com.softwarrior.rutrackerdownloader.R;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp.ActivityResultType;
import com.softwarrior.web.TorrentWebClient;

import android.app.Dialog;
import android.app.ListActivity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.util.Xml;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListView;

public class MessageList extends ListActivity {
	
	private List<Message> messages;
	
    ProgressDialog mDialog;
    private static final int DIALOG_KEY = 1;

    private Handler mHandler = new Handler();        
    private Thread mThread;
    ParseHandler mParseHandler = null;
    android.os.Message mParseMessage = null;

    public enum MenuType{
    	About, Help, Preferences, FileManager, Exit;
    }
	
    @Override
    public void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        setContentView(R.layout.rss);
        loadFeed(ParserType.ANDROID_SAX);
        ViewGroup container = (ViewGroup)findViewById(R.id.container);
        container.setPersistentDrawingCache(ViewGroup.PERSISTENT_ANIMATION_CACHE);
        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
        // Start lengthy operation in a background thread
		showDialog(DIALOG_KEY);
		mThread = new Thread(new Runnable() {
            public void run() {
					mHandler.post(new Runnable() {
						public void run() {
					        loadFeed(ParserType.ANDROID_SAX);
					        removeDialog(DIALOG_KEY);
						}
					});
            }
        });
    	mParseHandler = new ParseHandler();
		mParseMessage =  mParseHandler.obtainMessage();
		mParseHandler.sendMessageDelayed(mParseMessage, 500);
	    RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/RSSMessageList");
    }

	@Override
	protected void onDestroy() {
		super.onDestroy();
		//RutrackerDownloaderApp.AnalyticsTracker.dispatch();
	}
    
    private class ParseHandler extends Handler {	
	    @Override
		public void handleMessage(android.os.Message message) {
	    	mThread.start();
	    }
    } 
    
    @Override
    protected Dialog onCreateDialog(int id, Bundle args) {
        switch (id) {
        case DIALOG_KEY: {
            ProgressDialog dialog = new ProgressDialog(this);
            dialog.setMessage("Please wait while loading...");
            dialog.setIndeterminate(true);
            dialog.setCancelable(true);
            return dialog;
        } 
        }
    	return super.onCreateDialog(id, args);
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
			RutrackerDownloaderApp.CloseApplication(this);
		} break;
		}
		return true;
	}
    		
	@Override
	protected void onListItemClick(ListView l, View v, int position, long id) {
		super.onListItemClick(l, v, position, id);

		Bundle bundle = new Bundle();
		bundle.putString("LoadUrl", messages.get(position).getLink().toExternalForm());
		bundle.putString("Action", "Show");
		Intent intent = new Intent(Intent.ACTION_VIEW);
		intent.putExtras(bundle);
		intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
		intent.setClassName(this, TorrentWebClient.class.getName());
		startActivityForResult(intent,0);		
		//Intent viewMessage = new Intent(Intent.ACTION_VIEW, Uri.parse(messages.get(position).getLink().toExternalForm()));
		//startActivity(viewMessage);
	}

	private void loadFeed(ParserType type){
    	try{
    		Log.i(RutrackerDownloaderApp.TAG, "ParserType="+type.name());
	    	FeedParser parser = FeedParserFactory.getParser(type);
	    	long start = System.currentTimeMillis();
	    	messages = parser.parse();
	    	long duration = System.currentTimeMillis() - start;
	    	Log.i(RutrackerDownloaderApp.TAG, "Parser duration=" + duration);
	    	String xml = writeXml();
	    	Log.i(RutrackerDownloaderApp.TAG, xml);
	    	List<String> titles = new ArrayList<String>(messages.size());
	    	for (Message msg : messages){
	    		titles.add(msg.getTitle());
	    	}
	    	ArrayAdapter<String> adapter = 
	    		new ArrayAdapter<String>(this, R.layout.rss_row,titles);
	    	this.setListAdapter(adapter);
    	} catch (Throwable t){
    		Log.e(RutrackerDownloaderApp.TAG,t.getMessage(),t);
    	}
    }
    
	private String writeXml(){
		XmlSerializer serializer = Xml.newSerializer();
		StringWriter writer = new StringWriter();
		try {
			serializer.setOutput(writer);
			serializer.startDocument("UTF-8", true);
			serializer.startTag("", "messages");
			serializer.attribute("", "number", String.valueOf(messages.size()));
			for (Message msg: messages){
				serializer.startTag("", "message");				
				serializer.attribute("", "date", msg.getDate());
				String title = msg.getTitle();
				if(title != null)
				{
					serializer.startTag("", "title");
					serializer.text(title);
					serializer.endTag("", "title");
				}
				String url = msg.getLink().toExternalForm();
				if(url != null)
				{
					serializer.startTag("", "url");
					serializer.text(url);
					serializer.endTag("", "url");
				}
				String body = msg.getDescription();
				if(body != null)
				{
					serializer.startTag("", "body");
					serializer.text(body);
					serializer.endTag("", "body");
				}
				serializer.endTag("", "message");
			}
			serializer.endTag("", "messages");
			serializer.endDocument();
			return writer.toString();
		} catch (Exception e) {
			throw new RuntimeException(e);
		} 
	}
}