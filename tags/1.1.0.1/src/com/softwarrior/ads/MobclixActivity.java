package com.softwarrior.ads;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.softwarrior.rutrackerdownloader.R;

import com.mobclix.android.sdk.Mobclix;

public class MobclixActivity extends Activity {
    private MobclixActivity mThis;
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mobclix);
        
        mThis = this;
                
        Mobclix.onCreate(this);
        
        Button advertisingViewButton = (Button) findViewById(R.id.advertising_view);
        advertisingViewButton.setOnClickListener(new View.OnClickListener() {
        	
        	public void onClick(View view) {
        		startActivity(new Intent(mThis, MobclixAdvertisingView.class));
        	}        	
        });
        Button ratingsButton = (Button) findViewById(R.id.ratings_button);
        ratingsButton.setOnClickListener(new View.OnClickListener() {
        	
        	public void onClick(View view) {
        		startActivity(new Intent(mThis, MobclixRatingsActivity.class));
        	}        	
        });
        Button commentButton = (Button) findViewById(R.id.comment_button);
        commentButton.setOnClickListener(new View.OnClickListener() {
        	
        	public void onClick(View view) {
        		startActivity(new Intent(mThis, MobclixCommentActivity.class));
        	}        	
        });
        Button demoButton = (Button) findViewById(R.id.demo_button);
        demoButton.setOnClickListener(new View.OnClickListener() {
        	
        	public void onClick(View view) {
        		startActivity(new Intent(mThis, MobclixDemographicsActivity.class));
        	}        	
        });
    }
}