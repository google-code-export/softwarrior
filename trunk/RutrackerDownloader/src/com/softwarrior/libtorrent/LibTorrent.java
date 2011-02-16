package com.softwarrior.libtorrent;

public class LibTorrent {
    static {
    	System.loadLibrary("torrent");
        }
        public native boolean StartDownload(String SavePath,String TorentFile, int ListenPort, int ProxyType, String ProxyHostName, int ProxyPort, String ProxyUsername, String ProxyPassword);        
        public native int GetProgress();
        public native int GetStatus();
        public native boolean StopDownload();
        public native boolean PauseDownload();
        public native boolean ResumeDownload();
}
