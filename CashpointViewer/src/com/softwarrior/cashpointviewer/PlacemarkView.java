package com.softwarrior.cashpointviewer;

import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.location.Location;
import android.view.Gravity;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.Gallery;
import android.widget.LinearLayout;
import android.widget.TextView;

public class PlacemarkView extends LinearLayout implements GPSObserver, CompassObserver {
    private Context mContext;
    private Gallery mGallery;
    private PlacemarkCollectionAdapter mPCollAdapter;
    private List<Placemark> mVisiblePlacemarks = new LinkedList<Placemark>();
    private TextView mTextView;
    private Animation mFadeInAnimation;
    private Animation mFadeOutAnimation;
    
    private float mFOV;
    
    private static Paint mPaintLine;
    
    static {
		mPaintLine = new Paint();
		mPaintLine.setColor(0xFFFF7F27);
		mPaintLine.setAntiAlias(true);
		mPaintLine.setStrokeWidth(3.0f);
    }

    public PlacemarkView(Context context, float fov) {
		super(context);
		setOrientation(LinearLayout.VERTICAL);
		
		mContext = context;
		mFOV = fov;
	
		//Prepare animations	
		mFadeInAnimation = AnimationUtils.loadAnimation(context, R.anim.fade_in);
		mFadeOutAnimation = AnimationUtils.loadAnimation(context, R.anim.fade_out);
	
		mFadeOutAnimation.setAnimationListener(new Animation.AnimationListener() {
		    @Override
		    public void onAnimationStart(Animation animation) {
		    }		    
		    @Override
		    public void onAnimationRepeat(Animation animation) {
		    }
		    @Override
		    public void onAnimationEnd(Animation animation) {
				// Gallery was not empty when animated, make it so.
				mPCollAdapter.setPlacemarks(mVisiblePlacemarks);
				mPCollAdapter.notifyDataSetChanged();
		    }
		});
		//Text view where placemark name will be shown
		mTextView = new TextView(context);
		mTextView.setTextSize(16.0f);
		mTextView.setTextColor(0xFFFF7F27);
		mTextView.setTypeface(Typeface.create((String)null, Typeface.BOLD));
		mTextView.setGravity(Gravity.CENTER_HORIZONTAL);
		addView(mTextView, new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT));
	
		mPCollAdapter = new PlacemarkCollectionAdapter(context);
	
		//Gallery containing placemark images
		
		mGallery = new Gallery(context);
		mGallery.setOnItemClickListener(new AdapterView.OnItemClickListener() {
	    @Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
				Placemark pm = (Placemark) mGallery.getSelectedItem();
				if (pm != null) {
				    PlacemarkCollection.getInstance().setActive(pm);
				    Intent intent = new Intent(view.getContext(), PlacemarkActivity.class);
				    mContext.startActivity(intent);
				}
		    }
		});
		mGallery.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
		    @Override
			public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
				Placemark pm = (Placemark)mGallery.getSelectedItem();
				if(pm != null)
				    mTextView.setText(pm.getName() + String.format("(%.1f km)", pm.getDistance() / 1000.0f));
		    }
		    @Override
			public void onNothingSelected(AdapterView<?> parent) {
		    	mTextView.setText("");
		    }
		});
		mGallery.setAdapter(mPCollAdapter);
		addView(mGallery, new LayoutParams(LayoutParams.FILL_PARENT, LayoutParams.WRAP_CONTENT));
	
		GPS.getInstance().addObserver(this);
		CompassSensor.getInstance().addObserver(this);
	
		setWillNotDraw(false);
    }

    @Override
    protected synchronized void onDraw(Canvas canvas) {
    	super.onDraw(canvas);

		if(!mVisiblePlacemarks.isEmpty()) {
		    
		    float azimuth = CompassSensor.getInstance().getLastData();
		    int canvasWidth = canvas.getWidth();
		    long selectedId = mGallery.getSelectedItemId();
		    
		    // Draw placemarks
		    for(Placemark pm : mVisiblePlacemarks) {
				float a = pm.getBearing() - azimuth;
				int x = canvasWidth / 2 + angleToPixels(canvasWidth, a);
				int y = (canvas.getHeight() * 2 / 3);
				if(pm.getId() == selectedId) {
				    // Draw a line between the selected placemark and the corresponding ImageView.
				    View v = mGallery.getSelectedView();
				    int xline = (v.getLeft() + v.getRight()) / 2;
				    int yline = v.getBottom();		  
				    canvas.drawLine(x, y, xline, yline, mPaintLine);
				}
				pm.draw(x, y, canvas);
		    }
		}
    }
    
    //Private methods
    private synchronized void updateVisiblePlacemarks() {	
		// Determine visibility, fill in the list
		LinkedList<Placemark> visiblePlacemarks = new LinkedList<Placemark>();
		List<Placemark> placemarks = PlacemarkCollection.getInstance().getNearestPlacemarks();
		float azimuth = CompassSensor.getInstance().getLastData();
		for (Placemark pm : placemarks) {
		    if (Math.abs(azimuth - pm.getBearing()) < mFOV)
			visiblePlacemarks.add(pm);
		}
		
		// Keep sorted by bearing
		Collections.sort(visiblePlacemarks, new Comparator<Placemark>() {
		    @Override
		    public int compare(Placemark p1, Placemark p2) {
			float b1 = p1.getBearing();
			float b2 = p2.getBearing();
			return b1 < b2 ? -1 : (b1 == b2 ? 0 : 1);
		    }
		});
		
		// Update only when actually changed
		if(!mVisiblePlacemarks.equals(visiblePlacemarks)) {
		    mVisiblePlacemarks = visiblePlacemarks;
		    
		    if (mVisiblePlacemarks.isEmpty()) {
			// Do not change gallery contents, just fade out.
			// Placemark dot and the line are already invisible,
			// not need to fade out anything except the gallery.
		    	mGallery.startAnimation(mFadeOutAnimation);
		    } else {
			if(mPCollAdapter.isEmpty())
			    startAnimation(mFadeInAnimation);
			
			long selected = mGallery.getSelectedItemId();
			mPCollAdapter.setPlacemarks(mVisiblePlacemarks);
			mPCollAdapter.notifyDataSetChanged();
	
			// Keep selected element centered
			for (int i = 0; i < mGallery.getCount(); ++i) {
			    long id = mGallery.getItemIdAtPosition(i);
			    if (id == selected) {
				mGallery.setSelection(i);
				break;
			    }
			}
		    }
		}
    }
    
    private int angleToPixels(int canvasWidth, float angle) {
    	return (int) (angle * canvasWidth / (mFOV * 2));
    }
    //GPS observer    
    @Override
    public void onAvailabilityChanged(boolean available) {
    }

    @Override
    public void onLocationChanged(Location location) {
		PlacemarkCollection.getInstance().updateNearestPlacemarks(location);
		updateVisiblePlacemarks();
		invalidate();
    }
    //Compass observer
    @Override
    public void onNewSensorData(int sensorType, Float azimuth) {
		updateVisiblePlacemarks();
		invalidate();
    }
}
