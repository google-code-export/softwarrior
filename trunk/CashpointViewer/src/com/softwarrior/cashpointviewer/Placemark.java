package com.softwarrior.cashpointviewer;

import java.io.File;
import java.io.FileInputStream;
import java.lang.ref.SoftReference;
import java.util.Comparator;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

//import org.w3c.dom.Attr;
import org.w3c.dom.Element;
//import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.Log;

import com.google.android.maps.GeoPoint;

public class Placemark {
    private int mId;

    private Context mContext;
    private float mLatitude;
    private float mLongitude;
    private boolean mLocationValid;

    private String mName;

    private String mPhotoSourcePath;
    private Uri mAudioSourceUri;
    private Uri mVideoSourceUri;
    private Uri mHtmlSourceUri;
    private Uri mInfoSourceUri;
    //private static final String PATH_PREFIX = "/sdcard/CashpointViewer/";

    private HashSet<String> mQRCodes = new HashSet<String>();

    private float mBearing;
    private float mDistance;
    private float mResizePercent;

    private static Paint mPaintRect;
    private static Paint mPaintTextBlack;
    private static Paint mPaintTextWhite;
    private static Drawable mDot;

    private static Pattern mHttpPattern = Pattern.compile("^(http://|https://)(\\S+).*");

    static {    	
		mPaintRect = new Paint();
		mPaintRect.setColor(0xFFCCCC00);
	
		mPaintTextBlack = new Paint();
		mPaintTextBlack.setColor(0xFF000000);
		mPaintTextBlack.setAntiAlias(true);
		mPaintTextBlack.setTextSize(16);
		mPaintTextBlack.setTextAlign(Paint.Align.LEFT);
	
		mPaintTextWhite = new Paint(mPaintTextBlack);
		mPaintTextWhite.setColor(0xFFFFFFFF);
    }

    private SoftReference<Bitmap> mPhoto = new SoftReference<Bitmap>(null);
    private static Bitmap mPhotoNotFound;

    public class PlacemarkLoadException extends CashpointException {
    	private static final long serialVersionUID = 0L;

		public PlacemarkLoadException(String reason) { super(reason); }
		@Override
		public String toString() { return "Placemark load exception:" + super.toString(); }
    }

    public Placemark(Context context, Element placemarkElement, int id) throws PlacemarkLoadException {
		if (placemarkElement == null)
		    throw new PlacemarkLoadException("placemarkElement is null");
		mContext = context;
		
		boolean nameRead = false;
		mResizePercent = 1;
	
		NodeList children = placemarkElement.getChildNodes();
		int numChildren = children.getLength();
		for (int i = 0; i < numChildren; ++i) {
		    Node child = children.item(i);
		    if (child.getNodeType() == Node.ELEMENT_NODE) {
	
			String childName = child.getNodeName();
	
			if (childName.equalsIgnoreCase("name")) {
			    Node n = child.getFirstChild();
			    if (n != null && n.getNodeType() == Node.TEXT_NODE) {
				mName = ((Text) n).getData();
				nameRead = true;
			    }
			} else if (childName.equalsIgnoreCase("LookAt")) {						
				
				NodeList children1 = child.getChildNodes();
				int numChildren1 = children1.getLength();
				boolean LatitudeValid = false;
			    boolean LongitudeValid = false;
				for (int i1 = 0; i1 < numChildren1; ++i1) {
				    Node child1 = children1.item(i1);
				    if (child1.getNodeType() == Node.ELEMENT_NODE) {
						String childName1 = child1.getNodeName();	
						if (childName1.equalsIgnoreCase("longitude")) {
						    Node n = child1.getFirstChild();
						    if (n != null && n.getNodeType() == Node.TEXT_NODE) {
						    	String value = ((Text) n).getData();
						    	mLongitude = Float.parseFloat(value);
						    	LongitudeValid = true;
						    }
						}
						else if (childName1.equalsIgnoreCase("latitude")) {
						    Node n = child1.getFirstChild();
						    if (n != null && n.getNodeType() == Node.TEXT_NODE) {
						    	String value = ((Text) n).getData();
						    	mLatitude = Float.parseFloat(value);
						    	LatitudeValid = true;
						    }
						}
						if(LatitudeValid && LongitudeValid)
							mLocationValid = true;
				    }
				}
			} else if (childName.equalsIgnoreCase("ExtendedData")) {						
	
				NodeList children2 = child.getChildNodes();
				int numChildren2 = children2.getLength();
				for (int i2 = 0; i2 < numChildren2; ++i2) {
				    Node child2 = children2.item(i2);
				    if (child2.getNodeType() == Node.ELEMENT_NODE) {
						String childName2 = child2.getNodeName();	
						if (childName2.equalsIgnoreCase("ext:qrcode")) {
						    Node n = child2.getFirstChild();
						    if (n != null && n.getNodeType() == Node.TEXT_NODE) {
						    	mQRCodes.add(((Text) n).getData());
						    }
						} else if (childName2.equalsIgnoreCase("ext:photo")) {
							mPhotoSourcePath = loadPath(child2);
						} else if (childName2.equalsIgnoreCase("ext:audio")) {
							mAudioSourceUri = loadUri(child2);
						} else if (childName2.equalsIgnoreCase("ext:video")) {
							mVideoSourceUri = loadUri(child2);
						} else if (childName2.equalsIgnoreCase("ext:text")) {
							mHtmlSourceUri = loadUri(child2);
						} else if (childName2.equalsIgnoreCase("ext:info")) {
							mInfoSourceUri = loadUri(child2);
						}
				    }
				}
			}
		    }
		}
	
		if (!nameRead)
		    Log.e(CashpointViewerApp.TAG, "<name> element is missing or incorrect");
	
		if (mDot == null)
		    mDot = context.getResources().getDrawable(R.drawable.map);
		if (mPhotoNotFound == null) {
		    mPhotoNotFound = BitmapFactory.decodeResource(context.getResources(), R.raw.photo_not_found);
		}	
		mId = id;
    }
   
