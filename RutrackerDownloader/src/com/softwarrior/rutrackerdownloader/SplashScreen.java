package com.softwarrior.rutrackerdownloader;

import com.softwarrior.anim.Rotate3dAnimation;

import android.app.Activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;

import android.widget.ImageView;


public class SplashScreen extends Activity {

	SplashHandler mSplashHandler = null;
	Message mEndSplashMessage = null;
	int	mSplashTime = 1; //1 sec
    private ViewGroup mContainer;    
    private ImageView mImageViewEmpty;
    private ImageView mImageViewSplash;
               
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        //getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,WindowManager.LayoutParams.FLAG_FULLSCREEN);
        setContentView(R.layout.splash);
        mContainer = (ViewGroup) findViewById(R.id.RelativeLayout); 
        mImageViewEmpty = (ImageView) findViewById(R.id.ImageViewEmpty);
        mImageViewSplash = (ImageView) findViewById(R.id.ImageViewSplash);
        // Since we are caching large views, we want to keep their cache
        // between each animation
        mContainer.setPersistentDrawingCache(ViewGroup.PERSISTENT_ANIMATION_CACHE);
    }
    
    @Override
    protected void onStart() {
    	super.onStart();
    	mImageViewSplash.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				mSplashHandler.removeMessages(mEndSplashMessage.what);
				applyRotation(-1, 180, 90);
				StartPreferencesScreen();
			}
		});
    	mSplashHandler = new SplashHandler();
		mEndSplashMessage =  mSplashHandler.obtainMessage();
		mSplashHandler.sendMessageDelayed(mEndSplashMessage, mSplashTime * 3000);
		applyRotation(1, 0, 90);
    }
            
    private class SplashHandler extends Handler {	
	    @Override
		public void handleMessage(Message message) {
	    	applyRotation(-1, 180, 90);
	    	StartPreferencesScreen();
	    }
    } 
    
//     Setup a new 3D rotation on the container view.
//     @param position the item that was clicked to show a picture, or -1 to show the list
//     @param start the start angle at which the rotation must begin
//     @param end the end angle of the rotation
   
    private void applyRotation(int position, float start, float end) {
        // Find the center of the container
        final float centerX = mContainer.getWidth() / 2.0f;
        final float centerY = mContainer.getHeight() / 2.0f;

        // Create a new 3D rotation with the supplied parameter
        // The animation listener is used to trigger the next animation
        final Rotate3dAnimation rotation = new Rotate3dAnimation(start, end, centerX, centerY, 310.0f, true);
        rotation.setDuration(500);
        rotation.setFillAfter(true);
        rotation.setInterpolator(new AccelerateInterpolator());
        rotation.setAnimationListener(new DisplayNextView(position));

        mContainer.startAnimation(rotation);
    }
    
    
    void StartPreferencesScreen()
    {
    	Intent intent = new Intent(Intent.ACTION_VIEW);
    	intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
    	//intent.setClassName(this, PreferencesTabs.class.getName());
    	intent.setClassName(this, TorrentsList.class.getName());
    	startActivity(intent);
    	overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
    	finish();
    }
    
    /**
     * This class listens for the end of the first half of the animation.
     * It then posts a new action that effectively swaps the views when the container
     * is rotated 90 degrees and thus invisible.
     */
    private final class DisplayNextView implements Animation.AnimationListener {
        private final int mPosition;

        private DisplayNextView(int position) {
            mPosition = position;
        }

        public void onAnimationStart(Animation animation) {
        }

        public void onAnimationEnd(Animation animation) {
            mContainer.post(new SwapViews(mPosition));
        }

        public void onAnimationRepeat(Animation animation) {
        }
    }

    /**
     * This class is responsible for swapping the views and start the second
     * half of the animation.
     */
    private final class SwapViews implements Runnable {
        private final int mPosition;

        public SwapViews(int position) {
            mPosition = position;
        }

        public void run() {
            final float centerX = mContainer.getWidth() / 2.0f;
            final float centerY = mContainer.getHeight() / 2.0f;
            Rotate3dAnimation rotation;
            
            if (mPosition > -1) {
            	mImageViewEmpty.setVisibility(View.GONE);
                mImageViewSplash.setVisibility(View.VISIBLE);
                mImageViewSplash.requestFocus();

                rotation = new Rotate3dAnimation(90, 180, centerX, centerY, 310.0f, false);
            } else {
            	mImageViewSplash.setVisibility(View.GONE);
                mImageViewEmpty.setVisibility(View.VISIBLE);
                mImageViewEmpty.requestFocus();

                rotation = new Rotate3dAnimation(90, 0, centerX, centerY, 310.0f, false);
            }

            rotation.setDuration(500);
            rotation.setFillAfter(true);
            rotation.setInterpolator(new DecelerateInterpolator());

            mContainer.startAnimation(rotation);
        }
    }        
}