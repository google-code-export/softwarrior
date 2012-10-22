package com.softwarrior.web;

import java.io.BufferedInputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.zip.GZIPInputStream;

import com.softwarrior.rutrackerdownloaderlite.R;
import com.softwarrior.rutrackerdownloaderlite.RutrackerDownloaderApp;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;

public class SearchStringFactory {
	
	Context mContext;
	String  mCookieData;

	public SearchStringFactory(Context context, String cookieData){
		mContext = context;
		mCookieData = cookieData;
	}
	
	public String GetStringFromKinoafisha(String kinoafishaUrl){				
		String result = "";
		try{
			URL url = new URL(kinoafishaUrl);				
			URLConnection connection = url.openConnection();
			HttpURLConnection httpget = (HttpURLConnection) connection;
			httpget.setDoInput(true);

			httpget.setRequestMethod("GET");

			httpget.setRequestProperty("Accept", "application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5");
			httpget.setRequestProperty("Accept-Charset", "windows-1251,utf-8;q=0.7,*;q=0.3");
			httpget.setRequestProperty("Accept-Encoding", "gzip,deflate,sdch");
			httpget.setRequestProperty("Accept-Language", "en-US,ru-RU;q=0.8,ru;q=0.6,en;q=0.4");
			httpget.setRequestProperty("Connection", "keep-alive");
			httpget.setRequestProperty("Cookie", mCookieData);
			httpget.setRequestProperty("Host","pda.kinoafisha.info");
			
			String referer = "";
			int refererStart = 0;
			int refererEnd = kinoafishaUrl.indexOf("movies/");			
			if(refererEnd>0 && refererStart<refererEnd && refererEnd <= kinoafishaUrl.length()){
				 referer = kinoafishaUrl.substring(refererStart, refererEnd);
			}			
			httpget.setRequestProperty("Referer", referer);
			httpget.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.204 Safari/534.16");

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
            int stringStart = topicText.indexOf("<h1>");
		    int stringEnd = topicText.indexOf("</", stringStart);	
		    if(stringStart>0 && stringEnd>0 && stringStart<stringEnd && stringEnd <= topicText.length()){
		    	result = topicText.substring(stringStart, stringEnd);
		    	if(result!= null){
		    		stringStart = result.lastIndexOf(">");
		    		if(stringStart>0 && stringStart+1<result.length())
		    		result = result.substring(stringStart+1, result.length());
		    	}		    		
		    }			
		} catch (Exception ex){
			Log.e(RutrackerDownloaderApp.TAG, ex.toString());
			Toast.makeText(mContext, mContext.getString(R.string.search_string_error), Toast.LENGTH_SHORT).show();
	    }
		return result;
	}		
}
