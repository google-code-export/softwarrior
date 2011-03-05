package com.softwarrior.file;

import android.graphics.drawable.Drawable; 

public class IconifiedText implements Comparable<IconifiedText>{ 
    
     private String mText = ""; 
     private String mInfo = "";
     private Drawable mIcon; 
     private boolean mSelectable = true; 

     public IconifiedText(String text, String info, Drawable bullet) { 
          mIcon = bullet; 
          mText = text; 
          mInfo = info;
     } 
      
     public boolean isSelectable() { 
          return mSelectable; 
     } 
      
     public void setSelectable(boolean selectable) { 
          mSelectable = selectable; 
     } 
      
     public String getText() { 
         return mText; 
    } 
     
    public void setText(String text) { 
         mText = text; 
    } 
     
    public String getInfo() { 
        return mInfo; 
   } 
    
   public void setInfo(String info) { 
        mInfo = info; 
   } 
    
     public void setIcon(Drawable icon) { 
          mIcon = icon; 
     } 
      
     public Drawable getIcon() { 
          return mIcon; 
     } 

     /** Make IconifiedText comparable by its name */ 
     
     public int compareTo(IconifiedText other) { 
          if(this.mText != null) 
               return this.mText.compareTo(other.getText()); 
          else 
               throw new IllegalArgumentException(); 
     } 
} 

