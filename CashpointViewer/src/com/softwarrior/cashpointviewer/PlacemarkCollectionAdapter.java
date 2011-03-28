package com.softwarrior.cashpointviewer;

import java.util.List;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Gallery;
import android.widget.ImageView;

public class PlacemarkCollectionAdapter extends BaseAdapter {
    private Context mContext;
    private List<Placemark> mPlacemarks;
    private int mGalleryItemBackground;
    
    private static final int BITMAP_WIDTH = 240;
    private static final int BITMAP_HEIGHT = 160;
    
    public PlacemarkCollectionAdapter(Context context) {
    	mContext = context;	
		TypedArray ta = context.obtainStyledAttributes(R.styleable.Gallery);
		mGalleryItemBackground = ta.getResourceId(
			R.styleable.Gallery_android_galleryItemBackground, 0);
		ta.recycle();
    }

    public synchronized void setPlacemarks(List<Placemark> placemarks) {
    	mPlacemarks = placemarks;
    }
    
    @Override
    public synchronized int getCount() {
    	return mPlacemarks != null ? mPlacemarks.size() : 0;
    }

    @Override
    public synchronized Object getItem(int position) {
		if(mPlacemarks == null)
		    return null;
		return position < mPlacemarks.size() ? mPlacemarks.get(position) : null;
    }

    @Override
    public long getItemId(int position) {
		if(mPlacemarks == null)
		    return 0;
		return position < mPlacemarks.size() ? mPlacemarks.get(position).getId() : 0;
    }

    @Override
    public synchronized View getView(int position, View convertView, ViewGroup parent) {
		if(mPlacemarks == null)
		    return null;		
		Placemark placemark = mPlacemarks.get(position);
		ImageView iv = new ImageView(mContext);
		iv.setImageDrawable(new BitmapDrawable(placemark.getPhoto()));
		iv.setLayoutParams(new Gallery.LayoutParams(BITMAP_WIDTH, BITMAP_HEIGHT));
		iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
		iv.setBackgroundResource(mGalleryItemBackground);
		return iv;
    }
}
