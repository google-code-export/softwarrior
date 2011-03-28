package com.softwarrior.cashpointviewer;

import java.util.ArrayList;

import android.graphics.drawable.Drawable;

import com.google.android.maps.GeoPoint;
import com.google.android.maps.ItemizedOverlay;
import com.google.android.maps.MapActivity;
import com.google.android.maps.MapView;
import com.google.android.maps.OverlayItem;

public class PlanOverlay extends ItemizedOverlay<OverlayItem> {
    private MapActivity mActivity;
    private ArrayList<OverlayItem> mOverlays = new ArrayList<OverlayItem>();
    private GeoPoint mTapPoint;
    
    public PlanOverlay(MapActivity activity, Drawable defaultMarker) {
		super(boundCenterBottom(defaultMarker));
		mActivity = activity;
    }
    
    public void addOverlay(OverlayItem overlay) {
		mOverlays.add(overlay);
		populate();
    }
    
    public GeoPoint getTapPoint() {
		return mTapPoint;
    }
    
    @Override
    protected OverlayItem createItem(int i) {
		return mOverlays.get(i);
    }
    
    @Override
    public int size() {
		return mOverlays.size();
    }
    
    @Override
    public boolean onTap(GeoPoint p, MapView mapView) {
		mTapPoint = p;
		mActivity.openContextMenu(mapView);
		return super.onTap(p, mapView);
    }
}
