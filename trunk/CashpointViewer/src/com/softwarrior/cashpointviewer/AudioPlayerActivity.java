package com.softwarrior.cashpointviewer;

import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.ImageButton;
import android.widget.SeekBar;
import android.widget.TextView;

public class AudioPlayerActivity extends FullWakeActivity {
    private MediaPlayer mMediaPlayer;
    
    private TextView mTextViewPlaybackElapsed;
    private TextView mTextViewPlaybackRemaining;
    private SeekBar mSeekBarPlayback;
    private ImageButton mButtonStop;
    private ImageButton mButtonPlayPause;
    
    @Override
    public void onCreate(Bundle savedInstanceState) {
	super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.audio_player);
        
        TextView textView = (TextView)findViewById(R.id.TrackTitle);
        textView.setText(getIntent().getCharSequenceExtra("TrackTitle"));
        
        mTextViewPlaybackElapsed = (TextView)findViewById(R.id.TextViewElapsed);
        mTextViewPlaybackRemaining = (TextView)findViewById(R.id.TextViewRemaining);
        mSeekBarPlayback = (SeekBar)findViewById(R.id.AudioPlaybackSeekBar);
        
        mButtonStop = (ImageButton)findViewById(R.id.ImageButtonStop);
        mButtonStop.setEnabled(false);
        mButtonStop.setOnClickListener(new View.OnClickListener() {
	    @Override
	    public void onClick(View v) {
		if(mMediaPlayer != null) {
		    mButtonStop.setEnabled(false);
		    mButtonPlayPause.setEnabled(false);
		    mMediaPlayer.stop();
		    mMediaPlayer.prepareAsync();
		}
	    }
	});
        
        mButtonPlayPause = (ImageButton)findViewById(R.id.ImageButtonPlayPause);
        mButtonPlayPause.setEnabled(false);
        mButtonPlayPause.setOnClickListener(new View.OnClickListener() {
	    @Override
	    public void onClick(View v) {
		if(mMediaPlayer != null) {
		    if(mMediaPlayer.isPlaying()) {
			mMediaPlayer.pause();
			mButtonPlayPause.setImageDrawable(getResources().getDrawable(R.drawable.play));
		    } else {
			mMediaPlayer.start();
			mButtonPlayPause.setImageDrawable(getResources().getDrawable(R.drawable.pause));
		    }
		}
	    }
	});
    }
    
    @Override
    public void onStart() {
	super.onStart();
	
	// Must have been released
	if(mMediaPlayer != null) {
	    Log.w(CashpointViewerApp.TAG, "mMediaPlayer is not null");
	    mMediaPlayer.release();
	    mMediaPlayer = null;
	}
	
	// Try to create new MediaPlayer instance
	mMediaPlayer = MediaPlayer.create(getApplicationContext(), Uri
		.parse(getIntent().getDataString()));
	if(mMediaPlayer != null) {
	    mMediaPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() {
	        @Override
	        public boolean onError(MediaPlayer mp, int what, int extra) {
	            Log.e(CashpointViewerApp.TAG, "MediaPlayer.onError: what=" + what + ", extra=" + extra);
	            return false;
	        }
	    });
	    mMediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() {
	        @Override
	        public void onPrepared(MediaPlayer mp) {
	            mButtonStop.setEnabled(true);
	            mButtonPlayPause.setEnabled(true);
	            mButtonPlayPause.setImageDrawable(mMediaPlayer.isPlaying()
	        	? getResources().getDrawable(R.drawable.pause)
	        	: getResources().getDrawable(R.drawable.play));
	        }
	    });
	    
	    mSeekBarPlayback.setMax(mMediaPlayer.getDuration() / 1000);
	    mSeekBarPlayback.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
	        
	        @Override
	        public void onStopTrackingTouch(SeekBar seekBar) {
	        }
	        
	        @Override
	        public void onStartTrackingTouch(SeekBar seekBar) {
	        }
	        
	        @Override
	        public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
	            if(fromUser && mMediaPlayer != null)
	        	mMediaPlayer.seekTo(progress * 1000);
	        }
	    });
	    
	    mMediaPlayer.start();
	    UIUpdater uiUpdater = new UIUpdater();
	    Message m = uiUpdater.obtainMessage();
	    uiUpdater.sendMessage(m);
	} else
	    Log.w(CashpointViewerApp.TAG, "Failed to create media player");
    }
    
    @Override
    public void onStop() {
	if(mMediaPlayer != null) {
	    mMediaPlayer.release();
	    mMediaPlayer = null;
	}
	super.onStop();
    }
    
    private class UIUpdater extends Handler {
	@Override
	public void handleMessage(Message message) {
	    if (mMediaPlayer != null) {
		int duration = mMediaPlayer.getDuration();
		int position = mMediaPlayer.getCurrentPosition();

		int elapsedMin = position / 60000;
		int elapsedSec = (position - elapsedMin * 60000) / 1000;
		String strElapsed = String.format("%d:%02d", elapsedMin,
			elapsedSec);
		mTextViewPlaybackElapsed.setText(strElapsed);

		int remainingMin = (duration - position) / 60000;
		int remainingSec = (duration - position - remainingMin * 60000) / 1000;
		String strRemaining = String.format("%d:%02d", remainingMin,
			remainingSec);
		mTextViewPlaybackRemaining.setText(strRemaining);
		
		mSeekBarPlayback.setProgress(mMediaPlayer.getCurrentPosition() / 1000);
	    }
	    
	    Message m = obtainMessage();
	    sendMessageDelayed(m, 1000);
	}
    }
}
