package com.softwarrior.web;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.util.zip.GZIPInputStream;

import com.softwarrior.rutrackerdownloader.DownloadService;
import com.softwarrior.rutrackerdownloader.R;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;

public class TorrentDownloader {
	
	String mCookieData;
	String mTorrentSavePath;
	Context mContext;

	public TorrentDownloader(Context context, String CookieData, String TorrentSavePath){
		mContext = context;
		mCookieData = CookieData;
		mTorrentSavePath = TorrentSavePath;
	}
	
	private String GetNNMDistributionNumber(String DistributionNumber){				
		String result = DistributionNumber;
		try{
			URL url = new URL(RutrackerDownloaderApp.NN_TorrentTopic + DistributionNumber);				
			URLConnection connection = url.openConnection();
			HttpURLConnection httpget = (HttpURLConnection) connection;
			httpget.setDoInput(true);

			httpget.setRequestMethod("GET");

			httpget.setRequestProperty("Accept", "application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5");
			httpget.setRequestProperty("Accept-Charset", "windows-1251,utf-8;q=0.7,*;q=0.3");
			httpget.setRequestProperty("Accept-Encoding", "gzip,deflate");
			httpget.setRequestProperty("Accept-Language", "en-US,ru-RU;q=0.8,ru;q=0.6,en;q=0.4");
			httpget.setRequestProperty("Connection", "keep-alive");
			httpget.setRequestProperty("Cookie", mCookieData);
			httpget.setRequestProperty("Host","www.nnm-club.ru");
			httpget.setRequestProperty("Referer", RutrackerDownloaderApp.NN_SearchUrlPrefix);
			httpget.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.151 Safari/534.16");

			httpget.connect();
			
            StringBuffer sb = new StringBuffer();
            GZIPInputStream gzipInput = new GZIPInputStream(new BufferedInputStream(httpget.getInputStream()));
            InputStreamReader inputStream = new InputStreamReader(gzipInput, "cp-1251");
            if(inputStream != null) {
		        int length = 0;
		        char [] readArray = new char[1024];
		        while ((length = inputStream.read(readArray)) != -1) {
		        	sb.append(readArray, 0, length);
		        }
		        inputStream.close();
	        }
            String topicText = sb.toString();            
            int downStart = topicText.indexOf("download.php?id=");
		    int downEnd = topicText.indexOf("\"", downStart);	
		    if(downStart>0 && downEnd>0 && downStart<downEnd && downEnd <= topicText.length()){
		    	result = topicText.substring(downStart, downEnd);
		    	if(result!= null){
		    		downStart = result.lastIndexOf("=");
		    		if(downStart>0 && downStart+1<result.length())
		    		result = result.substring(downStart+1, result.length());
		    	}		    		
		    }			
		} catch (Exception ex){
			Log.e(RutrackerDownloaderApp.TAG, ex.toString());
			Toast.makeText(mContext, mContext.getString(R.string.torrent_download_error), Toast.LENGTH_LONG).show();
	    }
		return result;
	}	
	
	public boolean DownloadNNM(String DistributionNumber){						
		boolean result = false;
		try{
			String distributionNumber =  GetNNMDistributionNumber(DistributionNumber);
			RutrackerDownloaderApp.TorrentFullFileName = mTorrentSavePath + "[" + DistributionNumber + "]" + ".torrent";			
			URL url = new URL(RutrackerDownloaderApp.NN_TorrentDL + distributionNumber);
			URLConnection connection = url.openConnection();
			HttpURLConnection httpget = (HttpURLConnection) connection;
			httpget.setDoInput(true);
			httpget.setUseCaches(false);
		
			httpget.setRequestProperty("Accept", "application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5");
			httpget.setRequestProperty("Referer", RutrackerDownloaderApp.NN_TorrentTopic + DistributionNumber);
			httpget.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
			httpget.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.134 Safari/534.16");
		    httpget.setRequestProperty("Cookie", mCookieData);			 

			InputStream inputStream = httpget.getInputStream();
	        if(inputStream != null) {
				FileOutputStream fos = new FileOutputStream(RutrackerDownloaderApp.TorrentFullFileName);
				int length = 0;
				byte [] data = new byte[1024];
		        while ((length = inputStream.read(data)) != -1) {
		            fos.write(data,0,length);
		        }
		        inputStream.close();
	    		fos.flush();
	    		fos.close();  
	        }
	        result=RenameTorrentFiles();
		} catch (Exception ex){
			Log.e(RutrackerDownloaderApp.TAG, ex.toString());
			Toast.makeText(mContext, mContext.getString(R.string.torrent_download_error), Toast.LENGTH_LONG).show();
	    }
		if(result == false) RutrackerDownloaderApp.TorrentFullFileName = new String("undefined"); 
		return result;
	}
	
