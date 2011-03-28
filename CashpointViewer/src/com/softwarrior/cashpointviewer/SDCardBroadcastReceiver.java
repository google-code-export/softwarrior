package com.softwarrior.cashpointviewer;

import java.util.HashSet;
import java.util.Iterator;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;


public class SDCardBroadcastReceiver extends BroadcastReceiver {
    private static HashSet<SDCardMountObserver> mObservers = new HashSet<SDCardMountObserver>();
    
    @Override
    public void onReceive(Context context, Intent intent) {
		Log.d(CashpointViewerApp.TAG, "onReceive(), intent=" + intent);
		synchronized(mObservers) {
		    for(SDCardMountObserver observer : mObservers)
			observer.onCardMounted();
		}
    }
    
    public static void addObserver(SDCardMountObserver observer) {
		synchronized(mObservers) {
		    mObservers.add(observer);
		}
    }
    
    public static boolean removeObserver(SDCardMountObserver observer) {
		synchronized(mObservers) {
		    Iterator<SDCardMountObserver> it = mObservers.iterator();
		    while(it.hasNext()) {
			if(it.next() == observer) {
			    it.remove();
			    return true;
			}
		    }
		    return false;
		}
    }
}
