package com.softwarrior.piratesearch;

import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.util.Log;

/**
 * Provider of a list of available torrent sites.
 */
public class TorrentSitesProvider /*extends ContentProvider*/ {

	public static final String PROVIDER_NAME = "org.transdroid.search.torrentsitesprovider";

	/** The content URI to use. Useful if the application have access to this class. Otherwise it must build the URI like<br/>
	   <code>Uri uri = Uri.parse("content://org.transdroid.search.torrentsitesprovider/sites");</code><br/>
	   And within an activity then call:<br/>
	   <code>Cursor cur = managedQuery(uri, null, null, null, null);</code>
	 **/
	public static final Uri CONTENT_URI = Uri.parse("content://" + PROVIDER_NAME + "/sites");
	private Context mContext;
	
	public TorrentSitesProvider(Context context){
		mContext = context;
	}
	/*
	 * Not supported by this content provider
	 */
//	@Override
//	public int delete(Uri uriP, String selectionP, String[] selectionArgsP) {
//		throw new UnsupportedOperationException();
//	}

	/*
	 * (non-Javadoc)
	 * @see android.content.ContentProvider#getType(android.net.Uri)
	 */
//	@Override
//	public String getType(Uri uriP) {
//		return "vnd.android.cursor.dir/vnd.transdroid.torrentsite";
//	}

	/*
	 * Not supported by this content provider
	 */
//	@Override
//	public Uri insert(Uri uriP, ContentValues valuesP) {
//		throw new UnsupportedOperationException();
//	}

	/*
	 * (non-Javadoc)
	 * @see android.content.ContentProvider#onCreate()
	 */
//	@Override
//	public boolean onCreate() {
//		return false;
//	}

	/*
	 * (non-Javadoc)
	 * @see android.content.ContentProvider#query(android.net.Uri, java.lang.String[], java.lang.String,
	 * java.lang.String[], java.lang.String)
	 */
//	@Override
	public Cursor query(Uri uriP, String[] projectionP, String selectionP, String[] selectionArgsP, String sortOrderP) {

		Log.d(TorrentSitesProvider.class.toString(), "List all sites");
		
		// The available columns; note that an _ID is a ContentProvider-requirement
		String[] columnNames = new String[] { "_ID", "CODE", "NAME", "RSSURL" };
		MatrixCursor curs = new MatrixCursor(columnNames);

		TorrentSite[] sites = TorrentSite.values();
		// Return the results as MatrixCursor
		int id = 0;
		for (TorrentSite site : sites) {
			Object[] values = new Object[4];
			values[0] = id++;
			values[1] = site.toString();
			values[2] = site.getAdapter().getSiteName();
			values[3] = site.getAdapter().buildRssFeedUrlFromSearch("%s", SortOrder.BySeeders);
			curs.addRow(values);
		}

		// Register to watch a content URI for changes (don't really know what it means ?)
		curs.setNotificationUri(mContext.getContentResolver(), uriP);
		return curs;
	}

	/*
	 * Not supported by this content provider
	 */
//	@Override
//	public int update(Uri uriP, ContentValues valuesP, String selectionP, String[] selectionArgsP) {
//		throw new UnsupportedOperationException();
//	}

}
