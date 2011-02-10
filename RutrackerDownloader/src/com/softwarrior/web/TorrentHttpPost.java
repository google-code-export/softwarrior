package com.softwarrior.web;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;

import com.softwarrior.rutrackerdownloader.R;

public class TorrentHttpPost extends Activity {

    TextView textMsg;     
      
      @Override
      public void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        
        setContentView(R.layout.httplayout);
        
        // Associate component with layout
        textMsg=(TextView)findViewById(R.id.httptext);
        
        DefaultHttpClient httpclient = new DefaultHttpClient(); 
        
        // Get cookies from the login page (not the address same of the form post)
        HttpGet httpget = new HttpGet("https://secure.pragprog.com/login");
        
        HttpResponse response;
        try {
            response = httpclient.execute(httpget);
            HttpEntity entity = response.getEntity();
            
            Log.d("httpPost", "Login form get: " + response.getStatusLine());
            if (entity != null) {
                entity.consumeContent();
            }
            
            Log.d("httpPost", "Initial set of cookies:");
            List<Cookie> cookies = httpclient.getCookieStore().getCookies();
            if (cookies.isEmpty()) {
                Log.d("httpPost", "None");
            } else {
                for (int i = 0; i < cookies.size(); i++) {
                    Log.d("httpPost", "- " + cookies.get(i).toString());
                }
            }

            // Preparing the post operation (address obtained from the Login page source; it's the form-action)
            HttpPost httpost = new HttpPost("https://secure.pragprog.com/session?");
            
            List <NameValuePair> nvps = new ArrayList <NameValuePair>();
            nvps.add(new BasicNameValuePair("email", "youremail@email.org"));
            nvps.add(new BasicNameValuePair("password", "somepassword"));
            
            httpost.setEntity(new UrlEncodedFormEntity(nvps, HTTP.UTF_8));
            
            // Post, check and show the result (not really spectacular, but works):
            response = httpclient.execute(httpost);
            entity = response.getEntity();
            
            Log.d("httpPost", "Login form get: " + response.getStatusLine());

            textMsg.setText("Response: " + response.getStatusLine());
            
            if (entity != null) {
                entity.consumeContent();
            }
            
            // Send the cookies grabbed from the login form
            Log.d("httpPost", "Post logon cookies:");
            cookies = httpclient.getCookieStore().getCookies();
            if (cookies.isEmpty()) {
                Log.d("httpPost", "None");
            } else {
                for (int i = 0; i < cookies.size(); i++) {
                    Log.d("httpPost", "- " + cookies.get(i).toString());
                }
            }         

        } catch (ClientProtocolException e) {
            Log.e("httpPost", e.getMessage());
            e.printStackTrace();
        } catch (IOException e) {
            Log.e("httpPost", e.getMessage());
            e.printStackTrace();
        } catch (Exception e) {
            Log.e("httpPost", e.getMessage());
            e.printStackTrace();
        }
    }
}
