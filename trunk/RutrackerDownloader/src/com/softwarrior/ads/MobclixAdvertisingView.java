package com.softwarrior.ads;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import com.mobclix.android.sdk.MobclixAdView;
import com.mobclix.android.sdk.MobclixAdViewListener;
import com.mobclix.android.sdk.MobclixFullScreenAdView;
import com.mobclix.android.sdk.MobclixFullScreenAdViewListener;
import com.mobclix.android.sdk.MobclixIABRectangleMAdView;
import com.mobclix.android.sdk.MobclixMMABannerXLAdView;

import com.softwarrior.rutrackerdownloader.R;
import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp;

public class MobclixAdvertisingView extends Activity implements MobclixAdViewListener, MobclixFullScreenAdViewListener{
	
	MobclixIABRectangleMAdView adview;
	MobclixMMABannerXLAdView adview_banner;
    MobclixFullScreenAdView fsAdView;

    Button getFSAd;
    Button displayFSAd;
    Button getAndDisplayFSAd;
    
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mobclix_advertising_view);
        
        adview = (MobclixIABRectangleMAdView) findViewById(R.id.advertising_rectangle_view);
        adview.addMobclixAdViewListener(this);
        adview_banner = (MobclixMMABannerXLAdView) findViewById(R.id.advertising_banner_view);
        adview_banner.addMobclixAdViewListener(this);

        Button refreshAds = (Button) findViewById(R.id.refresh_ads);
        refreshAds.setOnClickListener(new View.OnClickListener() {
        	public void onClick(View view) {
        		adview.getAd();
        		adview_banner.getAd();
        	}
        });
        
        fsAdView = new MobclixFullScreenAdView(MobclixAdvertisingView.this);
        fsAdView.addMobclixAdViewListener(MobclixAdvertisingView.this);
        
        getFSAd = (Button) findViewById(R.id.fullscreen_get);
        getFSAd.setOnClickListener(new View.OnClickListener() {
        	
        	public void onClick(View view) {
                fsAdView.requestAd();
                getFSAd.setEnabled(false);
                getAndDisplayFSAd.setEnabled(false);
        	}
        	
        });
        
        displayFSAd = (Button) findViewById(R.id.fullscreen_display);
        displayFSAd.setEnabled(false);
        displayFSAd.setOnClickListener(new View.OnClickListener() {
        	
        	public void onClick(View view) {
                fsAdView.displayRequestedAd();
        	}
        	
        });
        
        getAndDisplayFSAd = (Button) findViewById(R.id.fullscreen_get_and_display);
        getAndDisplayFSAd.setOnClickListener(new View.OnClickListener() {
        	
        	public void onClick(View view) {
                fsAdView.requestAndDisplayAd();
                getFSAd.setEnabled(false);
                getAndDisplayFSAd.setEnabled(false);
        	}
        	
        });
    }
    
	public void onSuccessfulLoad(MobclixAdView view) {
		Log.v(RutrackerDownloaderApp.TAG, "The ad request was successful!");
		view.setVisibility(View.VISIBLE);
	}
	public void onFailedLoad(MobclixAdView view, int errorCode) {
		Log.v(RutrackerDownloaderApp.TAG, "The ad request failed with error code: " + errorCode);
		view.setVisibility(View.GONE);
	}
	public void onAdClick(MobclixAdView adView) {
		Log.v(RutrackerDownloaderApp.TAG, "Ad clicked!");
	}
	public void onCustomAdTouchThrough(MobclixAdView adView, String string) {
		Log.v(RutrackerDownloaderApp.TAG, "The custom ad responded with '" + string + "' when touched!");
	}
	public boolean onOpenAllocationLoad(MobclixAdView adView, int openAllocationCode) {
		Log.v(RutrackerDownloaderApp.TAG, "The ad request returned open allocation code: " + openAllocationCode);
		return false;
	}
	
	public String keywords()	{ return "sport,tabaco,sex,girl,boy,taxy,flowers,eat,fly,train,game,buy";}
	public String query()		{ return "query";}
	
	public void onDismissAd(MobclixFullScreenAdView adview) {
		Log.v(RutrackerDownloaderApp.TAG, "MobclixFullScreenAdView dismissed.");
	}
	public void onFailedLoad(MobclixFullScreenAdView adview, int errorCode) {
		Log.v(RutrackerDownloaderApp.TAG, "MobclixFullScreenAdView failed to load with error code: " + errorCode);
		getFSAd.setEnabled(true);
		displayFSAd.setEnabled(false);
		getAndDisplayFSAd.setEnabled(true);
	}
	public void onFinishLoad(MobclixFullScreenAdView adview) {
		Log.v(RutrackerDownloaderApp.TAG, "MobclixFullScreenAdView loaded.");
		Toast.makeText(this, getString(R.string.ads_full_screen_ad_loaded), 10).show();
		getFSAd.setEnabled(false);
		displayFSAd.setEnabled(true);
		getAndDisplayFSAd.setEnabled(false);
	}
	public void onPresentAd(MobclixFullScreenAdView adview) {
		Log.v(RutrackerDownloaderApp.TAG, "MobclixFullScreenAdView presented.");
		getFSAd.setEnabled(true);
		displayFSAd.setEnabled(false);
		getAndDisplayFSAd.setEnabled(true);
	}
}