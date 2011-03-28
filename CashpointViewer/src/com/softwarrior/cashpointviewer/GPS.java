package com.softwarrior.cashpointviewer;

import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationProvider;
import android.os.Bundle;
import android.util.Log;


public final class GPS {
    private static final GPS INSTANCE = new GPS();

    private HashSet<WeakReference<GPSObserver>> mObservers = new HashSet<WeakReference<GPSObserver>>();

    private String mCurrentProvider;
    private Location mCurrentLocation;
    private LocationManager mLocationManager;
    private Updater mLocationListener = new Updater();

    private boolean mActive;
    private boolean mGPSProviderAvailable;

    private static final String MOCK_LOCATION_PROVIDER_NAME = "Fixed";

    /*
     * Singleton
     */

    private GPS() {
    }

    public void init(Context context) {

	/*
	 * Acquire location manager
	 */

	mLocationManager = (LocationManager) context
		.getSystemService(Context.LOCATION_SERVICE);
	if (mLocationManager == null)
	    throw new CashpointException("Can't access location service");

	/*
	 * Add mock location provider
	 */

	try {
	    mLocationManager.addTestProvider(MOCK_LOCATION_PROVIDER_NAME,
		    false, false, false, false, false, false, false,
		    Criteria.NO_REQUIREMENT, Criteria.ACCURACY_FINE);
	    mLocationManager.setTestProviderEnabled(
		    MOCK_LOCATION_PROVIDER_NAME, false);
	} catch (SecurityException e) {
	    Log.e(CashpointViewerApp.TAG, "Cannot access mock provider: "
		    + e.toString());
	} catch (IllegalArgumentException e) {
	    Log.w(CashpointViewerApp.TAG, e.toString());
	}

	/*
	 * Load settings
	 */

	SharedPreferences settings = context.getSharedPreferences("CashpointViewer",
		Context.MODE_PRIVATE);
	boolean locationFixed = settings.getBoolean("UseFixedLocation", false);
	float fixedLatitude = settings.getFloat("FixedLocationLatitude", 0.0f);
	float fixedLongitude = settings
		.getFloat("FixedLocationLongitude", 0.0f);
	if (locationFixed) {
	    Location loc = new Location(MOCK_LOCATION_PROVIDER_NAME);
	    loc.setLatitude(fixedLatitude);
	    loc.setLongitude(fixedLongitude);
	    fixLocation(loc);
	} else
	    unfixLocation();
    }

    public static GPS getInstance() {
	return INSTANCE;
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
	throw new CloneNotSupportedException();
    }

    /*
     * Public methods
     */

    public synchronized Location getCurrentLocation() {
	return mCurrentLocation;
    }

    public synchronized boolean addObserver(GPSObserver observer) {
	boolean result = mObservers
		.add(new WeakReference<GPSObserver>(observer));
	if (mCurrentLocation != null)
	    observer.onLocationChanged(new Location(mCurrentLocation));
	cleanObservers();
	return result;
    }

    public synchronized boolean removeObserver(GPSObserver observer) {
	Iterator<WeakReference<GPSObserver>> it = mObservers.iterator();
	while(it.hasNext()) {
	    if(it.next().get() == observer) {
		it.remove();
		return true;
	    }
	}
	return false;
    }

    public synchronized void startUpdating() {
	mLocationManager.requestLocationUpdates(mCurrentProvider, 60000, 0.0f,
		mLocationListener);
	if (mCurrentProvider.equals(LocationManager.GPS_PROVIDER)) {
	    mLocationManager.requestLocationUpdates(
		    LocationManager.NETWORK_PROVIDER, 60000, 0.0f,
		    mLocationListener);
	}
	mActive = true;
    }

    public synchronized void stopUpdating() {
	mLocationManager.removeUpdates(mLocationListener);
	mActive = false;
    }

