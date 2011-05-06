package com.softwarrior.file;

import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;


public class VersionUtils {
	
	//Get current version code.
	public static int getVersionCode(Context context) {
		int version = 0;
		try {
			PackageInfo pi = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
			version = pi.versionCode;
		} catch (PackageManager.NameNotFoundException e) {
			Log.e(RutrackerDownloaderApp.TAG, "Package name not found", e);
		};
		return version;
	}
	
	//Get current version number.
	public static String getVersionNumber(Context context) {
		String version = "?";
		try {
			PackageInfo pi = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
			version = pi.versionName;
		} catch (PackageManager.NameNotFoundException e) {
			Log.e(RutrackerDownloaderApp.TAG, "Package name not found", e);
		};
		return version;
	}
	
//	 Get application name.
//	 Since API level 4 this routine could be replaced by
//	 appname = getString(getApplicationInfo().labelRes);
	public static String getApplicationName(Context context) {
		String name = "?";
		try {
			PackageInfo pi = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
			name = context.getString(pi.applicationInfo.labelRes);
		} catch (PackageManager.NameNotFoundException e) {
			Log.e(RutrackerDownloaderApp.TAG, "Package name not found", e);
		};
		return name;
	}

	//Get application icon. 
	//Since API level 4 this routine could be replaced by
	//icon = getApplicationInfo().icon;
	public static int getApplicationIcon(Context context) {
		int icon = 0;
		try {
			PackageInfo pi = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
			icon = pi.applicationInfo.icon;
		} catch (PackageManager.NameNotFoundException e) {
			Log.e(RutrackerDownloaderApp.TAG, "Package name not found", e);
		};
		return icon;
	}
}
