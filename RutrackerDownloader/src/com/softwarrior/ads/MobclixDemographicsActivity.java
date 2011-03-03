package com.softwarrior.ads;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.Toast;
import android.widget.AdapterView.OnItemClickListener;

import com.mobclix.android.sdk.MobclixDemographics;
import com.mobclix.android.sdk.MobclixFeedback;

import com.softwarrior.rutrackerdownloader.R;

public class MobclixDemographicsActivity extends Activity implements MobclixFeedback.Listener{

	public static String ITEM_TITLE = null; 
    public static String ITEM_CAPTION = null;
    
    SimpleAdapter pAdapter;
    SimpleAdapter gAdapter;
    SeparatedListAdapter adapter;
    HashMap<String, Object> d;
    
    private EditText dialogView;
    private HashMap<String, EditText> dialogViews;
    
    private int id;
    private String key;
    
    private int mYear;
    private int mMonth;
    private int mDay;
    
    static final int BIRTHDATE_DIALOG_ID = 1;
    static final int EDUCATION_DIALOG_ID = 2;
    static final int ETHNICITY_DIALOG_ID = 3;
    static final int GENDER_DIALOG_ID = 4;
    static final int DATING_GENDER_DIALOG_ID = 5;
    static final int INCOME_DIALOG_ID = 6;
    static final int MARITAL_STATUS_DIALOG_ID = 7;
    static final int RELIGION_DIALOG_ID = 8;
    static final int AREA_CODE_DIALOG_ID = 10;
    static final int CITY_DIALOG_ID = 11;
    static final int COUNTRY_DIALOG_ID = 12;
    static final int DMA_CODE_DIALOG_ID = 13;
    static final int METRO_CODE_DIALOG_ID = 14;
    static final int POSTAL_CODE_DIALOG_ID = 15;
    static final int REGION_DIALOG_ID = 16;
    
    public Map<String,?> createItem(String title, String caption) {  
        Map<String,String> item = new HashMap<String,String>();  
        item.put(ITEM_TITLE, title);  
        item.put(ITEM_CAPTION, caption);  
        return item;  
    }  
	
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        setContentView(R.layout.mobclix_demographics_activity);

    	ITEM_TITLE = getString(R.string.ads_title);  
        ITEM_CAPTION = getString(R.string.ads_caption);
        
