package com.softwarrior.cashpointviewer;

import android.util.Log;

public class CashpointException extends RuntimeException {
    private static final long serialVersionUID = 0L;
    public CashpointException(String reason) {
	super(reason);
	Log.e(CashpointViewerApp.TAG, reason);
    }

    @Override
    public String toString() {
	return "Cashpoint exception:" + super.toString();
    }
}
