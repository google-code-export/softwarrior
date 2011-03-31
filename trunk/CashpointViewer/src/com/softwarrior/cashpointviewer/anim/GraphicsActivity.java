package com.softwarrior.cashpointviewer.anim;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;

public class GraphicsActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override
    public void setContentView(View view) {
    //TODO: test Picture
//        ViewGroup vg = new PictureLayout(this);
//        vg.addView(view);
//        view = vg;        
        super.setContentView(view);
    }
}

