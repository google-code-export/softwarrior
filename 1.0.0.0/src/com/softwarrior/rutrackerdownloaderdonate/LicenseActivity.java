package com.softwarrior.rutrackerdownloaderdonate;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings.Secure;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;

import com.android.vending.licensing.AESObfuscator;
import com.android.vending.licensing.LicenseChecker;
import com.android.vending.licensing.LicenseCheckerCallback;
import com.android.vending.licensing.ServerManagedPolicy;

public class LicenseActivity extends Activity {

    private TextView mStatusText;
    private Button mCheckLicenseButton;

    private LicenseCheckerCallback mLicenseCheckerCallback;
    private LicenseChecker mChecker;
    private Handler mHandler;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_INDETERMINATE_PROGRESS);
        setContentView(R.layout.main);

        mStatusText = (TextView) findViewById(R.id.status_text);
        mCheckLicenseButton = (Button) findViewById(R.id.check_license_button);
        mCheckLicenseButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                doCheck();
            }
        });
        mHandler = new Handler();
        String deviceId = Secure.getString(getContentResolver(), Secure.ANDROID_ID);
        mLicenseCheckerCallback = new MyLicenseCheckerCallback();
        mChecker = new LicenseChecker( this, new ServerManagedPolicy(this, new AESObfuscator(SALT, getPackageName(), deviceId)), BASE64_PUBLIC_KEY);
        doCheck();
    }

    protected Dialog onCreateDialog(int id) {
        return new AlertDialog.Builder(this)
            .setTitle(R.string.unlicensed_dialog_title)
            .setMessage(R.string.unlicensed_dialog_body)
            .setPositiveButton(R.string.buy_button, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    Intent marketIntent = new Intent(Intent.ACTION_VIEW, Uri.parse(
                        "http://market.android.com/details?id=" + getPackageName()));
                    startActivity(marketIntent);
                }
            })
            .setNegativeButton(R.string.quit_button, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    finish();
                }
            })
            .create();
    }

    private void doCheck() {
        mCheckLicenseButton.setEnabled(false);
        setProgressBarIndeterminateVisibility(true);
        mStatusText.setText(R.string.checking_license);
        mChecker.checkAccess(mLicenseCheckerCallback);
    }

    private void displayResult(final String result) {
        mHandler.post(new Runnable() {
            public void run() {
                mStatusText.setText(result);
                setProgressBarIndeterminateVisibility(false);
                mCheckLicenseButton.setEnabled(true);
            }
        });
    }

    private class MyLicenseCheckerCallback implements LicenseCheckerCallback {
        public void allow() {
            if (isFinishing()) {
                return;
            }
            displayResult(getString(R.string.allow));
        }
        public void dontAllow() {
            if (isFinishing()) {
                return;
            }
            displayResult(getString(R.string.dont_allow));
            showDialog(0);
        }
        public void applicationError(ApplicationErrorCode errorCode) {
            if (isFinishing()) {
                return;
            }
            String result = String.format(getString(R.string.application_error), errorCode);
            displayResult(result);
        }
    }
    @Override
    protected void onDestroy() {
        super.onDestroy();
        mChecker.onDestroy();
    }
}
