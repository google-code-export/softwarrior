package com.softwarrior.rutrackerdownloader;

import com.softwarrior.libtorrent.LibTorrent;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;

import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Process;

import android.util.Log;

import android.view.View;

import android.widget.ProgressBar;
import android.widget.Toast;


public class DownloadServiceThread extends Service {
    
	private static final LibTorrent mLibTorrent =  new LibTorrent();
	
	private NotificationManager mNM;
//    private	Intent mInvokeIntent;
    	
    private volatile Looper mServiceLooper;
    private volatile ServiceHandler mServiceHandler;
    private volatile Message mMsg;
    
    private final IBinder mBinder = new LocalBinder();

    public boolean StartDownload(String SavePath,String TorentFile, int ListenPort, int ProxyType, String ProxyHostName, int ProxyPort, String ProxyUsername, String ProxyPassword){
    	return mLibTorrent.StartDownload(SavePath, TorentFile, ListenPort, ProxyType, ProxyHostName, ProxyPort, ProxyUsername, ProxyPassword);
    }
    public int GetProgress(){
    	return mLibTorrent.GetProgress();    	 
    }
    public boolean StopDownload(){
    	return mLibTorrent.StopDownload();
    }
    public boolean PauseDownload(){
    	return mLibTorrent.PauseDownload();    	
    }
    public boolean ResumeDownload(){
    	return mLibTorrent.ResumeDownload();
    }    
    
    public class LocalBinder extends Binder {
    	DownloadServiceThread getService() {
            return DownloadServiceThread.this;
        }
    }    
        
    private final class ServiceHandler extends Handler {
        public ServiceHandler(Looper looper) {
            super(looper);
        }
        
        @Override
        public void handleMessage(Message msg) {
           
        	Bundle arguments = (Bundle)msg.obj;        
            String txt = arguments.getString("notification");
            
            Log.d(RutrackerDownloaderApp.TAG, "Message: " + msg + ", " + arguments.getString("notification"));
        
            //Check flags
            if ((msg.arg2 & Service.START_FLAG_REDELIVERY) == 0) {
                txt = "New " + msg.arg1 + ": " + txt;
            } else {
                txt = "Re-delivered " + msg.arg1 + ": " + txt;
            }
                        
            showNotification(txt);            
            
            String savePath = RutrackerDownloaderApp.SavePath; 
            String torentFile = RutrackerDownloaderApp.TorrentFullFileName; 
            int listenPort = 0; 
            int proxyType = 0; 
            String proxyHostName = new String(); 
            int proxyPort = 0; 
            String proxyUsername = new String(); 
            String proxyPassword = new String();

            StartDownload(savePath, torentFile, listenPort, proxyType, proxyHostName, proxyPort, proxyUsername, proxyPassword);
			
		    //void StopServiceSelf();
        }
    };
    
    void StopServiceSelf()
    {
        long endTime = System.currentTimeMillis() + 5*1000;
		while (System.currentTimeMillis() < endTime) {
			synchronized (this) {
				try {
				      wait(endTime - System.currentTimeMillis());
				} catch (Exception e) {
				}
			}
		}  
		hideNotification();            
		Log.d(RutrackerDownloaderApp.TAG, "StopServiceSelf");            
		stopSelf(mMsg.arg1); //startId;
    }
    
     
    @Override
    public void onCreate() {
        mNM = (NotificationManager)getSystemService(NOTIFICATION_SERVICE);
        Toast.makeText(this, R.string.service_created,Toast.LENGTH_SHORT).show();
        //This is who should be launched if the user selects our persistent notification.
 //       mInvokeIntent = new Intent(this, Controller.class); 
        //Start up the thread running the service.  
        //Note that we create a separate thread because the service normally runs in the process's main thread, which we don't want to block.
        //We also make it background priority so CPU-intensive work will not disrupt our UI.        
        HandlerThread thread = new HandlerThread("DownloadService", Process.THREAD_PRIORITY_BACKGROUND);
        thread.start();        
        mServiceLooper = thread.getLooper();
        mServiceHandler = new ServiceHandler(mServiceLooper);
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.i(RutrackerDownloaderApp.TAG, "Service Starting" + startId + ": " + intent.getExtras());
        mMsg = mServiceHandler.obtainMessage();
        mMsg.arg1 = startId;
        mMsg.arg2 = flags;
        mMsg.obj = intent.getExtras();
        mServiceHandler.sendMessage(mMsg);
        
        Log.d(RutrackerDownloaderApp.TAG, "Sending: " + mMsg);    	
        return START_REDELIVER_INTENT; //START_NOT_STICKY
    }

    @Override
    public void onDestroy() {
        mServiceLooper.quit();
        StopDownload();
        hideNotification();
        // Tell the user we stopped.
        Toast.makeText(DownloadServiceThread.this, R.string.service_destroyed, Toast.LENGTH_SHORT).show();
    }

    @Override
    public IBinder onBind(Intent intent) {
        return mBinder;
    }

