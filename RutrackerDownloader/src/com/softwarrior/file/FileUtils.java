package com.softwarrior.file;

import java.io.File;

import android.net.Uri;
import android.provider.MediaStore.Audio;
import android.provider.MediaStore.Video;

public class FileUtils {
	/** TAG for log messages. */
	static final String TAG = "FileUtils";

	/**
	 * Whether the URI is a local one.
	 * 
	 * @param uri
	 * @return
	 */
	public static boolean isLocal(String uri) {
		if (uri != null && !uri.startsWith("http://")) {
			return true;
		}
		return false;
	}

	/**
	 * Gets the extension of a file name, like ".png" or ".jpg".
	 * 
	 * @param uri
	 * @return Extension including the dot("."); "" if there is no extension;
	 *         null if uri was null.
	 */
	public static String getExtension(String uri) {
		if (uri == null) {
			return null;
		}

		int dot = uri.lastIndexOf(".");
		if (dot >= 0) {
			return uri.substring(dot);
		} else {
			// No extension.
			return "";
		}
	}

	/**
	 * Returns true if uri is a media uri.
	 * 
	 * @param uri
	 * @return
	 */
	public static boolean isMediaUri(String uri) {
		if (uri.startsWith(Audio.Media.INTERNAL_CONTENT_URI.toString())
				|| uri.startsWith(Audio.Media.EXTERNAL_CONTENT_URI.toString())
				|| uri.startsWith(Video.Media.INTERNAL_CONTENT_URI.toString())
				|| uri.startsWith(Video.Media.EXTERNAL_CONTENT_URI.toString())) {
			return true;
		} else {
			return false;
		}
	}
	
	/**
	 * Convert File into Uri.
	 * @param file
	 * @return uri
	 */
	public static Uri getUri(File file) {
		if (file != null) {
			return Uri.fromFile(file);
		}
		return null;
	}
	
	/**
	 * Convert Uri into File.
	 * @param uri
	 * @return file
	 */
	public static File getFile(Uri uri) {
		if (uri != null) {
			String filepath = uri.getPath();
			if (filepath != null) {
				return new File(filepath);
			}
		}
		return null;
	}
	
	/**
	 * Returns the path only (without file name).
	 * @param file
	 * @return
	 */
	public static File getPathWithoutFilename(File file) {
		 if (file != null) {
			 if (file.isDirectory()) {
				 // no file to be split off. Return everything
				 return file;
			 } else {
				 String filename = file.getName();
				 String filepath = file.getAbsolutePath();
	  
				 // Construct path without file name.
				 String pathwithoutname = filepath.substring(0, filepath.length() - filename.length());
				 if (pathwithoutname.endsWith("/")) {
					 pathwithoutname = pathwithoutname.substring(0, pathwithoutname.length() - 1);
				 }
				 return new File(pathwithoutname);
			 }
		 }
		 return null;
	}

	/**
	 * Constructs a file from a path and file name.
	 * 
	 * @param curdir
	 * @param file
	 * @return
	 */
	public static File getFile(String curdir, String file) {
		String separator = "/";
		  if (curdir.endsWith("/")) {
			  separator = "";
		  }
		   File clickedFile = new File(curdir + separator
		                       + file);
		return clickedFile;
	}
	
	public static File getFile(File curdir, String file) {
		return getFile(curdir.getAbsolutePath(), file);
	}
}
