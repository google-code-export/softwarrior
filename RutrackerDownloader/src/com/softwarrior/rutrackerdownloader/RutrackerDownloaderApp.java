package com.softwarrior.rutrackerdownloader;

import com.softwarrior.libtorrent.LibTorrent;

import android.app.Application;
import android.os.Environment;

public class RutrackerDownloaderApp extends Application {
 
	//Constants
	public static final String TAG = "Softwarrior";
	public static final String SavePath   = Environment.getExternalStorageDirectory() + "/RutrackerDownloader";
	public static final String TorentFile = Environment.getExternalStorageDirectory() + "/RutrackerDownloader/downloader.torrent";	
	public static final LibTorrent LibTorrent =  new LibTorrent();
	//Variables
	public static String CookieData = new String();
	
	@Override
    public void onCreate() {
		super.onCreate();
    }
}
