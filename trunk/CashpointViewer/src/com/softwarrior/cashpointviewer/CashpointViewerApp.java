package com.softwarrior.cashpointviewer;

import android.app.Application;

public class CashpointViewerApp extends Application {
	
	public static final String TAG = "Softwarrior";
	
	@Override
    public void onCreate() {
	super.onCreate();
	DebugOptions.getInstance().init(this);
	CompassSensor.getInstance().init(this);
	GPS.getInstance().init(this);
	AccelerometerSensor.getInstance().init(this);
	MagnetometerSensor.getInstance().init(this);
	LayersCollection.getInstance().init(this);
	SDCardBroadcastReceiver.addObserver(new SDCardMountObserver(this));
    }
}