        Button submit = ((Button)findViewById(R.id.submit));
        submit.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				MobclixDemographics.sendDemographics(MobclixDemographicsActivity.this, d, MobclixDemographicsActivity.this);
				Log.v("MobclixDemographicsActivity", "Sending demographics.");
			}
        });
        
        d = new HashMap<String, Object>();
        dialogViews = new HashMap<String, EditText>();
        
        List<Map<String,?>> personal = new LinkedList<Map<String,?>>();  
        personal.add(createItem(getString(R.string.ads_birthdate), ""));  
        personal.add(createItem(getString(R.string.ads_education), ""));  
        personal.add(createItem(getString(R.string.ads_ethnicity), ""));
        personal.add(createItem(getString(R.string.ads_gender), ""));
        personal.add(createItem(getString(R.string.ads_dating_gender), ""));
        personal.add(createItem(getString(R.string.ads_income), ""));
        personal.add(createItem(getString(R.string.ads_marital_status), ""));
        personal.add(createItem(getString(R.string.ads_religion), ""));
        
        List<Map<String,?>> geography = new LinkedList<Map<String,?>>();  
        geography.add(createItem(getString(R.string.ads_area_code), ""));  
        geography.add(createItem(getString(R.string.ads_city), ""));  
        geography.add(createItem(getString(R.string.ads_country), ""));
        geography.add(createItem(getString(R.string.ads_dma_code), ""));
        geography.add(createItem(getString(R.string.ads_metro_code), ""));
        geography.add(createItem(getString(R.string.ads_postal_code), ""));
        geography.add(createItem(getString(R.string.ads_region), ""));
        
        final Calendar c = Calendar.getInstance();
        mYear = c.get(Calendar.YEAR);
        mMonth = c.get(Calendar.MONTH);
        mDay = c.get(Calendar.DAY_OF_MONTH);
  
        // Create our section adapters
        pAdapter = new SimpleAdapter(this, personal, R.layout.demo_list_edittext,  
                new String[] { ITEM_TITLE, ITEM_CAPTION }, new int[] { R.id.demo_list_edittext_title, R.id.demo_list_edittext_caption });
        gAdapter = new SimpleAdapter(this, geography, R.layout.demo_list_edittext,  
                new String[] { ITEM_TITLE, ITEM_CAPTION }, new int[] { R.id.demo_list_edittext_title, R.id.demo_list_edittext_caption });
        
        // create our list and custom adapter  
        adapter = new SeparatedListAdapter(this);  
        adapter.addSection(getString(R.string.ads_personal), pAdapter); 
        adapter.addSection(getString(R.string.ads_geographic), gAdapter);
  
        ListView list = ((ListView)findViewById(R.id.demo_listview));  
        list.setAdapter(adapter);
        list.setCacheColorHint(Color.BLACK);
        
        list.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> parent, View view, int position, long i) {
            	id = position;
            	showDialog(position);
            }
        });
    }
    
    public void onFailure() {
		Toast.makeText(MobclixDemographicsActivity.this, getString(R.string.ads_demographics_failed), 10).show();
	}

	public void onSuccess() {
		Toast.makeText(MobclixDemographicsActivity.this, getString(R.string.ads_demographics_sent), 10).show();
	}
    
    @Override protected void onSaveInstanceState(Bundle savedInstanceState) {
    	// Save instance state!
    	super.onSaveInstanceState(savedInstanceState);
    }
    
    @Override protected void onRestoreInstanceState(Bundle savedInstanceState) {
    	super.onRestoreInstanceState(savedInstanceState);
    	// Restore instance state!
    }
    
    @Override
    protected Dialog onCreateDialog(int i) {
        switch (i) {
        case BIRTHDATE_DIALOG_ID:
            return buildBirthdateDialog();
        case EDUCATION_DIALOG_ID:
        	final CharSequence[] educationItems = {
        			getString(R.string.ads_unknown), 
        			getString(R.string.ads_high_school),
        			getString(R.string.ads_some_college),
        			getString(R.string.ads_in_college), 
        			getString(R.string.ads_bachelors_degree), 
        			getString(R.string.ads_masters_degree),
        			getString(R.string.ads_doctoral_degree)};
        	return buildEnumDialog(getString(R.string.ads_education), educationItems);
        case ETHNICITY_DIALOG_ID:
        	final CharSequence[] ethnicityItems = {
        			getString(R.string.ads_unknown), 
        			getString(R.string.ads_mixed), 
        			getString(R.string.ads_asian),
        			getString(R.string.ads_black),
        			getString(R.string.ads_hispanic),
        			getString(R.string.ads_native_american),
        			getString(R.string.ads_white)};
        	return buildEnumDialog(getString(R.string.ads_ethnicity), ethnicityItems);
        case GENDER_DIALOG_ID:
        	final CharSequence[] genderItems = {
        			getString(R.string.ads_unknown),
        			getString(R.string.ads_male),
        			getString(R.string.ads_female)};
        	return buildEnumDialog("Gender", genderItems);
        case DATING_GENDER_DIALOG_ID:
        	final CharSequence[] datingGenderItems = {
        			getString(R.string.ads_unknown),
        			getString(R.string.ads_male),
        			getString(R.string.ads_female),
        			getString(R.string.ads_both)};
        	return buildEnumDialog(getString(R.string.ads_dating_gender), datingGenderItems);
        case MARITAL_STATUS_DIALOG_ID:
        	final CharSequence[] maritalStatusItems = {
        			getString(R.string.ads_unknown),
        			getString(R.string.ads_single_available),
        			getString(R.string.ads_single_unavailable),
        			getString(R.string.ads_married)};
        	return buildEnumDialog(getString(R.string.ads_marital_status), maritalStatusItems);
        case RELIGION_DIALOG_ID:
        	final CharSequence[] religionItems = {
        			getString(R.string.ads_unknown),
        			getString(R.string.ads_buddhism),
        			getString(R.string.ads_christianity),
        			getString(R.string.ads_hinduism),
        			getString(R.string.ads_islam),
        			getString(R.string.ads_judaism),
        			getString(R.string.ads_unaffiliated),
        			getString(R.string.ads_other)};
        	return buildEnumDialog(getString(R.string.ads_religion), religionItems);
        case INCOME_DIALOG_ID:
        	return buildEditTextDialog(getString(R.string.ads_income));
        case AREA_CODE_DIALOG_ID:
        	return buildEditTextDialog(getString(R.string.ads_area_code));
        case CITY_DIALOG_ID:
        	return buildEditTextDialog(getString(R.string.ads_city));
        case COUNTRY_DIALOG_ID:
        	return buildEditTextDialog(getString(R.string.ads_country));
        case DMA_CODE_DIALOG_ID:
        	return buildEditTextDialog(getString(R.string.ads_dma_code));
        case METRO_CODE_DIALOG_ID:
        	return buildEditTextDialog(getString(R.string.ads_metro_code));
        case POSTAL_CODE_DIALOG_ID:
        	return buildEditTextDialog(getString(R.string.ads_postal_code));
        case REGION_DIALOG_ID:
        	return buildEditTextDialog(getString(R.string.ads_region));
        }
        return null;
    }
    
    @Override
	protected void onPrepareDialog(int id, Dialog d) {
    	if (dialogViews.containsKey("" + id))
    		dialogView = dialogViews.get("" + id);
    	switch (id) {
        case EDUCATION_DIALOG_ID:
        	key = MobclixDemographics.Education;
        	break;
        case ETHNICITY_DIALOG_ID:
        	key = MobclixDemographics.Ethnicity;
        	break;
        case GENDER_DIALOG_ID:
        	key = MobclixDemographics.Gender;
        	break;
        case DATING_GENDER_DIALOG_ID:
        	key = MobclixDemographics.DatingGender;
        	break;
        case MARITAL_STATUS_DIALOG_ID:
        	key = MobclixDemographics.MaritalStatus;
        	break;
        case RELIGION_DIALOG_ID:
        	key = MobclixDemographics.Religion;
        	break;
        case INCOME_DIALOG_ID:
        	key = MobclixDemographics.Income;
        	break;
        case AREA_CODE_DIALOG_ID:
        	key = MobclixDemographics.AreaCode;
        	break;
        case CITY_DIALOG_ID:
        	key = MobclixDemographics.City;
        	break;
        case COUNTRY_DIALOG_ID:
        	key = MobclixDemographics.Country;
        	break;
        case DMA_CODE_DIALOG_ID:
        	key = MobclixDemographics.DMACode;
        	break;
        case METRO_CODE_DIALOG_ID:
        	key = MobclixDemographics.MetroCode;
        	break;
        case POSTAL_CODE_DIALOG_ID:
        	key = MobclixDemographics.PostalCode;
        	break;
        case REGION_DIALOG_ID:
        	key = MobclixDemographics.Region;
        	break;
        }
    }
    
    void updateView() {
    	adapter.notifyDataSetChanged();
    	pAdapter.notifyDataSetChanged();
    	gAdapter.notifyDataSetChanged();
    }
    
    Dialog buildBirthdateDialog() {
    	return new DatePickerDialog(this,
        		new DatePickerDialog.OnDateSetListener() {
	
	                @SuppressWarnings("unchecked")
					public void onDateSet(DatePicker view, int year, 
	                                      int monthOfYear, int dayOfMonth) {
	                    mYear = year;
	                    mMonth = monthOfYear;
	                    mDay = dayOfMonth;
	                    ((Map<String,String>) adapter.getItem(BIRTHDATE_DIALOG_ID)).put(ITEM_CAPTION, "" + (mMonth + 1) + "/" + mDay + "/" + mYear);
	                    Date date = new Date(mYear - 1900, mMonth, mDay);
	                    d.put(MobclixDemographics.Birthdate, date);
	                    
	                    updateView();
	                }
	            },
                mYear, mMonth, mDay);
    }
    
    Dialog buildEnumDialog(String title, final CharSequence[] items) {
    	AlertDialog.Builder builder = new AlertDialog.Builder(this);
    	builder.setTitle(title);
    	builder.setSingleChoiceItems(items, -1, new DialogInterface.OnClickListener() {
    	    @SuppressWarnings("unchecked")
			public void onClick(DialogInterface dialog, int item) {
    	    	((Map<String,String>) adapter.getItem(id)).put(ITEM_CAPTION, items[item].toString());
                d.put(key, item);
                updateView();
                dialog.dismiss();
    	    }
    	});
    	return builder.create();
    }

    Dialog buildEditTextDialog(String title) {
    	Log.v("BLAH", "TITLE: " + title);
    	AlertDialog.Builder builder = new AlertDialog.Builder(this);
    	builder.setTitle(title);
        dialogView = new EditText(this);
        dialogView.setSingleLine(true);
        dialogViews.put("" + id, dialogView);
    	builder.setView(dialogView);
    	builder.setPositiveButton(getString(R.string.ads_set), new DialogInterface.OnClickListener() {
			@SuppressWarnings("unchecked")
			public void onClick(DialogInterface dialog, int which) {
				String t = dialogView.getText().toString();
				((Map<String,String>) adapter.getItem(id)).put(ITEM_CAPTION, t);
                d.put(key, t);
                Log.v("BLAH", "ID: " + id + ", key: " + key + ", item: " + t);
                
                updateView();
                dialog.dismiss();
			}
    	});
    	return builder.create();
    }


	public class SeparatedListAdapter extends BaseAdapter {  
    	  
        public final Map<String,Adapter> sections = new LinkedHashMap<String,Adapter>();  
        public final ArrayAdapter<String> headers;  
        public final static int TYPE_SECTION_HEADER = 0;  
      
        public SeparatedListAdapter(Context context) {  
            headers = new ArrayAdapter<String>(context, R.layout.demo_list_header);  
        }  
      
        public void addSection(String section, Adapter adapter) {  
            this.headers.add(section);  
            this.sections.put(section, adapter);  
        }  
      
        public Object getItem(int position) {  
            for(Object section : this.sections.keySet()) {  
                Adapter adapter = sections.get(section);  
                int size = adapter.getCount() + 1;  
      
                // check if position inside this section  
                if(position == 0) return section;  
                if(position < size) return adapter.getItem(position - 1);  
      
                // otherwise jump into next section  
                position -= size;  
            }  
            return null;  
        }  
      
        public int getCount() {  
            // total together all sections, plus one for each section header  
            int total = 0;  
            for(Adapter adapter : this.sections.values())  
                total += adapter.getCount() + 1;  
            return total;  
        }  
      
        public int getViewTypeCount() {  
            // assume that headers count as one, then total all sections  
            int total = 1;  
            for(Adapter adapter : this.sections.values())  
                total += adapter.getViewTypeCount();  
            return total;  
        }  
      
        public int getItemViewType(int position) {  
            int type = 1;  
            for(Object section : this.sections.keySet()) {  
                Adapter adapter = sections.get(section);  
                int size = adapter.getCount() + 1;  
      
                // check if position inside this section  
                if(position == 0) return TYPE_SECTION_HEADER;  
                if(position < size) return type + adapter.getItemViewType(position - 1);  
      
                // otherwise jump into next section  
                position -= size;  
                type += adapter.getViewTypeCount();  
            }  
            return -1;  
        }  
      
        public boolean areAllItemsSelectable() {  
            return false;  
        }  
      
        public boolean isEnabled(int position) {  
            return (getItemViewType(position) != TYPE_SECTION_HEADER);  
        }  
      
        public View getView(int position, View convertView, ViewGroup parent) {  
            int sectionnum = 0;  
            for(Object section : this.sections.keySet()) {  
                Adapter adapter = sections.get(section);  
                int size = adapter.getCount() + 1;  
      
                // check if position inside this section  
                if(position == 0) return headers.getView(sectionnum, convertView, parent);  
                if(position < size) return adapter.getView(position - 1, convertView, parent);  
      
                // otherwise jump into next section  
                position -= size;  
                sectionnum++;  
            }  
            return null;  
        }  
      
        public long getItemId(int position) {  
            return position;  
        }  
      
    }  
}