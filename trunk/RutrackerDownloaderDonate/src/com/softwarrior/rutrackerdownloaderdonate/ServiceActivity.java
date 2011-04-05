package com.softwarrior.rutrackerdownloaderdonate;

import com.android.vending.licensing.AESObfuscator;
import com.android.vending.licensing.LicenseChecker;
import com.android.vending.licensing.LicenseCheckerCallback;
import com.android.vending.licensing.ServerManagedPolicy;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.util.Log;

public class ServiceActivity extends Activity {

    private LicenseChecker mChecker;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
        String deviceId = Secure.getString(getContentResolver(), Secure.ANDROID_ID);
        LicenseCheckerCallback licenseCheckerCallback = new MyLicenseCheckerCallback();
        mChecker = new LicenseChecker( this, new ServerManagedPolicy(this, new AESObfuscator(LicenseActivity.SALT, getPackageName(), deviceId)), LicenseActivity.BASE64_PUBLIC_KEY);
        mChecker.checkAccess(licenseCheckerCallback);
	}

	@Override
    protected void onDestroy() {
        super.onDestroy();
        mChecker.onDestroy();
    }

    private class MyLicenseCheckerCallback implements LicenseCheckerCallback {
        public void allow() {
            if (isFinishing()) {
                return;
            }
    		System.setProperty("ServiceActivity","yes");
    		finish();
        }

        public void dontAllow() {
        	if (isFinishing()) {
                return;
            }
            StartLicenseActivity();
        }

        public void applicationError(ApplicationErrorCode errorCode) {
        	if (isFinishing()) {
                return;
            }
            String result = String.format(getString(R.string.application_error), errorCode);
            Log.e("Softwarrior",result);
            StartLicenseActivity();
        }
    }
    private void StartLicenseActivity(){
    	Intent intent = new Intent(Intent.ACTION_VIEW);
    	intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);
    	intent.setClassName(this, LicenseActivity.class.getName());
    	startActivity(intent);
    	finish();    	
    }
}
