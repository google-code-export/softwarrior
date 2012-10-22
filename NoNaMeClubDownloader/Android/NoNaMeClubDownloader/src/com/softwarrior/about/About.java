package com.softwarrior.about;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.softwarrior.rutrackerdownloaderlite.RutrackerDownloaderApp;
import com.softwarrior.rutrackerdownloaderlite.R;
import com.softwarrior.rutrackerdownloaderlite.RutrackerDownloaderApp.ActivityResultType;

import android.app.TabActivity;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.util.Linkify;
import android.text.util.Linkify.TransformFilter;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabWidget;
import android.widget.TextView;

public class About extends TabActivity implements OnTabChangeListener{
	
	public static final String ACTION_SHOW_ABOUT_DIALOG = "com.softwarrior.about.action.SHOW_ABOUT_DIALOG";

	public static final String METADATA_COMMENTS = "com.softwarrior.about.metadata.COMMENTS";
	public static final String METADATA_COPYRIGHT = "com.softwarrior.about.metadata.COPYRIGHT";
	public static final String METADATA_WEBSITE_URL = "com.softwarrior.about.metadata.WEBSITE_URL";
	public static final String METADATA_WEBSITE_LABEL = "com.softwarrior.about.metadata.WEBSITE_LABEL";
	public static final String METADATA_AUTHORS = "com.softwarrior.about.metadata.AUTHORS";
	public static final String METADATA_DOCUMENTERS = "com.softwarrior.about.metadata.DOCUMENTERS";
	public static final String METADATA_TRANSLATORS = "com.softwarrior.about.metadata.TRANSLATORS";
	public static final String METADATA_ARTISTS = "com.softwarrior.about.metadata.ARTISTS";
	public static final String METADATA_LICENSE = "com.softwarrior.about.metadata.LICENSE";
	public static final String METADATA_EMAIL = "com.softwarrior.about.metadata.EMAIL";
	
	/**
	 * The views.
	 */
	protected ImageView mLogoImage;
	protected ImageView mEmailImage;
	protected TextView mProgramNameAndVersionText;
	protected TextView mCommentsText;
	protected TextView mCopyrightText;
	protected TextView mWebsiteText;
	protected TextView mEmailText;
	protected TextView mAuthorsLabel;
	protected TextView mAuthorsText;
	protected TextView mDocumentersLabel;
	protected TextView mDocumentersText;
	protected TextView mTranslatorsLabel;
	protected TextView mTranslatorsText;
	protected TextView mArtistsLabel;
	protected TextView mArtistsText;
	protected TextView mNoInformationText;
	protected TextView mLicenseText;

	protected TabHost tabHost;

