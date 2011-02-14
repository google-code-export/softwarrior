package com.softwarrior.libtorrent;

public class LibTorrent {
    static {
    	System.loadLibrary("torrent");
        }
        public native void StartDownload(String SavePath,String TorentFile, int ListenPort, int ProxyType, String ProxyHostName, int ProxyPort, String ProxyUsername, String ProxyPassword);        
        public native int GetProgress();
        public native void StopDownload();
}
