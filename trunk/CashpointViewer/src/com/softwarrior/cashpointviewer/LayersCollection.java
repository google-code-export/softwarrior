package com.softwarrior.cashpointviewer;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;
import org.xml.sax.SAXException;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;

public class LayersCollection {
    private static final LayersCollection INSTANCE = new LayersCollection();
    
    private List<LayerInfo> mLayers = new LinkedList<LayerInfo>();

    //Singleton
    private LayersCollection() {
    }
    
    public void init(Context context) {
	synchronized(mLayers) {
	    
	    /*
	     * Parse layers.xml
	     */
	    
	    Log.d(CashpointViewerApp.TAG, "Parsing layers.xml");
	    
	    mLayers.clear();
	    
	    String storagePath = context.getResources().getString(R.string.storage_path);
	    String fileName = context.getResources().getString(R.string.layers_collection_file);
	    FileInputStream fis = null;
	    try {
	    	fis = new FileInputStream(new File(storagePath + fileName));
	    } catch(FileNotFoundException e) {
	    	Log.e(CashpointViewerApp.TAG, fileName + " not found");
	    	return;
	    } catch(SecurityException e) {
	    	Log.e(CashpointViewerApp.TAG, "Can't read " + fileName + ": " + e.toString());
	    	return;
	    }
	    
	    DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
	    SharedPreferences settings = context.getSharedPreferences("CashpointViewer", Context.MODE_PRIVATE);
	    try {
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(fis);
			NodeList nodes = doc.getElementsByTagName("layer");
			int numNodes = nodes.getLength();
			for(int i = 0; i < numNodes; ++i) {
			    Node node = nodes.item(i);
			    if(node.getNodeType() == Node.ELEMENT_NODE)
				mLayers.add(new LayerInfo(context, settings, (Element)node));
			}
	    } catch (ParserConfigurationException e) {
	    	Log.e(CashpointViewerApp.TAG, "Error loading layers.xml: " + e.toString());
	    } catch (IOException e) {
	    	Log.e(CashpointViewerApp.TAG, "Error loading layers.xml: " + e.toString());
	    } catch (SAXException e) {
	    	Log.e(CashpointViewerApp.TAG, "Error loading layers.xml: " + e.toString());
	    } catch (LayerInfoLoadException e) {
	    	Log.e(CashpointViewerApp.TAG, "Error loading layers: " + e.toString());
	    }
	}
    }
    
    public static LayersCollection getInstance() {
    	return INSTANCE;
    }
    
    @Override
    public Object clone() throws CloneNotSupportedException {
    	throw new CloneNotSupportedException();
    }
    
    /*
     * Public methods
     */
    
    public List<LayerInfo> getLayers() {
		synchronized(mLayers) {
		    return new LinkedList<LayerInfo>(mLayers);
		}
    }
    
    public LayerInfo findLayer(String name) {
		synchronized(mLayers) {
		    for(LayerInfo li : mLayers) {
			if(li.getName().equals(name))
			    return li;
		    }
		    return null;
		}
    }
};

class LayerInfo {
    private Context mContext;
    private String mName;
    private File mFile;
    
    public LayerInfo(Context context, SharedPreferences preferences, Element element)
	    throws LayerInfoLoadException {
	if(element == null)
	    throw new LayerInfoLoadException("element is null");
	
	mContext = context;
	
	boolean nameRead = false;
	boolean fileRead = false;
	
	NodeList children = element.getChildNodes();
	int numChildren = children.getLength();
	for(int i = 0; i < numChildren; ++i) {
	    Node child = children.item(i);
	    if(child.getNodeType() == Node.ELEMENT_NODE) {
		String childName = child.getNodeName();
		if(childName.equalsIgnoreCase("name")) {
		    
		    /* 
		     * Read name
		     */
		    
		    Node n = child.getFirstChild();
		    if(n != null && n.getNodeType() == Node.TEXT_NODE) {
			mName = ((Text)n).getData();
			nameRead = true;
		    }
		} else if(childName.equalsIgnoreCase("file")) {
		    
		    /*
		     * Read file path
		     */
		    
		    Node n = child.getFirstChild();
		    if(n != null && n.getNodeType() == Node.TEXT_NODE) {
			mFile = new File(((Text)n).getData());
			fileRead = true;
		    }
		}
	    }
	}
	
	if(!nameRead)
	    Log.e(CashpointViewerApp.TAG, "Error reading layer info: <name> element is missing or incorrect");
	if(!fileRead)
	    Log.e(CashpointViewerApp.TAG, "Error reading layer info: <file> element is missing or incorrect");
    }
    
    public String getName() {
    	return mName;
    }
    
    public File getFile() {
    	return mFile;
    }
    
    public boolean isActive() {
		SharedPreferences settings = mContext.getSharedPreferences("CashpointViewer",Context.MODE_PRIVATE); 
		return settings.getBoolean(mName + "_active", false); 
    }
    
    public void setActive(boolean active) {
		SharedPreferences settings = mContext.getSharedPreferences("CashpointViewer",Context.MODE_PRIVATE);
		SharedPreferences.Editor editor = settings.edit();
		editor.putBoolean(mName + "_active", active);
		editor.commit();
    }
};

class LayerInfoLoadException extends CashpointException {
	private static final long serialVersionUID = 0L;

	public LayerInfoLoadException(String reason) {
	    super(reason);
	}

	@Override
	public String toString() {
	    return "Layer info load exception:" + super.toString();
	}
}
