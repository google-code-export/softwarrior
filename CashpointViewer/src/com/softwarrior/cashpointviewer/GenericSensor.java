package com.softwarrior.cashpointviewer;

import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.Log;


interface SensorObserver<T> {
    public void onNewSensorData(int sensorType, T t);
}

public abstract class GenericSensor <T, U extends SensorObserver<T>> {
    private HashSet<WeakReference<U>> mObservers = new HashSet<WeakReference<U>>();
    private SensorManager mSensorManager;
    private Sensor mSensor;
    private Updater mSensorListener = new Updater();
    private T mLastData;
    private boolean mRegistered;
    
    public void init(Context context) {
	mSensorManager = (SensorManager)context.getSystemService(Context.SENSOR_SERVICE);
	if(mSensorManager == null)
	    throw new CashpointException("Sensor manager unavailable");
	
	mSensor = mSensorManager.getDefaultSensor(getSensorType());
	if(mSensor == null)
	    throw new CashpointException("Sensor (type " + getSensorType() + ") is unavailable");
	
	mLastData = getDefaultData();
    }
    
    /*
     * Public methods
     */
    
    public boolean addObserver(U observer) {
	boolean result = mObservers.add(new WeakReference<U>(observer));
	cleanObservers();
	return result;
    }
    
    public boolean removeObserver(U observer) {
	Iterator<WeakReference<U>> it = mObservers.iterator();
	while (it.hasNext()) {
	    if (it.next().get() == observer) {
		it.remove();
		return true;
	    }
	}
	return false;
    }
    
    public synchronized void startUpdating() {
	if(mSensor!= null && !mRegistered) {
	    mRegistered = mSensorManager.registerListener(mSensorListener, mSensor, SensorManager.SENSOR_DELAY_UI);
	    if(mRegistered)
		Log.d(CashpointViewerApp.TAG, "Started updating sensor: " + mSensor.getName());
	    else
		Log.e(CashpointViewerApp.TAG, "Couldn't register sensor: " + mSensor.getName());
	}
    }
    
    public synchronized void stopUpdating() {
	if(mSensor != null && mRegistered) {
	    mSensorManager.unregisterListener(mSensorListener);
	    mRegistered = false;
	    Log.d(CashpointViewerApp.TAG, "Stopped updating sensor: " + mSensor.getName());
	}
    }
    
    public T getLastData() {
	return mLastData;
    }
    
    /*
     * Protected methods
     */
    
    protected abstract int getSensorType();
    protected abstract T convertSensorData(float[] values);
    protected abstract T getDefaultData();
    
    /*
     * Private methods
     */
    
    private synchronized void cleanObservers() {
	Iterator<WeakReference<U>> it = mObservers.iterator();
	while (it.hasNext()) {
	    if (it.next().get() == null)
		it.remove();
	}
    }
    
    /*
     * Implementation of sensor listener
     */
    
    private class Updater implements SensorEventListener {
	@Override
	public void onAccuracyChanged(Sensor sensor, int accuracy) {}
	
	@Override
	public void onSensorChanged(SensorEvent event) {
	    if (event.sensor.getType() == getSensorType()) {
		mLastData = convertSensorData(event.values.clone());
		synchronized (GenericSensor.this) {
		    for (WeakReference<U> o : mObservers) {
			U observer = o.get();
			if (observer != null)
			    observer.onNewSensorData(getSensorType(), mLastData);
		    }
		    cleanObservers();
		}
	    }
	}
    }
}
