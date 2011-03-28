package com.softwarrior.cashpointviewer;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.os.Environment;
import android.util.Log;

import com.softwarrior.cashpointviewer.Placemark.PlacemarkLoadException;

public final class PlacemarkCollection {
    private static final PlacemarkCollection INSTANCE = new PlacemarkCollection();
    
    private static Context mContext;
    private static List<Placemark> mPlacemarks = new LinkedList<Placemark>();
    private static List<Placemark> mNearestPlacemarks = new LinkedList<Placemark>();
    private static Placemark mActive;
    
    //Singleton
    private PlacemarkCollection() {}
    
    public void initialize(Context context) {
		mContext = context;
		load();
    }
    
    public static PlacemarkCollection getInstance() {
    	return INSTANCE;
    }
    
    @Override
    public Object clone() throws CloneNotSupportedException {
    	throw new CloneNotSupportedException();
    }
    
    //Public methods
    public synchronized List<Placemark> getAllPlacemarks() {
    	return mPlacemarks;
    }
    
    public synchronized List<Placemark> getNearestPlacemarks() {
    	return mNearestPlacemarks;
    }
    
    public synchronized void updateNearestPlacemarks() {
    	updateNearestPlacemarks(GPS.getInstance().getCurrentLocation());
    }
    
    public synchronized void updateNearestPlacemarks(Location location) {
		if(mContext == null) {
		    Log.e(CashpointViewerApp.TAG, "mContext is null!");
		    return;
		}
		SharedPreferences settings = mContext.getSharedPreferences("CashpointViewer",Context.MODE_PRIVATE);
		float maxDist = settings.getInt("MaxDistanceKm", SettingsActivity.getDefaultDistanceKm()) * 1000.0f;
		
		mNearestPlacemarks.clear();
		if(location != null) {
		    for(Placemark p : mPlacemarks) {
				if(p.isLocationValid()) {
				    Location loc = new Location(location);
				    loc.setLatitude((float)p.getLocation().getLatitudeE6() / 1e6f);
				    loc.setLongitude((float)p.getLocation().getLongitudeE6() / 1e6f);
				    
				    // Distance to the viewer
				    float d = location.distanceTo(loc);
				    p.setDistance(d);
				    
				    // Bearing
				    float bearing = location.bearingTo(loc);
				    if (bearing < 0.0f)
					bearing += 360.0f;
				    p.setBearing(bearing);
				    
				    if(d <= maxDist)
					mNearestPlacemarks.add(p);
				}
		    }
		}
    }
    
    public synchronized boolean setActive(Placemark placemark) {
		if(mPlacemarks.contains(placemark)) {
		    mActive = placemark;
		    return true;
		}
		return false;
    }
    
    public synchronized Placemark getActive() {
    	return mActive;
    }
    
    public synchronized void load() {
		Log.d(CashpointViewerApp.TAG, "PlacemarkCollection.load(): loading placemarks");
		
		clear();
		List<LayerInfo> layers = LayersCollection.getInstance().getLayers();
		int count = 0;
		for(LayerInfo li : layers) {
		    if(li.isActive())
			count += addLayer(li, count);
		}
		updateNearestPlacemarks();
    }
    
    //Private methods
    private synchronized void clear() {
		mActive = null;
		mPlacemarks.clear();
		mNearestPlacemarks.clear();
    }
    
    private synchronized int addLayer(LayerInfo layerInfo, int count) {
    	assert mContext != null;
	
		String storageState = Environment.getExternalStorageState();
		if (!storageState.equals(Environment.MEDIA_MOUNTED)
			&& !storageState.equals(Environment.MEDIA_MOUNTED_READ_ONLY)) 
		{
		    Log.w(CashpointViewerApp.TAG, "addLayer(): Media not mounted");
		    return 0;
		}
		
		String filePath = mContext.getResources().getString(
			R.string.storage_path)
			+ layerInfo.getFile();
		FileInputStream file = null;
		try {
		    file = new FileInputStream(new File(filePath));
		} catch (FileNotFoundException e) {
		    Log.w(CashpointViewerApp.TAG, "addLayer(): File not found");
		    return 0;
		} catch (SecurityException e) {
		    Log.w(CashpointViewerApp.TAG, "addLayer(): Can't read file");
		    return 0;
		}
	
		int result = 0;
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		try {
		    DocumentBuilder db = dbf.newDocumentBuilder();
		    Document doc = db.parse(file);
		    //NodeList placemarks = doc.getElementsByTagName("placemark");
		    NodeList placemarks = doc.getElementsByTagName("Placemark");
		    int numPlacemarks = placemarks.getLength();
		    for (int i = 0; i < numPlacemarks; ++i) {
				Node node = placemarks.item(i);
				if (node.getNodeType() == Node.ELEMENT_NODE) {
				    Placemark placemark = new Placemark(mContext, (Element) node, count + i + 1);
				    mPlacemarks.add(placemark);
				    ++result;
				}
		    }
		    Log.d(CashpointViewerApp.TAG, "Layer loaded successfully");
		} catch (ParserConfigurationException e) {
		    Log.e(CashpointViewerApp.TAG, "Error loading layer: " + e.toString());
		} catch (IOException e) {
		    Log.e(CashpointViewerApp.TAG, "Error loading layer: " + e.toString());
		} catch (SAXException e) {
		    Log.e(CashpointViewerApp.TAG, "Error loading layer: " + e.toString());
		} catch(PlacemarkLoadException e) {
		    Log.e(CashpointViewerApp.TAG, "Error loading placemark: " + e.toString());
		}
		try {
		   file.close();
		} catch(IOException e) {
		}
		return result;
    }
}
