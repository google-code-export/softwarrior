package com.softwarrior.cashpointviewer;

import java.util.List;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;

public class ChooseLayersActivity extends FullWakeActivity {
    
    @Override
    public void onCreate(Bundle savedInstanceState) {
	super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.choose_layers);
        
        Button buttonOK = (Button)findViewById(R.id.ButtonOK);
        buttonOK.setOnClickListener(new View.OnClickListener() {
	    @Override
	    public void onClick(View v) {
	    	Intent intent = new Intent(ChooseLayersActivity.this, CashpointActivity.class);
	    	intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
	    	startActivityForResult(intent, 0);
	    }
	});
        
        LinearLayout layout = (LinearLayout)findViewById(R.id.LinearLayoutLayers);
        int insertAt = layout.indexOfChild(findViewById(R.id.SeparatorEnd));
        List<LayerInfo> layers = LayersCollection.getInstance().getLayers();
        if(!layers.isEmpty()) {
            
            View v = findViewById(R.id.TextViewNoLayersFound);
            v.setVisibility(View.GONE);
            
            for(LayerInfo li : layers) {
	        	CheckBox cb = new CheckBox(getApplicationContext());
	        	cb.setTextSize(18.0f);
	        	cb.setText(li.getName());
	        	cb.setChecked(li.isActive());
	        	cb.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
	        	    @Override
	        	    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
	        		LayerInfo li = LayersCollection.getInstance()
		            		.findLayer(buttonView.getText().toString());
	        		if(li != null)
	        		    li.setActive(isChecked);
	        	    }
	        	});
	        	layout.addView(cb, insertAt++);
            }
        }
    }
    
    @Override
    protected void onPause() {
	super.onPause(); 
	PlacemarkCollection.getInstance().initialize(getApplicationContext());
    }
    
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
	Log.d(CashpointViewerApp.TAG, "ChooseLayersActivity.onActivityResult() called");
	finish();
    }
}
