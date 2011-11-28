package com.softwarrior.piratesearch;

import android.app.ListActivity;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.Spinner;
import android.widget.TextView;

import com.softwarrior.rutrackerdownloader.R;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp.ActivityResultType;
import com.softwarrior.web.TorrentWebClient;

public class PirateSearchActivity extends ListActivity {
	
	// The ContentProvider colums and mapping to the list view items
	//String[] all = new String[] { "NAME", "TORRENTURL", "DETAILSURL", "SIZE", "ADDED", "SEEDERS", "LEECHERS" };
//    private final String[] from = new String[] { "NAME", "SIZE", "ADDED", "LEECHERS", "SEEDERS" };
//    private final int[] to = new int[] { R.id.result_title, R.id.result_size, R.id.result_date, R.id.result_leechers, R.id.result_seeds};
    private final String[] from = new String[] { "_ID", "NAME", "TORRENTURL", "DETAILSURL", "SIZE", "ADDED", "SEEDERS", "LEECHERS" };
    private final int[] to = new int[] { R.id.piratesearch_id, 
    									 R.id.piratesearch_name, 
    									 R.id.piratesearch_torrenturl,
    									 R.id.piratesearch_detailsurl,
    									 R.id.piratesearch_size, 
    									 R.id.piratesearch_added,
    									 R.id.piratesearch_seeders,
    									 R.id.piratesearch_leechers};
    
	private TextView emptyText;
	private EditText queryText;
	
	private Button btnInstall, btnSearch;
    
	private Spinner SpinnerSource, SpinnerSort; 
	private ArrayAdapter<CharSequence> AdapterSource, AdapterSort; 
	
	private String[] SortOrder = { "Combined", "BySeeders" };
	
	private TorrentSitesProvider mTorrentSites;
	private TorrentSearchProvider mTorrentSearch;
	
	public enum MenuType{
		About, Help, FileManager, WebHistory, Exit;
	}
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
    	requestWindowFeature(Window.FEATURE_CUSTOM_TITLE);
    	
        super.onCreate(savedInstanceState);
        setContentView(R.layout.pirate_search);

        getWindow().setFeatureInt(Window.FEATURE_CUSTOM_TITLE, R.layout.custom_title);

        mTorrentSites = new TorrentSitesProvider(this);
        mTorrentSearch = new TorrentSearchProvider(this);
        
        emptyText = (TextView)findViewById(android.R.id.empty);
        queryText = (EditText)findViewById(R.id.query);
        
//		SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(this);
//		String searchString = preferences.getString(RutrackerDownloaderApp.KEY_SEARCH_STRING, "");		
//		queryText.setText(searchString);
        
        btnInstall = (Button)findViewById(R.id.btnTorSearchInst);
        btnSearch = (Button)findViewById(R.id.querygo);
        
        SpinnerSource = (Spinner) findViewById(R.id.srcSpinner); 
        SpinnerSort = (Spinner) findViewById(R.id.sortSpinner); 

        AdapterSource = new ArrayAdapter<CharSequence>(this, android.R.layout.simple_spinner_item); 
        AdapterSource.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item); 
        SpinnerSource.setAdapter(AdapterSource); 
        
        AdapterSort = new ArrayAdapter<CharSequence>(this, android.R.layout.simple_spinner_item); 
        AdapterSort.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item); 
        SpinnerSort.setAdapter(AdapterSort); 
        
        for (int i = 0; i < SortOrder.length; i++) { 
        	AdapterSort.add(SortOrder[i]); 
        } 
        
        // Gather the supported torrent sites
        StringBuilder s = new StringBuilder();
        Cursor sites = getSupportedSites();
        if (sites != null) {
	        if (sites.moveToFirst()) {
		        do {
		        	s.append(sites.getString(1));
		        	s.append("\n");
		        	AdapterSource.add(sites.getString(1));
		        } while (sites.moveToNext());
	        }
	        emptyText.setText(getString(R.string.pirate_available_sites)+":\n" + s.toString());
	        btnInstall.setVisibility(Button.GONE);
	        
	        // Attach button click handler
	        btnSearch.setOnClickListener(new OnClickListener() {			
				public void onClick(View v) {
					new TorrentSearchTask().execute(queryText.getText().toString());
				}
			});
        } 
