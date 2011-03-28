package com.softwarrior.cashpointviewer;

import android.content.Context;
import android.content.res.Configuration;
import android.hardware.GeomagneticField;
import android.hardware.Sensor;

//Accelerometer
interface AccelerometerObserver extends SensorObserver<float[]> {
}

class AccelerometerSensor extends GenericSensor<float[], AccelerometerObserver> {
    private static final AccelerometerSensor INSTANCE = new AccelerometerSensor();
    
    //Singleton
    private AccelerometerSensor() {}
    
    public static AccelerometerSensor getInstance() {
    	return INSTANCE;
    }
    
    @Override
    public Object clone() throws CloneNotSupportedException {
    	throw new CloneNotSupportedException();
    }
   //Overridden
    @Override
    protected float[] convertSensorData(float[] values) {
    	return values;
    }

    @Override
    protected int getSensorType() {
    	return Sensor.TYPE_ACCELEROMETER;
    }

    @Override
    protected float[] getDefaultData() {
    	return new float[3];
    }
}

//Compass

interface CompassObserver extends SensorObserver<Float> {
}

class CompassSensor extends GenericSensor<Float, CompassObserver> {
    private static final CompassSensor INSTANCE = new CompassSensor();
    
    private float mAzimuth;
    private float mAzimuthAddon;
    private float mWeight1;
    private float mWeight2;
     
    private static final float DECLINATION;
    
    static {
		GeomagneticField gf = new GeomagneticField(59.958152f, 30.300148f,
			0.0f, System.currentTimeMillis());
		DECLINATION = gf.getDeclination();
    }
    //Singleton
    private CompassSensor() {
		mWeight1 = DebugOptions.getInstance().getAzimutWeight();
		mWeight2 = 1.0f - mWeight1;
    }
    
    public static CompassSensor getInstance() {
    	return INSTANCE;
    }
    
    @Override
    public Object clone() throws CloneNotSupportedException {
    	throw new CloneNotSupportedException();
    }

    //Overridden    
    @Override
    public void init(Context context) {
    	super.init(context);
	
		switch(context.getResources().getConfiguration().orientation) {
		case Configuration.ORIENTATION_PORTRAIT:
		    mAzimuthAddon = 0.0f;
		    break;
		case Configuration.ORIENTATION_LANDSCAPE:
		    mAzimuthAddon = 90.0f;
		    break;
		default:
		    assert false : "Unknown device orientation";
		    mAzimuthAddon = 0.0f;
		}
    }
    
    @Override
    protected Float convertSensorData(float[] values) {
		// Average azimuth
		double s1 = Math.sin(Math.toRadians(mAzimuth));
		double c1 = Math.cos(Math.toRadians(mAzimuth));
		double s2 = Math.sin(Math.toRadians(values[0] + mAzimuthAddon
			+ DECLINATION));
		double c2 = Math.cos(Math.toRadians(values[0] + mAzimuthAddon
			+ DECLINATION));
		mAzimuth = (float) Math.toDegrees(Math.atan2(s1 * mWeight1 + s2 * mWeight2, c1
			* mWeight1 + c2 * mWeight2));
		if (mAzimuth < 0.0f)
		    mAzimuth += 360.0f;
		return mAzimuth;
    }

    @Override
    protected int getSensorType() {
    	return Sensor.TYPE_ORIENTATION;
    }

    @Override
    protected Float getDefaultData() {
    	return 0.0f;
    }
}

//Magnetometer
interface MagnetometerObserver extends SensorObserver<float[]> {
}

class MagnetometerSensor extends GenericSensor<float[], MagnetometerObserver> {
    private static final MagnetometerSensor INSTANCE = new MagnetometerSensor();
    
    //Singleton
    private MagnetometerSensor() {}
    
    public static MagnetometerSensor getInstance() {
    	return INSTANCE;
    }
    
    @Override
    public Object clone() throws CloneNotSupportedException {
    	throw new CloneNotSupportedException();
    }
    //Overridden
    @Override
    protected float[] convertSensorData(float[] values) {
    	return values;
    }

    @Override
    protected int getSensorType() {
    	return Sensor.TYPE_MAGNETIC_FIELD;
    }

    @Override
    protected float[] getDefaultData() {
    	return new float[3];
    }
}
