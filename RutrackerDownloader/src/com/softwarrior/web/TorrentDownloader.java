package com.softwarrior.web;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp;

import android.util.Log;

public class TorrentDownloader {
	
	String mCookieData;
	String mTorrentFullFileName; 

	public TorrentDownloader(String CookieData, String TorrentFullFileName)
	{
		mCookieData = CookieData;
		mTorrentFullFileName = TorrentFullFileName;
	}
	
	public void Download(String DistributionNumber){
		try{
			URL url = new URL("http://dl.rutracker.org/forum/dl.php?t=" + DistributionNumber);				
			URLConnection connection = url.openConnection();
			HttpURLConnection httppost = (HttpURLConnection) connection;
			httppost.setDoInput(true);
		    httppost.setDoOutput(true);

		    httppost.setRequestMethod("POST");

			httppost.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2");
		    httppost.setRequestProperty("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
		    httppost.setRequestProperty("Accept-Language", "ru,en-us;q=0.7,en;q=0.3");
		    httppost.setRequestProperty("Accept-Encoding", "gzip,deflate");
		    httppost.setRequestProperty("Accept-Charset", "windows-1251,utf-8;q=0.7,*;q=0.7");
		    httppost.setRequestProperty("Keep-Alive", "300");
		    httppost.setRequestProperty("Connection", "keep-alive");
		    httppost.setRequestProperty("Referer", "http://rutracker.org/forum/viewtopic.php?t=2587860");
		    httppost.setRequestProperty("Cookie", mCookieData + "; bb_dl=" + DistributionNumber);
		    httppost.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
		    httppost.setRequestProperty("Content-Length", "0");

		    //PrintMapWithList(httppost.getHeaderFields());
		    
		    //DataOutputStream dos = new DataOutputStream(httppost.getOutputStream());
		    //dos.write(b); // bytes[] b of post data

			InputStream inputStream = httppost.getInputStream();
	        if(inputStream != null) {
				//StringBuffer sb = new StringBuffer();
		        int chr = 0;
				FileOutputStream fos = new FileOutputStream(mTorrentFullFileName); 
		        while ((chr = inputStream.read()) != -1) {
		            //sb.append((char) chr);
		            fos.write(chr);
		        }
		        inputStream.close();
	    		fos.flush();
	    		fos.close();  
	        }
	       // String reply = sb.toString();		        	    		
		} catch (Exception ex){
			Log.e(RutrackerDownloaderApp.TAG, ex.toString());
	    }
	}
	
    void PrintMapWithList(Map<String, List<String>> MapList)
    {
        Set map_set = MapList.entrySet();
        Iterator map_it = map_set.iterator();
        
        while(map_it.hasNext())
        {
            Map.Entry map_entry =(Map.Entry)map_it.next();
            String key=(String)map_entry.getKey();
            String resultText = key;
            resultText += ": ";
            List<String> value_list=(List<String>)map_entry.getValue();	            
            Iterator list_it=value_list.iterator();
            while(list_it.hasNext())
            {
              String value=(String)list_it.next();
              resultText += value;
            }
            Log.i(RutrackerDownloaderApp.TAG ,resultText);
        }
    }
}