//        else {
//        	queryText.setVisibility(TextView.GONE);
//        	btnSearch.setVisibility(Button.GONE);
//        	SpinnerSort.setVisibility(Spinner.GONE);
//        	SpinnerSource.setVisibility(Spinner.GONE);
//        	emptyText.setText("Search provider not installed, click the button bellow to install it.\n\n Note: You will have to restart synodroid app to enable search after installing search provider...");
//        	btnInstall.setOnClickListener(new OnClickListener() {			
//				public void onClick(View v) {
//					Intent goToMarket = null;
//					goToMarket = new Intent(Intent.ACTION_VIEW,Uri.parse("market://details?id=org.transdroid.search"));
//					startActivity(goToMarket);
//				}
//			});
//        }
    	if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.FinalCloseApplication(this);
    	RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/PirateSearchActivity");
    }

    @Override
    protected void onResume() {
	  	super.onResume();
	  	if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.FinalCloseApplication(this);
    }

    @Override
	public boolean onCreateOptionsMenu(Menu menu) {
		super.onCreateOptionsMenu(menu);
		menu.add(Menu.NONE, MenuType.About.ordinal(), MenuType.About.ordinal(), R.string.menu_about); 
		menu.add(Menu.NONE, MenuType.Help.ordinal(), MenuType.Help.ordinal(), R.string.menu_help);
		menu.add(Menu.NONE, MenuType.FileManager.ordinal(), MenuType.FileManager.ordinal(), R.string.menu_file_manager);
		menu.add(Menu.NONE, MenuType.WebHistory.ordinal(), MenuType.WebHistory.ordinal(), R.string.menu_web_history);
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
		case FileManager:{
			RutrackerDownloaderApp.FileManagerActivity(this);
		} break;
		case WebHistory:{
			RutrackerDownloaderApp.WebHistoryActivity(this);
		} break;
		case Exit:{
			RutrackerDownloaderApp.FinalCloseApplication(this);
		} break;
		}
		return true;
	}
    
	@Override
	protected void onListItemClick(ListView l, View v, int position, long id) {
		super.onListItemClick(l, v, position, id);

		Bundle bundle = new Bundle();
        TextView tv_loadUrl = (TextView)v.findViewById(R.id.piratesearch_torrenturl);
		bundle.putString("LoadUrl", tv_loadUrl.getText().toString());
		bundle.putString("Action", "Show");
		Intent intent = new Intent(Intent.ACTION_VIEW);
		intent.putExtras(bundle);
		intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
		intent.setClassName(this, TorrentWebClient.class.getName());
		startActivityForResult(intent,0);		
		//Intent viewMessage = new Intent(Intent.ACTION_VIEW, Uri.parse(messages.get(position).getLink().toExternalForm()));
		//startActivity(viewMessage);
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

    private Cursor getSupportedSites() {
    	// Create the URI of the TorrentSitesProvider
    	String uriString = "content://org.transdroid.search.torrentsitesprovider/sites";
        Uri uri = Uri.parse(uriString);
        // Then query all torrent sites (no selection nor projection nor sort):
        //return managedQuery(uri, null, null, null, null);
        return mTorrentSites.query(uri, null, null, null, null);
    }
    
    private class TorrentSearchTask extends AsyncTask<String, Void, Cursor> {

		@Override
		protected void onPreExecute() {
			emptyText.setText("Seaching for " + queryText.getText().toString());
			setListAdapter(null);
		}
		
		@Override
		protected Cursor doInBackground(String... params) {
			// Create the URI of the TorrentProvider
	        String uriString = "content://org.transdroid.search.torrentsearchprovider/search/"+params[0];
	        Uri uri = Uri.parse(uriString);
	        // Then query for this specific record (no selection nor projection nor sort):
//	        return managedQuery(uri, null, "SITE = ?", 
//	        		new String[] { SpinnerSource.getSelectedItem().toString() }, 
//	        		SpinnerSort.getSelectedItem().toString());
	        return mTorrentSearch.query(uri, null, "SITE = ?", 
		    		new String[] { SpinnerSource.getSelectedItem().toString() }, 
		    		SpinnerSort.getSelectedItem().toString());
		}
		
		@Override
		protected void onPostExecute(Cursor cur) {

	        if (cur == null) {
	        	emptyText.setText("Cursor is null (ContentProvider not installed?)");
	        }
	        
	        // Show results in the list
	        emptyText.setText("No results found for " + queryText.getText().toString());
	        setListAdapter(new SimpleCursorAdapter(PirateSearchActivity.this, R.layout.pirate_search_row, cur, from, to));

		}
		
    }
    
}