    //Show a notification while this service is running.
    private void showNotification(String text) {
        // Set the icon, scrolling text and timestamp
        Notification notification = new Notification(R.drawable.stat_sample, text, System.currentTimeMillis());
        // The PendingIntent to launch our activity if the user selects this notification
        PendingIntent contentIntent = PendingIntent.getActivity(this, 0, new Intent(this, Controller.class), 0);
        // Set the info for the views that show in the notification panel.
        notification.setLatestEventInfo(this, getText(R.string.service_label),text, contentIntent);
        // We show this for as long as our service is processing a command.
        notification.flags |= Notification.FLAG_ONGOING_EVENT;        
        // Send the notification.
        // We use a string id because it is a unique number.  We use it later to cancel.
        mNM.notify(R.string.service_created, notification);
    }
    
    private void hideNotification() {
        mNM.cancel(R.string.service_created);
    }    
    // ----------------------------------------------------------------------
    public static class Controller extends Activity {
        private boolean mIsBound;
        private DownloadServiceThread mBoundService;

        private ProgressBar mProgress;
        private volatile int mProgressStatus = 0;
        private SharedPreferences mPrefs;

        private Handler mHandler = new Handler();        
        private Thread mProgressThread;
        
        enum ControllerState{
        	Undefined, Started, Stopped, Paused
        }  
        
        private ControllerState mControllerState = ControllerState.Undefined;
                
    	@Override
        protected void onCreate(Bundle savedInstanceState) {
    		Log.d(RutrackerDownloaderApp.TAG, "onCreate");
    		super.onCreate(savedInstanceState);
            setContentView(R.layout.service);
            mProgress = (ProgressBar) findViewById(R.id.progress_horizontal);

            // Start lengthy operation in a background thread
            mProgressThread = new Thread(new Runnable() {
                public void run() {
                    while (mProgressStatus < 1000) {
                    	if(mIsBound && mBoundService != null && mControllerState == ControllerState.Started)
                    		mProgressStatus = mBoundService.GetProgress();
                        // Update the progress bar
                        mHandler.post(new Runnable() {
                            public void run() {
                                mProgress.setProgress(mProgressStatus);
                            }
                        });
                    }
                }
            });  
            
            RestoreControllerState();                     
        }
    	
    	void RestoreControllerState()
    	{
            mPrefs= getSharedPreferences(DownloadServiceThread.class.getName(), MODE_PRIVATE);
            int controllerState = mPrefs.getInt(ControllerState.class.getName(),ControllerState.Undefined.ordinal());
            mControllerState = ControllerState.values()[controllerState];
            
            switch (mControllerState) {
			case Started:{
				
			} break;
			case Stopped:{
			} break;
			case Paused:{
			} break;
			case Undefined:
			default: {
				
			} break;
			}
    	}

    	void SaveControllerState()
    	{
            SharedPreferences.Editor ed = mPrefs.edit();
            ed.putInt(ControllerState.class.getName(), mControllerState.ordinal());
            ed.commit();
    	}
    	
    	@Override
    	protected void onPause() {
    		super.onPause();
    		SaveControllerState();
    	}

    	@Override
        protected void onDestroy() {
    		Log.d(RutrackerDownloaderApp.TAG, "onDestroy");
            super.onDestroy();
        }        
        
		public void OnClickButtonStartDownloadService(View v) {
		    startService(new Intent(Controller.this, DownloadServiceThread.class)
		    	.putExtra("notification", getString(R.string.service_notification)));
		    mControllerState = ControllerState.Started;
		}
       
        public void OnClickButtonStopDownloadService(View v) {
        	stopService(new Intent(Controller.this,DownloadServiceThread.class));
		    mControllerState = ControllerState.Stopped;
        }        

		public void OnClickButtonPauseDownloadService(View v) {
		    mControllerState = ControllerState.Paused;
		}
       
        public void OnClickButtonResumeDownloadService(View v) {
        	mControllerState = ControllerState.Started;
        }                
        
        //This is to simulate the service being killed while it is running in the background.
        //Process.killProcess(Process.myPid());
        
        private ServiceConnection mConnection = new ServiceConnection() {
           
        	public void onServiceConnected(ComponentName className, IBinder service) {
                mBoundService = ((DownloadServiceThread.LocalBinder)service).getService();                
                Toast.makeText(Controller.this, R.string.service_connected, Toast.LENGTH_SHORT).show();
                Log.d(RutrackerDownloaderApp.TAG, "onServiceConnected");
                mProgressThread.start();
            }

            public void onServiceDisconnected(ComponentName className) {
                mBoundService = null;
                Toast.makeText(Controller.this, R.string.service_disconnected, Toast.LENGTH_SHORT).show();
                Log.d(RutrackerDownloaderApp.TAG, "onServiceDisconnected");
            }
        };
        
        void doBindService() {
            bindService(new Intent(Controller.this, DownloadServiceThread.class), mConnection, Context.BIND_AUTO_CREATE);
            mIsBound = true;
        }
        
        void doUnbindService() {
            if (mIsBound) {
                // Detach our existing connection.
                unbindService(mConnection);
                mIsBound = false;
            }
        }        
    }
}
