package com.softwarrior.cashpointviewer;

import android.content.Context;
import android.util.Log;


public class SDCardMountObserver {
    private Context mContext;
    
    public SDCardMountObserver(Context context) {
    	mContext = context;
    }
    
    public void onCardMounted() {
		Log.d(CashpointViewerApp.TAG, "onCardMounted()");
		LayersCollection.getInstance().init(mContext);
	//PlacemarkCollection.getInstance().load();
    }
}
