package com.softwarrior.cashpointviewer;

import java.util.LinkedList;
import java.util.List;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.ZoomControls;

import com.google.android.maps.GeoPoint;
import com.google.android.maps.MapActivity;
import com.google.android.maps.MapController;
import com.google.android.maps.MapView;
import com.google.android.maps.MyLocationOverlay;
import com.google.android.maps.Overlay;
import com.google.android.maps.OverlayItem;

public class PlanActivity extends MapActivity { // TODO: WakeLock
    private List<Placemark> mPlacemarks;
    private PlanOverlay mPlanOverlay;
    private MapController mMapController;
    private ObserverLocationOverlay mObserverLocation;
    private int mSpanLat;
    private int mSpanLon;
    private int mObserverLat;
    private int mObserverLon;

    public static final int RESULT_CODE_DEFAULT = 0;
    public static final int RESULT_CODE_BACK_PRESSED = 1;

    @Override
    public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		setContentView(R.layout.map_view);
	
		MapView mapView = (MapView) findViewById(R.id.map_view);
		registerForContextMenu(mapView);

		 //Zoom controls
	
		mMapController = mapView.getController();
		ZoomControls zoomControls = (ZoomControls) findViewById(R.id.zoom_controls);
		zoomControls.setOnZoomInClickListener(new View.OnClickListener() {
		    @Override
		    public void onClick(View v) {
			mMapController.zoomIn();
		    }
		});
		zoomControls.setOnZoomOutClickListener(new View.OnClickListener() {
		    @Override
		    public void onClick(View v) {
			mMapController.zoomOut();
		    }
		});
		//Prepare drawables to be used as markers	
		Drawable marker_default = getResources().getDrawable(R.drawable.pin);
	
		//List of placemarks to show	
		mPlacemarks = new LinkedList<Placemark>();
		if (getIntent().getBooleanExtra("ShowAll", false)) {
		    List<Placemark> placemarks = PlacemarkCollection.getInstance()
			    .getAllPlacemarks();
		    for (Placemark p : placemarks) {
			if(p.isLocationValid())
			    mPlacemarks.add(p);
		    }
		} else {
		    Placemark p = PlacemarkCollection.getInstance().getActive();
		    if (p != null)
			mPlacemarks.add(p);
		    else
			Log.e(CashpointViewerApp.TAG, "Active placemark is null");
		}
		//Create overlay and add markers to it	
		mPlanOverlay = new PlanOverlay(this, marker_default);
		for (Placemark p : mPlacemarks) {
		    GeoPoint locationPOI = p.getLocation();
		    if (locationPOI != null) {
			OverlayItem poi = new OverlayItem(locationPOI, p.getName(), "");
			mPlanOverlay.addOverlay(poi);
		    }
		}
		List<Overlay> mapOverlays = mapView.getOverlays();
		if(mPlanOverlay.size() > 0)
		    mapOverlays.add(mPlanOverlay);
	
		 //Observer location	
		mObserverLocation = new ObserverLocationOverlay(
			getApplicationContext(), mapView);
		mapOverlays.add(mObserverLocation);
	
		 //Zoom and pan
		
		SharedPreferences settings = getSharedPreferences("CashpointViewer", Context.MODE_PRIVATE);
		if(settings.contains("PlanActivitySpanLat")
			&& settings.contains("PlanActivitySpanLon")
			&& settings.contains("PlanActivityObserverLat")
			&& settings.contains("PlanActivityObserverLon"))
		{
		    mObserverLat = settings.getInt("PlanActivityObserverLat", 0);
		    mObserverLon = settings.getInt("PlanActivityObserverLon", 0);
		    mSpanLat = settings.getInt("PlanActivitySpanLat", 0);
		    mSpanLon = settings.getInt("PlanActivitySpanLon", 0);
		} else if (!mPlacemarks.isEmpty()) {
		    
		    //Zoom so that all POIs are visible
		    
		    Location locationObserver = GPS.getInstance().getCurrentLocation();
		    if (locationObserver != null) {
			GeoPoint center = mPlanOverlay.getCenter();
			int placemarksCenterLat = center.getLatitudeE6();
			int placemarksCenterLon = center.getLongitudeE6();
			int placemarksSpanLat = mPlanOverlay.getLatSpanE6();
			int placemarksSpanLon = mPlanOverlay.getLonSpanE6();
	
			mObserverLat = (int) (locationObserver.getLatitude() * 1e6);
			mObserverLon = (int) (locationObserver.getLongitude() * 1e6);
			mSpanLat = 2 * Math
				.max(
					Math
						.abs(mObserverLat
							- (placemarksCenterLat - placemarksSpanLat / 2)),
					Math
						.abs(mObserverLat
							- (placemarksCenterLat + placemarksSpanLat / 2)));
			mSpanLon = 2 * Math
				.max(
					Math
						.abs(mObserverLon
							- (placemarksCenterLon - placemarksSpanLon / 2)),
					Math
						.abs(mObserverLon
							- (placemarksCenterLon + placemarksSpanLon / 2)));
		    }
		} else {
		    // St. Petersburg by default
		    mObserverLat = (int)(59.938060 * 1e6);
		    mObserverLon = (int)(30.308416 * 1e6);
		    mSpanLat = mSpanLon = 20000;
		}
		mMapController.zoomToSpan(mSpanLat, mSpanLon);
		mMapController.animateTo(new GeoPoint(mObserverLat, mObserverLon));
		
