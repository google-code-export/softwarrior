package com.softwarrior.cashpointviewer;

import com.softwarrior.cashpointviewer.anim.GraphicsActivity;

import android.content.Context;
import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.hardware.Camera;
import android.os.Bundle;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.net.Uri;

public class CashpointActivity extends /*FullWakeActivity*/ GraphicsActivity implements AccelerometerObserver {
    private CompassView mCompassView;
    private PlacemarkView mPlacemarkView;
    private ImageButton mMapImageButton;
    
    private Camera 			mCamera;
    private CameraPreview 	mCameraPreview;

    private int mPlanActivityStatus = PLAN_ACTIVITY_STATUS_STOPPING;
    private static final int PLAN_ACTIVITY_STATUS_STOPPED = 0;
    private static final int PLAN_ACTIVITY_STATUS_STARTED = 1;
    private static final int PLAN_ACTIVITY_STATUS_STOPPING = 2;
    private static final int PLAN_ACTIVITY_REQUEST_CODE = 1;
    
    private static boolean MAP_FIRST_START  = true;
    private static boolean SHOW_MAP_HORIZONTAL = false;
    private static Intent  Maps_INTENT 	    = null;

    private static boolean  mFocused = false; 
    
    public static boolean isFocused(){return mFocused;}  
    
    @Override
    public void onWindowFocusChanged (boolean hasFocus){
    	mFocused = hasFocus;
    }

//    private static class SampleView extends View {
//        private AnimateDrawable mDrawable;
//        private AnimateDrawable mDrawable1;
//
//        public SampleView(Context context) {
//            super(context);
//            setFocusable(true);
//            setFocusableInTouchMode(true);
//
//            Drawable dr = context.getResources().getDrawable(R.drawable.map);
//            dr.setBounds(0, 0, dr.getIntrinsicWidth(), dr.getIntrinsicHeight());
//            
//            Animation an = new TranslateAnimation(0, 100, 0, 200);
//            an.setDuration(2000);
//            an.setRepeatCount(-1);
//            an.initialize(10, 10, 10, 10);
//            
//            Animation an1 = new TranslateAnimation(0, 200, 0, 300);
//            an1.setDuration(1000);
//            an1.setRepeatCount(-1);
//            an1.initialize(20, 20, 20, 20);
//
//            mDrawable = new AnimateDrawable(dr, an);
//            an.startNow();        
//            mDrawable1 = new AnimateDrawable(dr, an1);
//            an1.startNow();        
//        }
//        
//        @Override protected void onDraw(Canvas canvas) {
////            canvas.drawColor(Color.WHITE);
//            mDrawable.draw(canvas);
//            mDrawable1.draw(canvas);
//            invalidate();
//        }
//    }
    
    @Override
    public void onCreate(Bundle savedInstanceState) {
    	Log.i(CashpointViewerApp.TAG, "onCreate");
    	super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
		WindowManager.LayoutParams.FLAG_FULLSCREEN); 
    	mCameraPreview = new CameraPreview(this);
//    	setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
        setContentView(mCameraPreview);
        
        CompassSensor.getInstance().init(getApplicationContext());
        
        float fov = 45.0f;
        switch(getResources().getConfiguration().orientation) {
	case Configuration.ORIENTATION_PORTRAIT:
	    fov = 13.0f;
	    break;
	case Configuration.ORIENTATION_LANDSCAPE:
	    fov = 20.0f;
	    break;
	default:
	    assert false : "Unknown device orientation";
	    break;
	}
        
        mCompassView = new CompassView(getApplicationContext(), fov);
        addContentView(mCompassView, new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT));
        
        mPlacemarkView = new PlacemarkView(this, fov);
        addContentView(mPlacemarkView, new LayoutParams(LayoutParams.FILL_PARENT, LayoutParams.FILL_PARENT));
        