    public synchronized void fixLocation(Location location) {

	boolean wasActive = mActive;
	stopUpdating();

	/*
	 * Enable mock location provider
	 */

	boolean success = true;
	try {
	    mLocationManager.setTestProviderEnabled(
		    MOCK_LOCATION_PROVIDER_NAME, true);
	    if (location != null) {
		mLocationManager.setTestProviderLocation(
			MOCK_LOCATION_PROVIDER_NAME, location);
	    }
	    mLocationManager.setTestProviderStatus(MOCK_LOCATION_PROVIDER_NAME,
		    LocationProvider.AVAILABLE, null, System
			    .currentTimeMillis());
	} catch (SecurityException e) {
	    Log.e(CashpointViewerApp.TAG, "Cannot access mock provider: "
		    + e.toString());
	    success = false;
	} catch (IllegalArgumentException e) {
	    Log.e(CashpointViewerApp.TAG, e.toString());
	    success = false;
	}

	if (success) {
	    mCurrentProvider = MOCK_LOCATION_PROVIDER_NAME;
	    if(location != null)
		mCurrentLocation = location;
	    else {
		Location loc = mLocationManager.getLastKnownLocation(mCurrentProvider);
		if(loc != null)
		    mCurrentLocation = loc;
	    }
	    notifyObservers();
	}

	if(wasActive)
	    startUpdating();
    }

    public Location getFixedLocation() {
	Location loc = mLocationManager
		.getLastKnownLocation(MOCK_LOCATION_PROVIDER_NAME);
	return loc != null ? new Location(loc) : null;
    }

    public synchronized void unfixLocation() {

	boolean wasActive = mActive;
	stopUpdating();

	/*
	 * Disable mock location provider
	 */

	try {
	    mLocationManager
		    .clearTestProviderStatus(MOCK_LOCATION_PROVIDER_NAME);
	    mLocationManager
		    .clearTestProviderLocation(MOCK_LOCATION_PROVIDER_NAME);
	    mLocationManager.setTestProviderEnabled(
		    MOCK_LOCATION_PROVIDER_NAME, false);
	} catch (SecurityException e) {
	    Log.e(CashpointViewerApp.TAG, "Cannot access mock provider: "
		    + e.toString());
	} catch (IllegalArgumentException e) {
	    Log.e(CashpointViewerApp.TAG, e.toString());
	}

	mCurrentProvider = LocationManager.GPS_PROVIDER;
	mCurrentLocation = mLocationManager
		.getLastKnownLocation(mCurrentProvider);
	notifyObservers();

	if(wasActive)
	    startUpdating();
    }

    public synchronized boolean isLocationFixed() {
	return mCurrentProvider.equals(MOCK_LOCATION_PROVIDER_NAME);
    }

    /*
     * Private methods
     */

    private synchronized void cleanObservers() {
	Iterator<WeakReference<GPSObserver>> it = mObservers.iterator();
	while (it.hasNext()) {
	    if (it.next().get() == null)
		it.remove();
	}
    }

    private synchronized void notifyObservers() {
	if (mCurrentLocation != null) {
	    for (WeakReference<GPSObserver> o : mObservers) {
		GPSObserver observer = o.get();
		if (observer != null)
		    observer.onLocationChanged(mCurrentLocation);
	    }
	}
    }

    /*
     * Implementation of location listener
     */

    private final class Updater implements LocationListener {
	@Override
	public void onLocationChanged(Location location) {
	    /*
	     * Do NOT take into account innacurate data from network location
	     * provider if GPS provider is available.
	     */
	    if (!(mGPSProviderAvailable && mCurrentProvider
		    .equals(LocationManager.NETWORK_PROVIDER))) {
		mCurrentLocation = location;
		notifyObservers();
	    }
	}

	@Override
	public void onProviderDisabled(String provider) {
	    synchronized (this) {
		mGPSProviderAvailable = false;
	    }
	}

	@Override
	public void onProviderEnabled(String provider) {
	    synchronized (this) {
		/*
		 * onStatusChanged() will be called with update on actual data
		 * availability.
		 */
		mGPSProviderAvailable = false;
	    }
	}

	@Override
	public void onStatusChanged(String provider, int status, Bundle extras) {
	    if (provider.equals(LocationManager.GPS_PROVIDER)) {
		synchronized (this) {
		    switch (status) {
		    case LocationProvider.OUT_OF_SERVICE:
		    case LocationProvider.TEMPORARILY_UNAVAILABLE:
			mGPSProviderAvailable = false;
			break;
		    case LocationProvider.AVAILABLE:
			mGPSProviderAvailable = true;
			break;
		    }
		}
	    }
	}
    }
}