		setResult(RESULT_CODE_DEFAULT);
    }

    @Override
    protected void onStart() {
		super.onStart();
		GPS.getInstance().startUpdating();
		//MyLocationOverlay must be successfully registered for updates from LocationManager.
		mObserverLocation.enableMyLocation();
    }

    @Override
    protected void onStop() {
		GPS.getInstance().stopUpdating();
		mObserverLocation.disableMyLocation();
		// Save location and span
		MapView mapView = (MapView) findViewById(R.id.map_view);
		mObserverLat = mapView.getMapCenter().getLatitudeE6();
		mObserverLon = mapView.getMapCenter().getLongitudeE6();
		mSpanLat = mapView.getLatitudeSpan();
		mSpanLon = mapView.getLongitudeSpan();
		
		SharedPreferences settings = getSharedPreferences("CashpointViewer", Context.MODE_PRIVATE);
		SharedPreferences.Editor editor = settings.edit();
		editor.putInt("PlanActivityObserverLat", mObserverLat);
		editor.putInt("PlanActivityObserverLon", mObserverLon);
		editor.putInt("PlanActivitySpanLat", mSpanLat);
		editor.putInt("PlanActivitySpanLon", mSpanLon);
		editor.commit();
		
		super.onStop();
    }

    @Override
    protected boolean isRouteDisplayed() {	return false; }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
		if (keyCode == KeyEvent.KEYCODE_BACK)
		    setResult(RESULT_CODE_BACK_PRESSED);
		return super.onKeyDown(keyCode, event);
    }

    @Override
    public void onCreateContextMenu(ContextMenu menu, View v, ContextMenu.ContextMenuInfo menuInfo) {
		MenuInflater inflater = getMenuInflater();
		inflater.inflate(R.menu.map_view, menu);
    }

    @Override
    public boolean onContextItemSelected(MenuItem item) {
		if (item.getItemId() == R.id.setCurrentLocation) {
		    // New fixed location
		    Location loc = new Location(LocationManager.GPS_PROVIDER);
		    GeoPoint pt = mPlanOverlay.getTapPoint();
		    loc.setLatitude(pt.getLatitudeE6() * 1e-6);
		    loc.setLongitude(pt.getLongitudeE6() * 1e-6);
	
		    // save
		    SharedPreferences settings = getSharedPreferences("CashpointViewer",
			    Context.MODE_PRIVATE);
		    SharedPreferences.Editor editor = settings.edit();
		    editor.putFloat("FixedLocationLatitude", (float) loc.getLatitude());
		    editor.putFloat("FixedLocationLongitude", (float) loc
			    .getLongitude());
		    editor.putBoolean("UseFixedLocation", true);
		    editor.commit();
	
		    // and set it
		    GPS.getInstance().fixLocation(loc);
		    return true;
		}
		return false;
    }
}

class ObserverLocationOverlay extends MyLocationOverlay implements GPSObserver {
    private MapView mMapView;

    public ObserverLocationOverlay(Context context, MapView mapView) {
		super(context, mapView);
		mMapView = mapView;
		GPS.getInstance().addObserver(this);
    }

    @Override
    public boolean draw(Canvas canvas, MapView mapView, boolean shadow, long when) {
		Location loc = GPS.getInstance().getCurrentLocation();
		if (loc != null) {
		    GeoPoint pt = new GeoPoint((int) (loc.getLatitude() * 1e6),
			    (int) (loc.getLongitude() * 1e6));
		    drawMyLocation(canvas, mapView, loc, pt, when);
		}
		return true;
    }

    @Override
    public void onLocationChanged(Location location) {
		super.onLocationChanged(location);
		mMapView.invalidate();
    }

    @Override
	public void onAvailabilityChanged(boolean available) {
    }
}
