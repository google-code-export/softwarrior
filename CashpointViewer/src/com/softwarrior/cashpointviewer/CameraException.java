package com.softwarrior.cashpointviewer;

import android.util.Log;

class CameraException extends RuntimeException {
    private static final long serialVersionUID = 0L;
    
    public CameraException(String reason) {
	super(reason);
	Log.e(CashpointViewerApp.TAG, reason);
    }

    @Override
    public String toString() {
	return "Camera exception:" + super.toString();
    }
}
