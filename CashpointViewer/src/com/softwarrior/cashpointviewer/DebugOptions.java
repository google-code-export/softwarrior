package com.softwarrior.cashpointviewer;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;

import android.content.Context;
import android.util.Log;

public class DebugOptions {
    private static final DebugOptions INSTANCE = new DebugOptions();
    
    private int mSplashTime;
    private float mAzimuthWeight;
    private String mKML_URL;
    private String mSplashFile;
    private boolean mShowMap;
    private static final int DEFAULT_SPLASH_TIME = 3;
    private static final float DEFAULT_AZIMUTH_WEIGHT = 0.95f;
    private static final String DEFAULT_KML_URL = "http://googleearth.arterysolutions.com/filestore/CashpointViewerPlacemarks1.kml";
    private static final String DEFAULT_SPLASH_FILE = "splash.jpg";
    private static final boolean DEFAULT_SHOW_MAP = false;
    
    //Singleton    
    private DebugOptions() {
    }
    
    public void init(Context context) {
	String storagePath = context.getResources().getString(R.string.storage_path);
	String fileName = context.getResources().getString(R.string.debug_options_file);
	Log.d(CashpointViewerApp.TAG, "Loading " + fileName);
	
	FileInputStream fis = null;
	try {
	    fis = new FileInputStream(new File(storagePath + fileName));
	} catch(FileNotFoundException e) {
	    Log.w(CashpointViewerApp.TAG, fileName + " not found");
	    return;
	} catch(SecurityException e) {
	    Log.e(CashpointViewerApp.TAG, "Can't read " + fileName + ": " + e.toString());
	    return;
	}
	
	DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
	try {
	    DocumentBuilder db = dbf.newDocumentBuilder();
	    Document doc = db.parse(fis);
	    
	    boolean success = false;
	    
	    /*
	     * Splash time
	     */
	    
	    NodeList nodes = doc.getElementsByTagName("splash_time");
	    Node node = nodes.item(0);	    
	    if(node !=null && node.getNodeType() == Node.ELEMENT_NODE) {
		Node n = node.getFirstChild();
		if(n != null && n.getNodeType() == Node.TEXT_NODE) {
		    try {
			mSplashTime = Integer.parseInt(((Text)n).getData());
			success = true;
		    } catch(NumberFormatException e) {
		    }
		}
	    }
	    if(!success)
		mSplashTime = DEFAULT_SPLASH_TIME;
	    
	    /*
	     * Azimuth weight
	     */
	    
	    success = false;
	    nodes = doc.getElementsByTagName("azimuth_weight");
	    node = nodes.item(0);
	    if(node != null && node.getNodeType() == Node.ELEMENT_NODE) {
		Node n = node.getFirstChild();
		if(n != null && n.getNodeType() == Node.TEXT_NODE) {
		    try {
			mAzimuthWeight = Float.parseFloat(((Text)n).getData());
			success = true;
		    } catch(NumberFormatException e) {
		    }
		}
	    }
	    if(!success)
		mAzimuthWeight = DEFAULT_AZIMUTH_WEIGHT;

	    /*
	     * KML URL
	     */
	    
	    success = false;
	    nodes = doc.getElementsByTagName("kml_url");
	    node = nodes.item(0);
	    if(node != null && node.getNodeType() == Node.ELEMENT_NODE) {
		Node n = node.getFirstChild();
		if(n != null && n.getNodeType() == Node.TEXT_NODE) {
		    try {
		    mKML_URL = ((Text)n).getData();
			success = true;
		    } catch(NumberFormatException e) {
		    }
		}
	    }
	    if(!success)
	    mKML_URL = DEFAULT_KML_URL;	

	    /*
	     * Splash File
	     */
	    
	    success = false;
	    nodes = doc.getElementsByTagName("splash_file");
	    node = nodes.item(0);
	    if(node != null && node.getNodeType() == Node.ELEMENT_NODE) {
		Node n = node.getFirstChild();
		if(n != null && n.getNodeType() == Node.TEXT_NODE) {
		    try {
		    mSplashFile = ((Text)n).getData();
			success = true;
		    } catch(NumberFormatException e) {
		    }
		}
	    }
	    if(!success)
	    mSplashFile = DEFAULT_SPLASH_FILE;	

	    /*
	     * Show Map
	     */
	    
	    success = false;
	    nodes = doc.getElementsByTagName("show_map");
	    node = nodes.item(0);
	    if(node != null && node.getNodeType() == Node.ELEMENT_NODE) {
		Node n = node.getFirstChild();
		if(n != null && n.getNodeType() == Node.TEXT_NODE) {
	    try {		    
		    String showMap = ((Text)n).getData();
		    if(showMap.contains("true"))
		    	mShowMap = true;
		    else
		    	mShowMap = false;
			success = true;
		    } catch(NumberFormatException e) {
		    }
		}
	    }
	    if(!success)
	    mShowMap = DEFAULT_SHOW_MAP;		    
	} catch(Exception e) {
	    Log.w(CashpointViewerApp.TAG, "Error loading " + fileName);
	}
    }
    
    public static DebugOptions getInstance() {
	return INSTANCE;
    }
    
    @Override
    public Object clone() throws CloneNotSupportedException {
	throw new CloneNotSupportedException();
    }
    
    public int getSplashTime() {
	return mSplashTime;
    }
    
    public float getAzimutWeight() {
	return mAzimuthWeight;
    }
    
    public String getKML_URL() {
   	return mKML_URL;
    }
    
    public String getSplashFile() {
       	return mSplashFile;
    }

    public boolean getShowMap() {
       	return mShowMap;
    }

}