	//Retrieve the package name to be used with this intent.
	//Package name is retrieved from EXTRA_PACKAGE or from getCallingPackage().
	//If none is supplied, it is set to this application.
	String getPackageNameFromIntent(Intent intent) {
		String packagename = null;
				
		// If no valid name has been found, we try to obtain it from
		// the calling activit.
		if (packagename == null) {
			// Retrieve from calling activity
			packagename = getCallingPackage();
		}
		
	    if (packagename == null) {
	    	// In the worst case, use our own name:
	    	packagename = getPackageName();
	    }	    
	    return packagename;
	}
	//Change the logo image using the resource in the string argument.
	//param logoString String of a content uri to an image resource
	protected void changeLogoImageUri(final String logoString) {
		Uri imageDescriptionUri = Uri.parse(logoString);
		if (imageDescriptionUri != null) {
			mLogoImage.setImageURI(imageDescriptionUri);
		} else { // Not a uri, so invalid.
			throw new IllegalArgumentException("Not a valid image.");
		}
	}
	//Change the logo image using the resource name and package.
	//param resourceFileName String of the name of the image resource (as you would append it after "R.drawable.").
	//param resourcePackageName String of the name of the source package of the image resource (the package name of the calling app).
	protected void changeLogoImageResource(final String resourceFileName,
			final String resourcePackageName) {
		try {
			Resources resources = getPackageManager()
					.getResourcesForApplication(resourcePackageName);
			final int id = resources
					.getIdentifier(resourceFileName, null, null);
			mLogoImage.setImageDrawable(resources.getDrawable(id));
		} catch (NumberFormatException e) { // Not a resource id
			throw new IllegalArgumentException("Not a valid image.");
		} catch (NotFoundException e) { // Resource not found
			throw new IllegalArgumentException("Not a valid image.");
		} catch (NameNotFoundException e) { //Not a package name
			throw new IllegalArgumentException(
					"Not a valid (image resource) package name.");
		}
	}
	//Fetch and display artists information.
	//param intent The intent from which to fetch the information.
	protected void displayArtists(final String packagename, final Intent intent) {
		String[] textarray = AboutUtils.getStringArrayMetadata(this, packagename, intent, METADATA_ARTISTS);

		String text = AboutUtils.getTextFromArray(textarray);
		
		if (!TextUtils.isEmpty(text)) {
			mArtistsText.setText(text);
			mArtistsLabel.setVisibility(View.VISIBLE);
			mArtistsText.setVisibility(View.VISIBLE);
		} else {
			mArtistsLabel.setVisibility(View.GONE);
			mArtistsText.setVisibility(View.GONE);
		}
	}
	//Fetch and display authors information.
	//param intent The intent from which to fetch the information.
	private void displayAuthors(final String packagename, final Intent intent) {
		String[] textarray = AboutUtils.getStringArrayMetadata(this, packagename, intent, METADATA_AUTHORS);
		
		String text = AboutUtils.getTextFromArray(textarray);
		
		if (!TextUtils.isEmpty(text)) {
			mAuthorsText.setText(text);
			mAuthorsLabel.setVisibility(View.VISIBLE);
			mAuthorsText.setVisibility(View.VISIBLE);
		} else {
			mAuthorsLabel.setVisibility(View.GONE);
			mAuthorsText.setVisibility(View.GONE);
		}
	}
	//Fetch and display comments information.
	//param intent The intent from which to fetch the information.
	protected void displayComments(final String packagename, final Intent intent) {
		String text = AboutUtils.getStringMetadata(this, packagename, intent, METADATA_COMMENTS);
		
		if (!TextUtils.isEmpty(text)) {
			mCommentsText.setText(text);
			mCommentsText.setVisibility(View.VISIBLE);
		} else {
			mCommentsText.setVisibility(View.GONE);
		}
	}
	//Fetch and display copyright information.
	//param intent The intent from which to fetch the information.
	protected void displayCopyright(final String packagename, final Intent intent) {
		String text = AboutUtils.getStringMetadata(this, packagename, intent, METADATA_COPYRIGHT);
		
		if (!TextUtils.isEmpty(text)) {
			mCopyrightText.setText(text);
			mCopyrightText.setVisibility(View.VISIBLE);
		} else {
			mCopyrightText.setVisibility(View.GONE);
		}
	}
	//Fetch and display documenters information.
	//param intent The intent from which to fetch the information.
	protected void displayDocumenters(final String packagename, final Intent intent) {
		String[] textarray = AboutUtils.getStringArrayMetadata(this, packagename, intent, METADATA_DOCUMENTERS);
		String text = AboutUtils.getTextFromArray(textarray);
		
		if (!TextUtils.isEmpty(text)) {
			mDocumentersText.setText(text);
			mDocumentersLabel.setVisibility(View.VISIBLE);
			mDocumentersText.setVisibility(View.VISIBLE);
		} else {
			mDocumentersLabel.setVisibility(View.GONE);
			mDocumentersText.setVisibility(View.GONE);
		}
	}
	//Fetch and display license information.
	//param intent The intent from which to fetch the information.
	protected void displayLicense(final String packagename, final Intent intent) {
		
		int resourceid = AboutUtils.getResourceIdMetadata(this, packagename, intent, METADATA_LICENSE);
		
		if (resourceid == 0) {
			mLicenseText.setText(R.string.no_information_available);
			return;
		}
				
		// Retrieve license from resource:
		String license = "";
		try {
    		Resources resources = getPackageManager()
				.getResourcesForApplication(packagename);
    		
    		//Read in the license file as a big String
    		BufferedReader in
    		   = new BufferedReader(new InputStreamReader(
    				resources.openRawResource(resourceid)));
    		String line;
    		StringBuilder sb = new StringBuilder();
    		try {
    			while ((line = in.readLine()) != null) { // Read line per line.
    				if (TextUtils.isEmpty(line)) {
    					// Empty line: Leave line break
    					sb.append("\n\n");
    				} else {
    					sb.append(line);
    					sb.append(" ");
    				}
    			}
    			license = sb.toString();
    		} catch (IOException e) {
    			//Should not happen.
    			e.printStackTrace();
    		}
    		
    	} catch (NameNotFoundException e) {
            Log.e(RutrackerDownloaderApp.TAG, "Package name not found", e);
    	}
    	
    	mLicenseText.setText(license);
	}
	//Fetch and display logo information.
	//param intent The intent from which to fetch the information.
	protected void displayLogo(final String packagename, final Intent intent) {
    	{
    		try {
                PackageInfo pi = getPackageManager().getPackageInfo(
						packagename, 0);
    			Resources resources = getPackageManager()
    					.getResourcesForApplication(packagename);
    			String resourcename = resources.getResourceName(pi.applicationInfo.icon);
                changeLogoImageResource(resourcename, packagename);
    		} catch (PackageManager.NameNotFoundException e) {
                Log.e(RutrackerDownloaderApp.TAG, "Package name not found", e);
    			//mLogoImage.setImageResource(android.R.drawable.ic_menu_info_details);
        		//mLogoImage.setImageURI(Uri.EMPTY);
    		} catch (IllegalArgumentException e) {
    			//mLogoImage.setImageResource(android.R.drawable.ic_menu_info_details);
    			//mLogoImage.setImageURI(Uri.EMPTY);
    		}
    	}
	}
	//Fetch and display program name and version information.
	//param intent The intent from which to fetch the information.
	protected void displayProgramNameAndVersion(final String packagename, final Intent intent) {
		String applicationlabel = getApplicationLabel(packagename, intent);
		String versionname = getVersionName(packagename, intent);
		
		String combined = applicationlabel;
		if (!TextUtils.isEmpty(versionname)) {
			combined += " " + versionname;
		}
		
        mProgramNameAndVersionText.setText(combined);
	}
	//Get application label.
	//param intent The intent from which to fetch the information.
	protected String getApplicationLabel(final String packagename, final Intent intent) {
		String applicationlabel = null;
		{
            try {
                    PackageInfo pi = getPackageManager().getPackageInfo(
                    		packagename, 0);
                    int labelid = pi.applicationInfo.labelRes;
         			Resources resources = getPackageManager()
         					.getResourcesForApplication(packagename);
         			applicationlabel = resources.getString(labelid);
            } catch (PackageManager.NameNotFoundException e) {
                    Log.e(RutrackerDownloaderApp.TAG, "Package name not found", e);
            }
		}
		return applicationlabel;
	}
	//Get version information.
	//param intent The intent from which to fetch the information.
	protected String getVersionName(final String packagename, final Intent intent) {
		String versionname = null;
		{
            try {
                    PackageInfo pi = getPackageManager().getPackageInfo(
                    		packagename, 0);
                    versionname = pi.versionName;
            } catch (PackageManager.NameNotFoundException e) {
                    Log.e(RutrackerDownloaderApp.TAG, "Package name not found", e);
            }
		}
		return versionname;
	}
	//Fetch and display translators information.
	//param intent The intent from which to fetch the information.
	protected void displayTranslators(final String packagename, final Intent intent) {

		String[] textarray = AboutUtils.getStringArrayMetadata(this, packagename, intent,  METADATA_TRANSLATORS);
		String text = AboutUtils.getTextFromArray(textarray);

		if (!TextUtils.isEmpty(text)) {
			mTranslatorsText.setText(text);
			mTranslatorsLabel.setVisibility(View.VISIBLE);
			mTranslatorsText.setVisibility(View.VISIBLE);
		} else {
			mTranslatorsLabel.setVisibility(View.GONE);
			mTranslatorsText.setVisibility(View.GONE);
		}		
	}
	//Fetch and display website link information.
	//param intent The intent from which to fetch the information.
	protected void displayWebsiteLink(final String packagename, final Intent intent) {
		String websitelabel = AboutUtils.getStringMetadata(this, packagename,
			intent, METADATA_WEBSITE_LABEL);
		String websiteurl = AboutUtils.getStringMetadata(this, packagename,
				intent,  METADATA_WEBSITE_URL);
		
		setAndLinkifyWebsiteLink(websitelabel, websiteurl);
	}
	//Set the website link TextView and linkify.
	//param websiteLabel The label to set.
	//param websiteUrl The URL that the label links to.
	protected void setAndLinkifyWebsiteLink(final String websiteLabel, final String websiteUrl) {
		if (!TextUtils.isEmpty(websiteUrl)) {
			if (TextUtils.isEmpty(websiteLabel)) {
				mWebsiteText.setText(websiteUrl);
			} else {
				mWebsiteText.setText(websiteLabel);
			}
			mWebsiteText.setVisibility(View.VISIBLE);
			
			//Create TransformFilter
			TransformFilter tf = new TransformFilter() {
	
				public String transformUrl(final Matcher matcher,
						final String url) {
					return websiteUrl;
				}
				
			};			
			//Allow a label and url through Linkify
			Linkify.addLinks((TextView) mWebsiteText, Pattern.compile(".*"), "", null, tf);
			mWebsiteText.setLinksClickable(true);
		} else {
			mWebsiteText.setVisibility(View.GONE);
		}
	}
	//Fetch and display website link information.
	//param intent The intent from which to fetch the information.
	protected void displayEmail(final String packagename, final Intent intent) {
		String email = AboutUtils.getStringMetadata(this, packagename,
			intent, METADATA_EMAIL);
		
		if (!TextUtils.isEmpty(email)) {
			mEmailImage.setImageResource(android.R.drawable.ic_dialog_email);
			mEmailText.setText(email);
			mEmailText.setLinksClickable(true);
		} else {
			mEmailImage.setImageURI(null);
		}
	}
//	//Check whether any credits are available. If not, display "no information available".
//	void checkCreditsAvailable() {
//		if (mAuthorsLabel.getVisibility() == View.GONE
//				&& mAuthorsLabel.getVisibility() == View.GONE
//				&& mAuthorsLabel.getVisibility() == View.GONE
//				&& mAuthorsLabel.getVisibility() == View.GONE ) {
//			mNoInformationText.setVisibility(View.VISIBLE);
//		} else {
//			mNoInformationText.setVisibility(View.GONE);
//		}				
//	}
    @Override
    public void onCreate(Bundle savedInstanceState) {
    	super.onCreate(savedInstanceState);
    	
    	setTitleColor(getResources().getColor(R.color.gold));
    	
    	//Set up the layout with the TabHost
    	tabHost = getTabHost();        
    	tabHost.setOnTabChangedListener(this);
        LayoutInflater.from(this).inflate(R.layout.about,
				tabHost.getTabContentView(), true);
        
        tabHost.addTab(tabHost.newTabSpec(getString(R.string.l_info))
                .setIndicator(getString(R.string.l_info))
                .setContent(R.id.sv_info));
//        tabHost.addTab(tabHost.newTabSpec(getString(R.string.l_credits))
//                .setIndicator(getString(R.string.l_credits))
//                .setContent(R.id.sv_credits));
        tabHost.addTab(tabHost.newTabSpec(getString(R.string.l_license))
                .setIndicator(getString(R.string.l_license))
                .setContent(R.id.sv_license));
             
        for (int i =0; i < tabHost.getTabWidget().getChildCount(); i++) {

//        	tabHost.getTabWidget().getChildAt(i).getLayoutParams().height = 100;
//        	tabHost.getTabWidget().getChildAt(i).getLayoutParams().width = 100;           

        	final TextView tv = (TextView)tabHost.getTabWidget().getChildAt(i).findViewById(android.R.id.title);
        	tv.setTextSize(17);
            tv.setTextColor(getResources().getColor(R.color.cyan));
            View vv = tabHost.getTabWidget().getChildAt(i);
           	vv.setBackgroundDrawable(getResources().getDrawable(R.drawable.ic_tab_indicator_small));
           	tabHost.getTabWidget().getChildAt(i).getLayoutParams().height /= 2;  // Or the size desired
        }
        onTabChanged(getString(R.string.l_info));
        SetStripEnabled(tabHost);
//        Bundle bundle = this.getIntent().getExtras();
//        if(bundle != null){
//        	String currentTab = bundle.getString("CurrentTab");
//	        if(currentTab != null){
//	        	mTabHost.setCurrentTabByTag(currentTab);
//	        }
//        }

        
        
        //Find the views
        mLogoImage = (ImageView) findViewById(R.id.i_logo);
        mEmailImage = (ImageView) findViewById(R.id.i_email);	
        mProgramNameAndVersionText = (TextView) findViewById(R.id.t_program_name_and_version);        
		mCommentsText = (TextView) findViewById(R.id.t_comments);		
		mCopyrightText = (TextView) findViewById(R.id.t_copyright);
		mWebsiteText = (TextView) findViewById(R.id.t_website);
        mEmailImage = (ImageView) findViewById(R.id.i_email);
		mEmailText = (TextView) findViewById(R.id.t_email);
		mAuthorsLabel = (TextView) findViewById(R.id.l_authors);
		mAuthorsText = (TextView) findViewById(R.id.et_authors);
		mDocumentersLabel = (TextView) findViewById(R.id.l_documenters);
		mDocumentersText = (TextView) findViewById(R.id.et_documenters);
		mTranslatorsLabel = (TextView) findViewById(R.id.l_translators);
		mTranslatorsText = (TextView) findViewById(R.id.et_translators);
		mArtistsLabel = (TextView) findViewById(R.id.l_artists);
		mArtistsText = (TextView) findViewById(R.id.et_artists);	
		mNoInformationText = (TextView) findViewById(R.id.tv_no_information);
		mLicenseText = (TextView) findViewById(R.id.et_license);
        if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
	    RutrackerDownloaderApp.AnalyticsTracker.trackPageView("/About");
    }

