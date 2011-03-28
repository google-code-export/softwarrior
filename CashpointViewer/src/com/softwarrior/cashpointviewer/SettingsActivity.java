package com.softwarrior.cashpointviewer;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.SeekBar;
import android.widget.TextView;

public class SettingsActivity extends Activity {
    private RadioButton mRadioGPS;
    private RadioButton mRadioFixed;
    private Button mButtonSetUpLocation;
    private SeekBar mMaxDistanceSeek;
    private TextView mMaxDistanceText;
    private int mMaxDistanceKm;
    private CheckBox mCheckBoxShowCompass;
    private CheckBox mCheckBoxShowMapHoriz;
    private CheckBox mCheckBoxShowMapKey;
    
    private static final int MAX_DISTANCE_KM = 10;
    private static final int DEFAULT_DIST_KM = 9;
    private static final int INFINITY_KM = 10000;
    private static final boolean SHOW_COMPASS_BY_DEFAULT = false;
    private static final boolean SHOW_MAP_HORIZ_BY_DEFAULT = false;
    private static final boolean SHOW_MAP_KEY_BY_DEFAULT = false;
    
    public static final int getDefaultDistanceKm() {
    	return DEFAULT_DIST_KM;
    }
    
    public static final int getMaxDistanceKm() {
    	return MAX_DISTANCE_KM;
    }
    
    public static final boolean showCompassByDefault() {
    	return SHOW_COMPASS_BY_DEFAULT;
    }

    public static final boolean showMapHorizByDefault() {
    	return SHOW_MAP_HORIZ_BY_DEFAULT;
    }

    public static final boolean showMapKeyByDefault() {
    	return SHOW_MAP_KEY_BY_DEFAULT;
    }
    
    @Override
    public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.browser_settings);
	
		mButtonSetUpLocation = (Button)findViewById(R.id.ButtonSetUpLocation);
		mButtonSetUpLocation.setOnClickListener(new View.OnClickListener() {
		    @Override
		    public void onClick(View v) {
				Intent intent = new Intent(SettingsActivity.this, PlanActivity.class);
				intent.putExtra("ShowAll", true);
				startActivity(intent);
		    }
		});
		
		mRadioGPS = (RadioButton)findViewById(R.id.RadioButtonLocationGPS);
		mRadioGPS.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
		    @Override
		    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
		    	mButtonSetUpLocation.setEnabled(!isChecked);
		    }
		});
		
		mRadioFixed = (RadioButton)findViewById(R.id.RadioButtonLocationFixed);
		mRadioFixed.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
		    @Override
		    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
		    	mButtonSetUpLocation.setEnabled(isChecked);
		    }
		});
		
		mMaxDistanceSeek = (SeekBar)findViewById(R.id.MaxDistanceSeek);
		mMaxDistanceText = (TextView)findViewById(R.id.MaxDistanceText);
		mMaxDistanceKm = 1;
		
		mMaxDistanceSeek.setMax(MAX_DISTANCE_KM - 1);
		mMaxDistanceSeek.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
		    @Override
		    public void onStopTrackingTouch(SeekBar seekBar) {
		    }
		    
		    @Override
		    public void onStartTrackingTouch(SeekBar seekBar) {	
		    }
		    
		    @Override
		    public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
			mMaxDistanceKm = progress + 1;
			if (mMaxDistanceKm == MAX_DISTANCE_KM) {
			    mMaxDistanceKm = INFINITY_KM;
			    mMaxDistanceText.setText(getApplicationContext().getResources().getString(R.string.no_restrictions));
			} else
			    mMaxDistanceText.setText("" + mMaxDistanceKm + " km");
		    }
		});
		
		mCheckBoxShowCompass = (CheckBox)findViewById(R.id.CheckBoxShowCompass);
		
		mCheckBoxShowMapHoriz = (CheckBox)findViewById(R.id.CheckBoxShowMapHoriz);
		mCheckBoxShowMapKey = (CheckBox)findViewById(R.id.CheckBoxShowMapKey);
		
		mCheckBoxShowMapKey.setVisibility(View.GONE);	
    }
    
    @Override
    protected void onResume() {
		super.onResume();
		if(GPS.getInstance().isLocationFixed())
		    mRadioFixed.setChecked(true);
		else
		    mRadioGPS.setChecked(true);
		
		SharedPreferences settings = getSharedPreferences("CashpointViewer", Context.MODE_PRIVATE);
		mMaxDistanceKm = settings.getInt("MaxDistanceKm", DEFAULT_DIST_KM);
		if(mMaxDistanceKm == INFINITY_KM)
		    mMaxDistanceSeek.setProgress(MAX_DISTANCE_KM - 1);
		else
		    mMaxDistanceSeek.setProgress(mMaxDistanceKm - 1);
		
		mCheckBoxShowCompass.setChecked(settings.getBoolean("ShowCompass", SHOW_COMPASS_BY_DEFAULT)); 
		mCheckBoxShowMapHoriz.setChecked(settings.getBoolean("ShowMapHoriz", SHOW_MAP_HORIZ_BY_DEFAULT));
		mCheckBoxShowMapKey.setChecked(settings.getBoolean("ShowMapKey", SHOW_MAP_KEY_BY_DEFAULT));
    }
    
    @Override
    protected void onPause() {
    	super.onStop();
    	//Save settings
		boolean fixed = mRadioFixed.isChecked();
		SharedPreferences settings = getSharedPreferences("CashpointViewer", Context.MODE_PRIVATE);
		SharedPreferences.Editor editor = settings.edit();
		editor.putBoolean("UseFixedLocation", fixed);
		editor.putInt("MaxDistanceKm", mMaxDistanceKm);
		editor.putBoolean("ShowCompass", mCheckBoxShowCompass.isChecked());
		editor.putBoolean("ShowMapHoriz", mCheckBoxShowMapHoriz.isChecked());
		editor.putBoolean("ShowMapKey", mCheckBoxShowMapKey.isChecked());
		editor.commit();
		//Propagate settings
		if(fixed)
		    GPS.getInstance().fixLocation(null);
		else
		    GPS.getInstance().unfixLocation();
		
		PlacemarkCollection.getInstance().updateNearestPlacemarks();
    }
}
