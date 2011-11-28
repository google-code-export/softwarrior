package com.softwarrior.piratesearch;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

/**
 * Provides a set of general helper methods that can be used in web-based communication.
 *
 */
public class HttpHelper {

    /*
     * To convert the InputStream to String we use the BufferedReader.readLine()
     * method. We iterate until the BufferedReader return null which means
     * there's no more data to read. Each line will appended to a StringBuilder
     * and returned as String.
     */
    public static String ConvertStreamToString(InputStream is, String encoding) throws UnsupportedEncodingException {
    	InputStreamReader isr;
    	if (encoding != null) {
    		isr = new InputStreamReader(is, encoding);
    	} else {
    		isr = new InputStreamReader(is);
    	}
    	BufferedReader reader = new BufferedReader(isr);
        StringBuilder sb = new StringBuilder();
 
        String line = null;
        try {
            while ((line = reader.readLine()) != null) {
                sb.append(line + "\n");
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                is.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return sb.toString();
    }
    
    public static String ConvertStreamToString(InputStream is) {
    	try {
			return ConvertStreamToString(is, null);
		} catch (UnsupportedEncodingException e) {
			// Since this is going to use the default encoding, it is never going to crash on an UnsupportedEncodingException
			e.printStackTrace();
			return null;
		}
    }
    
}