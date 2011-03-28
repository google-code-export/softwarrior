package com.softwarrior.cashpointviewer;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;

import android.net.Uri;
import android.location.Location;
import android.content.ComponentName;

public class PlacemarkActivity extends FullWakeActivity {
    private Placemark mPlacemark;
    
    @Override
    public void onCreate(Bundle savedInstanceState) {
    	super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		setContentView(R.layout.placemark_background);
		
		LayoutInflater inflater = LayoutInflater.from(this);
		View foreground = inflater.inflate(R.layout.placemark_foreground, null);
		addContentView(foreground, new LayoutParams(LayoutParams.FILL_PARENT,
			LayoutParams.FILL_PARENT));
		
		mPlacemark = PlacemarkCollection.getInstance().getActive();
	
		if(mPlacemark != null) {
		    TextView textView = (TextView)findViewById(R.id.placemark_name);
		    textView.setText(mPlacemark.getName());
		    
		    ImageView imageView = (ImageView)findViewById(R.id.placemark_photo);
		    imageView.setImageBitmap(mPlacemark.getPhoto());
	
		    // 'Direction' button
		    ImageButton buttonDirection = (ImageButton)findViewById(R.id.button_direction);
		    if (mPlacemark.isLocationValid()) {
			buttonDirection.setOnClickListener(new View.OnClickListener() {
			    @Override
			    public void onClick(View v) {
					ComponentName componentName = new ComponentName("com.google.android.apps.maps","com.google.android.maps.MapsActivity");
					//String mapsUrl =  String.format("geo:%f,%f", mPlacemark.getLatitude(),  mPlacemark.getLongitude());
					Location currentLocation = GPS.getInstance().getCurrentLocation();
					String srcLatitude  = String.format("%f", currentLocation.getLatitude());
					srcLatitude = srcLatitude.replace(',','.');
					String srcLongitude = String.format("%f", currentLocation.getLongitude());
					srcLongitude = srcLongitude.replace(',','.');
					String dstLatitude  = String.format("%f", mPlacemark.getLatitude());
					dstLatitude = dstLatitude.replace(',','.');
					String dstLongitude = String.format("%f", mPlacemark.getLongitude());
					dstLongitude = dstLongitude.replace(',','.');
					String mapsUrl =  String.format("http://maps.google.com/maps?f=d&hl=ru&saddr=%s,%s&daddr=%s,%s&ie=UTF8&om=0&output=kml&dirflg=w",
							srcLatitude, srcLongitude, dstLatitude,  dstLongitude);
			    	Intent intent = new Intent(android.content.Intent.ACTION_VIEW, Uri.parse(mapsUrl));
			    	intent.setComponent(componentName);
			    	intent.putExtra("ShowAll", true);
					startActivity(intent);
			    }
			});
		    } else
		    	buttonDirection.setVisibility(View.GONE);
						    	    
		    // 'Video' button
		    ImageButton buttonVideo = (ImageButton)findViewById(R.id.button_video);
		    if (mPlacemark.getVideoSourceUri() != null) {
			buttonVideo.setOnClickListener(new View.OnClickListener() {
			    @Override
			    public void onClick(View v) {
				Intent intent = new Intent();
				intent.setAction(Intent.ACTION_VIEW);
				intent.setDataAndType(mPlacemark.getVideoSourceUri(), "video/*");
				startActivity(intent);
			    }
			});
		    } else
			buttonVideo.setVisibility(View.GONE);
		    
		    // 'Audio' button
		    ImageButton buttonAudio = (ImageButton)findViewById(R.id.button_audio);
		    if (mPlacemark.getAudioSourceUri() != null) {
			buttonAudio.setOnClickListener(new View.OnClickListener() {
			    @Override
			    public void onClick(View v) {
				Intent intent = new Intent();
				intent.setAction(Intent.ACTION_VIEW);
				intent.setDataAndType(mPlacemark.getAudioSourceUri(), "audio/*");
				/* Launch own audio player
				Intent intent = new Intent(this,AudioPlayerActivity.class);
				intent.setDataAndType(mPlacemark.getAudioSourceUri(), "audio/*");
				intent.putExtra("TrackTitle", mPlacemark.getName());
				*/
				startActivity(intent);
			    }
			});
		    } else
			buttonAudio.setVisibility(View.GONE);
		    
		    // 'Text' button
		    ImageButton buttonText = (ImageButton)findViewById(R.id.button_text);
		    if (mPlacemark.getHtmlSourceUri() != null) {
			buttonText.setOnClickListener(new View.OnClickListener() {
			    @Override
			    public void onClick(View v) {
				Intent intent = new Intent();
				intent.setAction(Intent.ACTION_VIEW);
				intent.setDataAndType(mPlacemark.getHtmlSourceUri(), "text/html");
				startActivity(intent);
			    }
			});
		    } else
			buttonText.setVisibility(View.GONE);
		    
		    // 'Info' button
		    ImageButton buttonInfo = (ImageButton)findViewById(R.id.button_info);
		    if (mPlacemark.getInfoSourceUri() != null) {
			buttonInfo.setOnClickListener(new View.OnClickListener() {
			    @Override
			    public void onClick(View v) {
				Intent intent = new Intent();
				intent.setAction(Intent.ACTION_VIEW);
				intent.setDataAndType(mPlacemark.getInfoSourceUri(), "text/html");
				startActivity(intent);
			    }
			});
		    } else
			buttonInfo.setVisibility(View.GONE);
		}
    }
}
