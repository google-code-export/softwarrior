package com.softwarrior.cashpointviewer;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.hardware.Camera;
import android.hardware.Camera.Size;
import android.os.Handler;
import android.os.Handler.Callback;
import android.util.Log;
import android.view.Display;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.WindowManager;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;


public class CameraPreview extends SurfaceView implements SurfaceHolder.Callback 
{
    SurfaceHolder 	mHolder;
    Camera 			mCamera;
    Method 			mtSetDisplayOrientation;
    Context 		mContext;
    Handler 		mHandlerSurface;

    public static final int MSG_SURFACE_CREATED  = 1;
    public static final int MSG_SURFACE_DESTROED = 2;
    public static final int MSG_SURFACE_CHANGED  = 3;
    
    public CameraPreview(Context context) 
    {
        super(context);
        
        mContext = context;

        // Install a SurfaceHolder.Callback so we get notified when the
        // underlying surface is created and destroyed.
        mHolder = getHolder();
        mHolder.addCallback(this);
        mHolder.setType(SurfaceHolder.SURFACE_TYPE_PUSH_BUFFERS);
        
	    try 
	    {
			mtSetDisplayOrientation = Camera.class.getMethod("setDisplayOrientation", new Class[] { Integer.TYPE });
		} 
	    catch(NoSuchMethodException e) 
	    {
	    	Log.i(CashpointViewerApp.TAG, "CameraView.init(): method setDisplayOrientation not supported");
		}
    }

    public void SetCamera(Camera camera)
    {
    	mCamera =  camera;
    }
    
    public void SetHandlerSurface(Callback clb)
    {
    	if(clb != null)
    	{
    		mHandlerSurface = new Handler(clb);
    	}
    }

    private Size getOptimalPreviewSize(List<Size> sizes, int w, int h) {
        final double ASPECT_TOLERANCE = 0.05;
        double targetRatio = (double) w / h;
        if (sizes == null) return null;

        Size optimalSize = null;
        double minDiff = Double.MAX_VALUE;

        int targetHeight = h;

        // Try to find an size match aspect ratio and size
        for (Size size : sizes) {
            double ratio = (double) size.width / size.height;
            if (Math.abs(ratio - targetRatio) > ASPECT_TOLERANCE) continue;
            if (Math.abs(size.height - targetHeight) < minDiff) {
                optimalSize = size;
                minDiff = Math.abs(size.height - targetHeight);
            }
        }

        // Cannot find the one match the aspect ratio, ignore the requirement
        if (optimalSize == null) {
            minDiff = Double.MAX_VALUE;
            for (Size size : sizes) {
                if (Math.abs(size.height - targetHeight) < minDiff) {
                    optimalSize = size;
                    minDiff = Math.abs(size.height - targetHeight);
                }
            }
        }
        return optimalSize;
    }    
    
    @Override
    public void surfaceCreated(SurfaceHolder holder) {
        // The Surface has been created, acquire the camera and tell it where
        // to draw.
        try {
            if (mCamera != null) {
                mCamera.setPreviewDisplay(holder);
                if (mHandlerSurface != null){
                	mHandlerSurface.sendEmptyMessage(MSG_SURFACE_CREATED);	
                }
            }
        } 
        catch (IOException exception){
            Log.e(CashpointViewerApp.TAG, "IOException caused by setPreviewDisplay()", exception);
        }
    }
    
    @Override
    public void surfaceDestroyed(SurfaceHolder holder) {
        // Surface will be destroyed when we return, so stop the preview.
        if (mCamera != null) {
            mCamera.stopPreview();
            if(mHandlerSurface != null){
            	mHandlerSurface.sendEmptyMessage(MSG_SURFACE_DESTROED);           
            }
        }
    }
    
	@Override
	public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
	    Log.d(CashpointViewerApp.TAG, "surfaceChanged(): width = " + width + ", height = " + height);
	    if (mCamera != null) {
		    mCamera.stopPreview();	    
		    //Adjust preview orientation
		    Display display = null;
		    if(mtSetDisplayOrientation != null) {		
				display = ((WindowManager)mContext.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay();
				int orientation = 0;
				switch(display.getOrientation()) {
				case Surface.ROTATION_0:
				    orientation = 90;
				    break;
				case Surface.ROTATION_270:
				    orientation = 180;
				    break;
				}
				
				Object arguments[] = new Object[] { new Integer(orientation) };
				try {
				    mtSetDisplayOrientation.invoke(mCamera, arguments);
				} 
				catch(Exception e) {
				    Log.w(CashpointViewerApp.TAG, "Invocation error: setDisplayOrientation");
				}
		    }
		    //Start preview
		    try {
		    	Log.d(CashpointViewerApp.TAG, "surfaceChanged(): starting preview");
			    if(mtSetDisplayOrientation != null) {
					Camera.Parameters parameters = mCamera.getParameters();
					List<Size> sizes = parameters.getSupportedPreviewSizes();
					Size optimalSize = null;
			        if(display.getOrientation() == ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE) {
			        	optimalSize = getOptimalPreviewSize(sizes, height, width);
			        } 
			        else {
			        	optimalSize = getOptimalPreviewSize(sizes, width, height);
			        }
					parameters.setPreviewSize(optimalSize.width, optimalSize.height);			
					mCamera.setParameters(parameters);
			    }
				mCamera.setPreviewDisplay(holder);
				mCamera.startPreview();
	            if(mHandlerSurface != null){
	            	mHandlerSurface.sendEmptyMessage(MSG_SURFACE_CHANGED);           
	            }
		    } 
		    catch(IOException e) 
		    {
		    	Log.e(CashpointViewerApp.TAG, "surfaceChanged(): starting preview error:", e);
		    }
		    Log.d(CashpointViewerApp.TAG, "surfaceChanged(): preview started");
	    }
	}
}
