package com.softwarrior.libtorrent;

public class LibTorrent {
    static {
    	System.loadLibrary("torrent");
        }
        public native void StartDownload(String SavePath,String TorentFile, int ListenPort1, int ListenPort2);
        public native void StopDownload();
}
