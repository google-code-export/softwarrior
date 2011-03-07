package com.softwarrior.libtorrent;

public class LibTorrent {
    static {
    	System.loadLibrary("torrent");
        }
   //-----------------------------------------------------------------------------
    public native boolean SetSession(int ListenPort, int UploadLimit, int DownloadLimit);
    //-----------------------------------------------------------------------------
    //enum proxy_type
    //{
	//0 - none, // a plain tcp socket is used, and the other settings are ignored.
	//1 - socks4, // socks4 server, requires username.
	//2 - socks5, // the hostname and port settings are used to connect to the proxy. No username or password is sent.
	//3 - socks5_pw, // the hostname and port are used to connect to the proxy. the username and password are used to authenticate with the proxy server.
	//4 - http, // the http proxy is only available for tracker and web seed traffic assumes anonymous access to proxy
	//5 - http_pw // http proxy with basic authentication uses username and password
    //};
    //-----------------------------------------------------------------------------
    public native boolean SetProxy(int Type, String HostName, int Port, String UserName, String Password);        
    //-----------------------------------------------------------------------------
    public native boolean AddTorrent(String SavePath, String TorentFile);
    //-----------------------------------------------------------------------------
    public native boolean PauseSession();
    //-----------------------------------------------------------------------------
    public native boolean ResumeSession();
    //-----------------------------------------------------------------------------
    public native boolean RemoveTorrent();
    //-----------------------------------------------------------------------------
    public native int GetTorrentProgress();
    //-----------------------------------------------------------------------------
    //enum state_t
    //{
	//0 queued_for_checking,
	//1 checking_files,
	//2 downloading_metadata,
	//3 downloading,
	//4 finished,
	//5 seeding,
	//6 allocating,
	//7 checking_resume_data
    //}
    // + 8 paused
    // + 9 queued
    //-----------------------------------------------------------------------------
    public native int GetTorrentState();        	
    //-----------------------------------------------------------------------------
    //static char const* state_str[] =
    //{"checking (q)", "checking", "dl metadata", "downloading", "finished", "seeding", "allocating", "checking (r)"};
    //-----------------------------------------------------------------------------
    public native String GetTorrentStatusText();
    //-----------------------------------------------------------------------------        
    public native String GetSessionStatusText();
    //-----------------------------------------------------------------------------        
}