	public void onTabChanged(String tabId) {
		for(int i=0;i<tabHost.getTabWidget().getChildCount();i++){
			final TextView tv = (TextView) tabHost.getTabWidget().getChildAt(i).findViewById(android.R.id.title);
			tv.setTypeface(Typeface.DEFAULT);
        } 				
		final TextView tv = (TextView)tabHost.getTabWidget().getChildAt(tabHost.getCurrentTab()).findViewById(android.R.id.title);
		tv.setTypeface(Typeface.DEFAULT_BOLD);
	}    
    
    private void SetStripEnabled(TabHost tabHost) {

        TabWidget tw = (TabWidget) tabHost.getTabWidget();
        
        Field mBottomLeftStrip;
        Field mBottomRightStrip;

        try {
            mBottomLeftStrip = tw.getClass().getDeclaredField("mBottomLeftStrip");
            mBottomRightStrip = tw.getClass().getDeclaredField("mBottomRightStrip");
            if (!mBottomLeftStrip.isAccessible()) {
                mBottomLeftStrip.setAccessible(true);
            }
            if (!mBottomRightStrip.isAccessible()) {
                mBottomRightStrip.setAccessible(true);
            }
            mBottomLeftStrip.set(tw, getResources().getDrawable(R.drawable.ic_blank_tile));
            mBottomRightStrip.set(tw, getResources().getDrawable(R.drawable.ic_blank_tile));
        } 
        catch (java.lang.NoSuchFieldException e) {
            // possibly 2.2
            try {
                Method stripEnabled = tw.getClass().getDeclaredMethod("setStripEnabled", boolean.class);
                stripEnabled.invoke(tw, false);

            } 
            catch (Exception e1) {
                e1.printStackTrace();
            }
        } 
        catch (Exception e) {}
    }

    
	@Override
	protected void onDestroy() {
		super.onDestroy();
		//RutrackerDownloaderApp.AnalyticsTracker.dispatch();
	}
    