	public boolean Download(String DistributionNumber){
		boolean result = false;
		try{
			RutrackerDownloaderApp.TorrentFullFileName = mTorrentSavePath + "[" + DistributionNumber + "]" + ".torrent";
			URL url = new URL(RutrackerDownloaderApp.TorrentDL + DistributionNumber);				
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
		    httppost.setRequestProperty("Referer", RutrackerDownloaderApp.TorrentTopic + DistributionNumber);
		    httppost.setRequestProperty("Cookie", mCookieData + "; bb_dl=" + DistributionNumber);
		    httppost.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
		    httppost.setRequestProperty("Content-Length", "0");

		    //PrintMapWithList(httppost.getHeaderFields());		    
		    
			InputStream inputStream = httppost.getInputStream();
	        if(inputStream != null) {
				FileOutputStream fos = new FileOutputStream(RutrackerDownloaderApp.TorrentFullFileName);
				int length = 0;
				byte [] data = new byte[1024];
		        while ((length = inputStream.read(data)) != -1) {
		            fos.write(data,0,length);
		        }
		        inputStream.close();
	    		fos.flush();
	    		fos.close();  
	        }
	        result=RenameTorrentFiles();
		} catch (Exception ex){
			Log.e(RutrackerDownloaderApp.TAG, ex.toString());
			Toast.makeText(mContext, mContext.getString(R.string.torrent_download_error), Toast.LENGTH_LONG).show();
	    }
		if(result == false) RutrackerDownloaderApp.TorrentFullFileName = new String("undefined");
		return result;
	}
	
	public static String RemoveSpecialSymbols(String text) {  
	    int length = text.length();  
	    StringBuffer buffer = new StringBuffer(length);  
	    for(int i = 0; i < length; i++) {  
	        char ch = text.charAt(i);
	        if(ch == ' ' || ch == '.' || ch == ',' || ch == '(' || ch == ')' || ch == '[' || ch == ']' || ch == '{' || ch == '}')
	        	ch = '_';
	        if (Character.isDigit(ch) || Character.isLetter(ch) || ch == '_') {  
	            buffer.append(ch);  
	        }  
	    }  
	    return buffer.toString();  
	}  
	
	public boolean RenameTorrentFiles(){
		boolean result = false;
		try{			
			String torrentName = DownloadService.LibTorrent.GetTorrentName(RutrackerDownloaderApp.TorrentFullFileName);		
			if(torrentName != null){
				torrentName = RemoveSpecialSymbols(torrentName);
				URI torrentFullName =  new URI(mTorrentSavePath + torrentName + ".torrent");
				String filepath = torrentFullName.getPath();
				if (filepath != null) {
					File newFile =  new File(filepath);
					File oldfile = new File(RutrackerDownloaderApp.TorrentFullFileName); 
					if(newFile != null && oldfile != null){
						if(oldfile.renameTo(newFile)){
							RutrackerDownloaderApp.TorrentFullFileName = filepath;
							result = true;
						}
					}
				}
			}
		} catch (Exception ex){
			Log.e(RutrackerDownloaderApp.TAG, ex.toString());
	    }
		return result;
	}
	
//    void PrintMapWithList(Map<String, List<String>> MapList)
//    {
//        Set map_set = MapList.entrySet();
//        Iterator map_it = map_set.iterator();
//        
//        while(map_it.hasNext())
//        {
//            Map.Entry map_entry =(Map.Entry)map_it.next();
//            String key=(String)map_entry.getKey();
//            String resultText = key;
//            resultText += ": ";
//            List<String> value_list=(List<String>)map_entry.getValue();	            
//            Iterator list_it=value_list.iterator();
//            while(list_it.hasNext())
//            {
//              String value=(String)list_it.next();
//              resultText += value;
//            }
//            Log.i(RutrackerDownloaderApp.TAG ,resultText);
//        }
//    }
}
