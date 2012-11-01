package com.softwarrior.about;

import com.softwarrior.rutrackerdownloaderlite.DownloaderApp;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;

public class AboutUtils {

	public static String getTextFromArray(final String[] array) {
		if (array == null) {
			return "";
		}
		String text = "";
		for (String person : array) {
			text += person + "\n";
		}
		if (text.length() > 0) {
			// delete last "\n"
			text = text.substring(0, text.length() - 1);
		}
		return text;
	}
	
	

	//Get String array from Extra or from Meta-data through resources.
	public static String[] getStringArrayMetadata(final Context context, final String packagename,
			final Intent intent,  final String metadata) {
		 {
	        //Try meta data of package
	        Bundle md = null;
	        try {
	                md = context.getPackageManager().getApplicationInfo(
						packagename, PackageManager.GET_META_DATA).metaData;
	        } catch (NameNotFoundException e) {
	            Log.e(DownloaderApp.TAG, "Package name not found", e);
	        }
	
	        if (md != null) {
	        	String[] array = null;
            	try {
            		int id = md.getInt(metadata);
            		Resources resources = context.getPackageManager()
						.getResourcesForApplication(packagename);
            		array = resources.getStringArray(id);
	        	} catch (NameNotFoundException e) {
            		Log.e(DownloaderApp.TAG, "Package name not found ", e);
	        	} catch (NumberFormatException e) {
            		Log.e(DownloaderApp.TAG, "Metadata not valid id.", e);
	        	} catch (Resources.NotFoundException e) {
            		Log.e(DownloaderApp.TAG, "Resource not found.", e);
	        	}
	        	
	        	if (array != null) {
        			return array;
            	} else {
            		return null;
            	}
	        } else {
	        	return null;
	        }
		}
	}

	 //Get string from extra or from metadata.
	public static String getStringMetadata(final Context context, final String packagename,
			final Intent intent, final String metadata) {
		 {
	        //Try meta data of package
	        Bundle md = null;
	        try {
	                md = context.getPackageManager().getApplicationInfo(
						packagename, PackageManager.GET_META_DATA).metaData;
	        } catch (NameNotFoundException e) {
	            Log.e(DownloaderApp.TAG, "Package name not found", e);
	        }
	
	        if (md != null
					&& !TextUtils.isEmpty(md
							.getString(metadata))) {
	        	return md
				.getString(metadata);
	        } else {
	    		return "";
	        }
	
		}
	}
	
	//Get resource ID from extra or from metadata.
	public static int getResourceIdMetadata(final Context context, final String packagename,
			final Intent intent, final String metadata) {
		{
	        //Try meta data of package
	        Bundle md = null;
	        try {
	                md = context.getPackageManager().getApplicationInfo(
						packagename, PackageManager.GET_META_DATA).metaData;
	        } catch (NameNotFoundException e) {
	            Log.e(DownloaderApp.TAG, "Package name not found", e);
	        }
	
	        if (md != null) {
	        	// Obtain resource ID and convert to resource name:
	        	int id = md.getInt(metadata);

	        	return id;
	        } else {
	    		return 0;
	        }
	
		}
	}
}