//        addContentView(new SampleView(this), new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT));
        
	    /*
         * Add map launching button
         */        
        mMapImageButton = new ImageButton(getApplicationContext());
        mMapImageButton.setImageDrawable(getResources().getDrawable(R.drawable.map_small));
        mMapImageButton.setAdjustViewBounds(true);
        mMapImageButton.setOnClickListener(new OnClickListener() {
	    @Override
	    public void onClick(View v) {
	    	SHOW_MAP_HORIZONTAL = true;
	    	ShowMap(true);
	    	SHOW_MAP_HORIZONTAL = false;
		    mPlanActivityStatus = PLAN_ACTIVITY_STATUS_STOPPED;
	    }
        });
        
         
	LinearLayout linearLayout = new LinearLayout(getApplicationContext());
        linearLayout.setHorizontalGravity(Gravity.CENTER);
        linearLayout.setVerticalGravity(Gravity.BOTTOM);
       	linearLayout.addView(mMapImageButton);
        
	addContentView(linearLayout, new LayoutParams(LayoutParams.FILL_PARENT,
		LayoutParams.FILL_PARENT));
        
        AccelerometerSensor.getInstance().addObserver(this);
        
        mPlanActivityStatus = PLAN_ACTIVITY_STATUS_STOPPED;
    }
    
    @Override
    protected void onStart() {
	    Log.i(CashpointViewerApp.TAG, "onStart");
	   	super.onStart();
		GPS.getInstance().startUpdating();
		CompassSensor.getInstance().startUpdating();
		AccelerometerSensor.getInstance().startUpdating();
		MagnetometerSensor.getInstance().startUpdating();
		
		SharedPreferences settings = getSharedPreferences("CashpointViewer", Context.MODE_PRIVATE);
		mCompassView.setVisibility(settings.getBoolean("ShowCompass",
			SettingsActivity.showCompassByDefault()) ? View.VISIBLE
			: View.GONE);		

		boolean showMapHoriz =  settings.getBoolean("ShowMapHoriz",SettingsActivity.showMapHorizByDefault());
		//boolean showMapKey =  settings.getBoolean("ShowMapKey",SettingsActivity.showMapKeyByDefault());
		
		/*
		if(showMapKey)
			mMapImageButton.setVisibility(View.VISIBLE);
		else
			mMapImageButton.setVisibility(View.GONE);	
		*/
		mMapImageButton.setVisibility(View.GONE);
		
//		// Mark this activity as the last started one
//		SharedPreferences.Editor editor = settings.edit();
//		editor.putString("LastStartedActivity", "CashpointActivity");
//		editor.commit();
	
		if((SHOW_MAP_HORIZONTAL == false) &&  (showMapHoriz == true))
			MAP_FIRST_START = true; 
	
		SHOW_MAP_HORIZONTAL = showMapHoriz;
    }

    @Override
    protected void onResume() {
	    super.onResume();
	    Log.i(CashpointViewerApp.TAG, "onResume");

	    mCamera = Camera.open();
		mCameraPreview.SetCamera(mCamera);

	    GPS.getInstance().startUpdating();
	    AccelerometerSensor.getInstance().startUpdating();
	    MagnetometerSensor.getInstance().startUpdating();
	    CompassSensor.getInstance().startUpdating();
    }

    @Override
    protected void onPause() {
	    super.onPause();
	    Log.i(CashpointViewerApp.TAG, "onPause");
	    if (mCamera != null) 
	    {
		   	mCameraPreview.SetCamera(null);
		    mCamera.release();
		    mCamera = null;
		}
	    GPS.getInstance().stopUpdating();
	    //AccelerometerSensor.getInstance().stopUpdating();
	    MagnetometerSensor.getInstance().stopUpdating();
	    CompassSensor.getInstance().stopUpdating();
    }
 
    @Override
    protected void onStop() {
	    Log.i(CashpointViewerApp.TAG, "onStop");
	    super.onStop();
    }
       
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
		MenuInflater inflater = getMenuInflater();
		inflater.inflate(R.menu.main_menu, menu);
		return super.onCreateOptionsMenu(menu);
    }
    
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
	if(item.getItemId() == R.id.browserSettings) {
	    Intent intent = new Intent(this, SettingsActivity.class);
	    startActivity(intent);
	    return true;
	} else if(item.getItemId() == R.id.chooseLayers) {
	    Intent intent = new Intent(this,ChooseLayersActivity.class);
	    intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
	    startActivity(intent);
	    return true;
	} else if(item.getItemId() == R.id.aboutApp) {
	    Intent intent = new Intent(this, AboutActivity.class);
	    startActivity(intent);
	    return true;
	} else if(item.getItemId() == R.id.exitApp) {
	    finish();
	    return true;
	}
	return false;
    }
    
    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
		Log.i(CashpointViewerApp.TAG, "onKeyDown");
    	if(keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0){
			Log.i(CashpointViewerApp.TAG, "KEYCODE_BACK");
	    	MAP_FIRST_START = true;
		    return true;
		}
		return super.onKeyDown(keyCode, event);
	 }
    
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
	if (requestCode == PLAN_ACTIVITY_REQUEST_CODE) {
		Log.i(CashpointViewerApp.TAG, "PLAN_ACTIVITY_REQUEST_CODE, result=" + resultCode);		
	} else
	    finish();
    }
    
    private void ShowMap(boolean horizontal)
    {
		if(CashpointActivity.isFocused() || (mPlanActivityStatus == PLAN_ACTIVITY_STATUS_STARTED))
		{
			if(SHOW_MAP_HORIZONTAL)
			{
				if (horizontal) {
				    if (mPlanActivityStatus == PLAN_ACTIVITY_STATUS_STOPPED) {
				    ComponentName componentName = new ComponentName("com.google.android.apps.maps","com.google.android.maps.MapsActivity");
				    if(MAP_FIRST_START == true)
				    {
				    	String mapsUrl = String.format("http://maps.google.com/maps?q=%s", DebugOptions.getInstance().getKML_URL());
				    	Maps_INTENT = new Intent(android.content.Intent.ACTION_VIEW, Uri.parse(mapsUrl));
				    	Maps_INTENT.setComponent(componentName);
				    	Maps_INTENT.putExtra("ShowAll", true);
				    	MAP_FIRST_START = false;
				    }
				    else
				    {
				    	Maps_INTENT = new Intent();
				    	Maps_INTENT.setComponent(componentName);
				    	Maps_INTENT.putExtra("ShowAll", true);
				    }
				    	mPlanActivityStatus = PLAN_ACTIVITY_STATUS_STARTED;
				    	Log.i(CashpointViewerApp.TAG, "Maps_INTENT");
				    	startActivityIfNeeded(Maps_INTENT, PLAN_ACTIVITY_REQUEST_CODE);
				    }
				} else {
				    if (mPlanActivityStatus == PLAN_ACTIVITY_STATUS_STARTED) {
						finishActivity(PLAN_ACTIVITY_REQUEST_CODE);
					    mPlanActivityStatus = PLAN_ACTIVITY_STATUS_STOPPED;
				        Log.i(CashpointViewerApp.TAG, "CashpointActivity");
						Intent intent = new Intent(this,CashpointActivity.class);
						intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
						startActivityIfNeeded(intent, 0);

				    }
				}
			}
		}    	
    }

    @Override
    public void onNewSensorData(int sensorType, float[] values) {
		float g0 = Math.abs(values[0]);
		float g1 = Math.abs(values[1]);
		float g2 = Math.abs(values[2]) / 2.0f;
		boolean horizontal = g0 < g2 && g1 < g2;
	
		/*
		 * Launch or finish map sub-activity depending on the tilt angle
		 */		
		ShowMap(horizontal);
    }    
}
