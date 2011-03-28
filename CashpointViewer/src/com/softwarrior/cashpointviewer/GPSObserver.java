package com.softwarrior.cashpointviewer;

import android.location.Location;

public interface GPSObserver {
    public void onLocationChanged(Location location);
    public void onAvailabilityChanged(boolean available); 
}
