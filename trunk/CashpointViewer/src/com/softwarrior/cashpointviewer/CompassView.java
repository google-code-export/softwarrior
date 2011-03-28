package com.softwarrior.cashpointviewer;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;

public class CompassView extends View implements CompassObserver {
    
    private Paint mPaint = new Paint();
    private Paint mPaintText = new Paint();
    
    private float mFOV;
    private static final float MARK_STEP_ANGLE = 15.0f;
    private static final int SCALE_HEIGHT = 32;
    
    public CompassView(Context context, float fov) {
		super(context);
		
		CompassSensor.getInstance().addObserver(this);
		
		mFOV = fov;
		
		mPaint.setColor(0xFFFFFFFF);
		mPaintText.setColor(0xFFFFFFFF);
		mPaintText.setAntiAlias(true);
		mPaintText.setTextSize(16);
		mPaintText.setTextAlign(Paint.Align.CENTER);
    }
    
    @Override
    protected void onDraw(Canvas canvas) {
		super.onDraw(canvas);	
		//Draw compass scale
		
		float azimuth = CompassSensor.getInstance().getLastData();
		float y = canvas.getHeight() - SCALE_HEIGHT * 2;
		float w = angleToPixels(canvas.getWidth(), MARK_STEP_ANGLE) / 3;
		int index = (int)((azimuth - mFOV) / MARK_STEP_ANGLE);
		while(index * MARK_STEP_ANGLE  < azimuth + mFOV) {
		    float a = index * MARK_STEP_ANGLE - (azimuth - mFOV);
		    float x = angleToPixels(canvas.getWidth(), a);
		    
		    // Draw mark line
		    canvas.drawLine(x, y, x, y + SCALE_HEIGHT / 2, mPaint);
		    canvas.drawLine(x + w, y, x + w, y + SCALE_HEIGHT / 3, mPaint);
		    canvas.drawLine(x + w * 2, y, x + w * 2, y + SCALE_HEIGHT / 3, mPaint);
		    
		    // Draw mark text
		    String angle_text;
		    int angle360 = ((int)(index * MARK_STEP_ANGLE) + 360) % 360;
		    switch(angle360) {
		    case 0:
			angle_text = "N";
			break;
		    case 90:
			angle_text = "E";
			break;
		    case 180:
			angle_text = "S";
			break;
		    case 270:
			angle_text = "W";
			break;
		    default:
			angle_text = "" + angle360;
		    }
		    canvas.drawText(angle_text, x, y + SCALE_HEIGHT - 4, mPaintText);
		    
		    ++index;
		}
    }

    @Override
    public void onNewSensorData(int sensorType, Float azimuth) {
    	invalidate();
    }
    
    private int angleToPixels(int canvasWidth, float angle) {
    	return (int)(angle * canvasWidth / (mFOV * 2));
    }
}
