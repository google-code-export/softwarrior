package com.softwarrior.rss;

import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;

import org.xmlpull.v1.XmlSerializer;

import com.softwarrior.rutrackerdownloaderlite.R;
import com.softwarrior.rutrackerdownloaderlite.DownloaderApp;
import com.softwarrior.rutrackerdownloaderlite.DownloaderApp.ActivityResultType;
import com.softwarrior.web.TorrentWebClient;

import android.app.ListActivity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import android.util.Xml;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.ListView;

public class MessageList extends ListActivity {
	
	private List<RSSMessage> mMessages;
	private boolean mPirateSearch = false;
	
	private ArrayAdapter<String> mListAdapter = null;

    public enum MenuType{
    	About, Help, Main, FileManager, WebHistory, Exit;
    }
	 
	public void OnClickHomeHandler(View v){
		DownloaderApp.MainScreen(this);
	}
	
    @Override
    public void onCreate(Bundle icicle) {
        requestWindowFeature(Window.FEATURE_CUSTOM_TITLE);
    	super.onCreate(icicle);
        setContentView(R.layout.rss);
        getWindow().setFeatureInt(Window.FEATURE_CUSTOM_TITLE, R.layout.custom_title);
        if(DownloaderApp.FeedUrl.contains(DownloaderApp.PirateFeedUrlPrefix))
        	mPirateSearch = true;
        else
        	mPirateSearch = false;
        ViewGroup container = (ViewGroup)findViewById(R.id.container);
        container.setPersistentDrawingCache(ViewGroup.PERSISTENT_ANIMATION_CACHE);

        final ListView listView = getListView();
        // Tell the list view which view to display when the list is empty
        listView.setEmptyView(findViewById(R.id.empty));
        listView.setItemsCanFocus(false);
              
        if(DownloaderApp.ExitState) DownloaderApp.CloseApplication(this);
    	final ProgressDialog dialog = ProgressDialog.show(this, "", getString(R.string.progress_read), true, false);
        final Handler handler = new Handler() {
            @Override
            public void handleMessage(Message msg) {
                dialog.dismiss();
                if(mListAdapter!=null)
                	setListAdapter(mListAdapter);
            }
        };            	
    	// Start lengthy operation in a background thread
		new Thread(new Runnable() {
            public void run() {
		try{
			loadFeed(ParserType.ANDROID_SAX);
		}catch(Exception ex){}
		handler.sendEmptyMessage(0);
            }
        }).start();		
	    DownloaderApp.AnalyticsTracker.trackPageView("/RSSMessageList");
    }
            
    @Override
    protected void onResume() {
    	super.onResume();
        if(DownloaderApp.ExitState) DownloaderApp.CloseApplication(this);
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
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		super.onCreateOptionsMenu(menu);
		menu.add(Menu.NONE, MenuType.About.ordinal(), MenuType.About.ordinal(), R.string.menu_about); 
		menu.add(Menu.NONE, MenuType.Help.ordinal(), MenuType.Help.ordinal(), R.string.menu_help); 
		menu.add(Menu.NONE, MenuType.Main.ordinal(), MenuType.Main.ordinal(), R.string.menu_main);
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
		case Main:{
			DownloaderApp.MainScreen(this);
		} break;
		case FileManager:{
			DownloaderApp.FileManagerActivity(this);
		} break;
		case WebHistory:{
			DownloaderApp.WebHistoryActivity(this);
		} break;
		case Exit:{
			DownloaderApp.CloseApplication(this);
		} break;
		}
		return true;
	}
    		
	@Override
	protected void onListItemClick(ListView l, View v, int position, long id) {
		super.onListItemClick(l, v, position, id);

		Bundle bundle = new Bundle();
		bundle.putString("LoadUrl", mMessages.get(position).getLink().toExternalForm());
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
    		Log.i(DownloaderApp.TAG, "ParserType="+type.name());
	    	FeedParser parser = FeedParserFactory.getParser(type);
	    	long start = System.currentTimeMillis();
	    	mMessages = parser.parse();
	    	long duration = System.currentTimeMillis() - start;
	    	Log.i(DownloaderApp.TAG, "Parser duration=" + duration);
	    	String xml = writeXml();
	    	Log.i(DownloaderApp.TAG, xml);
	    	List<String> titles = new ArrayList<String>(mMessages.size());
	    	for (RSSMessage msg : mMessages){
	    		if(mPirateSearch){
		    		Spanned spText = Html.fromHtml(msg.getTitle());
		    		String title = spText.toString();
				    int stringEnd =  title.indexOf("br />");	
				    if(stringEnd>0 &&  stringEnd+5 <= title.length()){
				    	String replaceStr = title.substring(0, stringEnd+5);
				    	if(replaceStr!= null){
				    		title = title.replace(replaceStr, "");
				    	}		    		
				    }			
		    		spText = Html.fromHtml(msg.getDescription());
		    		String description = spText.toString();
		    		titles.add(title + " " + description);
	    		} else {
	    			titles.add(msg.getTitle());
	    		}
	    	}
	    	mListAdapter =  new ArrayAdapter<String>(this, R.layout.rss_row,titles);
    	} catch (Throwable t){
    		Log.e(DownloaderApp.TAG,t.getMessage(),t);
    	}
    }
    
	private String writeXml(){
		XmlSerializer serializer = Xml.newSerializer();
		StringWriter writer = new StringWriter();
		try {
			serializer.setOutput(writer);
			serializer.startDocument("UTF-8", true);
			serializer.startTag("", "messages");
			serializer.attribute("", "number", String.valueOf(mMessages.size()));
			for (RSSMessage msg: mMessages){
				serializer.startTag("", "message");				
				try{
					serializer.attribute("", "date", msg.getDate());
				}catch(Exception ex){}
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