	@Override
	protected void onNewIntent(Intent intent) {
		super.onNewIntent(intent);
		setIntent(intent);
	}	

	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		switch(ActivityResultType.getValue(resultCode))
		{
		case RESULT_DOWNLOADER:
		case RESULT_MAIN:
		case RESULT_EXIT:
			setResult(resultCode);
			finish();
			break;
		};		
	}
	
	@Override
	protected void onResume() {
		super.onResume();
		//Decode the intent, if any
		final Intent intent = getIntent();
		if (intent == null) {
			setIntent(new Intent());
		}		
		String packagename = getPackageNameFromIntent(intent);
		
		Log.i(RutrackerDownloaderApp.TAG, "Showing About dialog for package " + packagename);
    	
    	displayLogo(packagename, intent);
        displayProgramNameAndVersion(packagename, intent);
    	displayComments(packagename, intent);
    	displayCopyright(packagename, intent);
    	displayWebsiteLink(packagename, intent);
    	displayAuthors(packagename, intent);
    	displayDocumenters(packagename, intent);
    	displayTranslators(packagename, intent);
    	displayArtists(packagename, intent);
    	displayLicense(packagename, intent);
    	displayEmail(packagename, intent);
    	
//    	checkCreditsAvailable();
    	
    	setResult(RESULT_OK);
        
    	if(RutrackerDownloaderApp.ExitState) RutrackerDownloaderApp.CloseApplication(this);
	}
		
	protected void showAboutDialog() {
		Intent intent = new Intent(ACTION_SHOW_ABOUT_DIALOG);
		startActivityForResult(intent, 0);
	}
}