    public void SetResizePercent(float percent){
    	mResizePercent = percent;
    }    
    public int getId() { return mId; }
    public float getLatitude() { return mLatitude; }
    public float getLongitude() { return mLongitude; }
    public GeoPoint getLocation() { return new GeoPoint((int) (mLatitude * 1e6), (int) (mLongitude * 1e6)); }
    public boolean isLocationValid() { return mLocationValid;}
    public String getName() { return mName;}
    public float getBearing() { return mBearing;}
    public void setBearing(float bearing) { mBearing = bearing;}
    public float getDistance() { return mDistance; }
    public void setDistance(float distance) { mDistance = distance; }
    public Bitmap getPhoto() {
		Bitmap result = mPhoto.get();
		if (result == null)
		    result = loadPhoto();
		return result;
    }
    public Uri getVideoSourceUri() { return mVideoSourceUri; }
    public Uri getAudioSourceUri() { return mAudioSourceUri; }
    public Uri getHtmlSourceUri() { return mHtmlSourceUri; }
    public Uri getInfoSourceUri() { return mInfoSourceUri;}
    public boolean checkQRCode(String qrCode) { return mQRCodes.contains(qrCode); }
    public boolean isQRCoded() { return !mQRCodes.isEmpty(); }
    public void draw(int x, int y, Canvas canvas) {
		// Draw the dot
    	int intrinsic_width = (int)(mDot.getIntrinsicWidth() * mResizePercent);
    	int intrinsic_height = (int)(mDot.getIntrinsicHeight() * mResizePercent);    	
    	int left = x - intrinsic_width / 2;
    	int top = y - intrinsic_height / 2;
    	int right =  x + intrinsic_width / 2;
    	int bottom = y + intrinsic_height / 2;
    	
		mDot.setBounds(left, top, right, bottom);   
		mDot.draw(canvas);
    }

    //Private methods
    private class PathData {
		String mPath;
		boolean mLocal;

		public PathData(String path, boolean local) {
		    mPath = path;
		    mLocal = local;
		}
    }    
    private PathData loadPathData(Node node) {
    	Node pathNode = node.getFirstChild();
    	String storagePath = mContext.getResources().getString(R.string.storage_path);
        if (pathNode != null && pathNode.getNodeType() == Node.TEXT_NODE) {
        	String nodeValue = ((Text) pathNode).getData();
    	    Matcher m = mHttpPattern.matcher(nodeValue);
    	    return m.matches() ? new PathData(nodeValue, false) : new PathData(
    	    		storagePath + nodeValue, true);
        } else
	    return null;
    }

    private String loadPath(Node node) { return loadPathData(node).mPath; }

    private Uri loadUri(Node node) {
		PathData pd = loadPathData(node);
		if (pd != null)
		    return pd.mLocal ? Uri.fromFile(new File(pd.mPath)) : Uri
			    .parse(pd.mPath);
		else
		    return null;
    }

    private Bitmap loadPhoto() {
		Bitmap result = null;
		try {
		    FileInputStream fis = new FileInputStream(mPhotoSourcePath);
		    result = BitmapFactory.decodeStream(fis);
		    fis.close();
		} catch (Exception e) {
		}
		if (result == null)
		    result = Bitmap.createBitmap(mPhotoNotFound);
		mPhoto = new SoftReference<Bitmap>(result);
		return result;
    }

    static class AzimuthComparator implements Comparator<Placemark> {

    	private float mAzimuth;

		public AzimuthComparator(float azimuth) {
		    mAzimuth = azimuth;
		}

		@Override
		public int compare(Placemark pm1, Placemark pm2) {
		    float f1 = Math.abs(pm1.mBearing - mAzimuth);
		    float f2 = Math.abs(pm2.mBearing - mAzimuth);
		    if (f1 > f2)
		    	return -1;
		    else if (f1 < f2)
		    	return 1;
		    else
		    	return 0;
		}
    }
}
