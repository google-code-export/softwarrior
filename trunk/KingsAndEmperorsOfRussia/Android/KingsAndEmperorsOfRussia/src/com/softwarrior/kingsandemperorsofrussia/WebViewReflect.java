package com.softwarrior.kingsandemperorsofrussia;

import android.webkit.WebSettings;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class WebViewReflect
{
  private static Method mWebSettings_setDatabaseEnabled;
  private static Method mWebSettings_setDatabasePath;
  private static Method mWebSettings_setDomStorageEnabled;
  private static Method mWebSettings_setGeolocationEnabled;

  static
  {
    checkCompatibility();
  }

  @SuppressWarnings("rawtypes")
public static void checkCompatibility()
  {
    try
    {
      Class[] arrayOfClass1 = new Class[1];
      arrayOfClass1[0] = Boolean.TYPE;
      mWebSettings_setDatabaseEnabled = WebSettings.class.getMethod("setDatabaseEnabled", arrayOfClass1);
      Class[] arrayOfClass2 = new Class[1];
      arrayOfClass2[0] = String.class;
      mWebSettings_setDatabasePath = WebSettings.class.getMethod("setDatabasePath", arrayOfClass2);
      Class[] arrayOfClass3 = new Class[1];
      arrayOfClass3[0] = Boolean.TYPE;
      mWebSettings_setDomStorageEnabled = WebSettings.class.getMethod("setDomStorageEnabled", arrayOfClass3);
      Class[] arrayOfClass4 = new Class[1];
      arrayOfClass4[0] = Boolean.TYPE;
      mWebSettings_setGeolocationEnabled = WebSettings.class.getMethod("setGeolocationEnabled", arrayOfClass4);
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      localNoSuchMethodException.printStackTrace();
    }
  }

  public static void setDatabaseEnabled(boolean paramBoolean) throws IOException
  {
    try
    {
      mWebSettings_setDatabaseEnabled.invoke(Boolean.valueOf(paramBoolean), new Object[0]);
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Throwable localThrowable = localInvocationTargetException.getCause();
      if ((localThrowable instanceof IOException))
        throw ((IOException)localThrowable);
      if ((localThrowable instanceof RuntimeException))
        throw ((RuntimeException)localThrowable);
      if ((localThrowable instanceof Error))
        throw ((Error)localThrowable);
      throw new RuntimeException(localInvocationTargetException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        System.err.println("unexpected " + localIllegalAccessException);
    }
  }

  public static void setDomStorage(WebSettings paramWebSettings)
  {
    if (mWebSettings_setDomStorageEnabled != null);
    try
    {
      Method localMethod = mWebSettings_setDomStorageEnabled;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.valueOf(true);
      localMethod.invoke(paramWebSettings, arrayOfObject);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        localIllegalArgumentException.printStackTrace();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        localInvocationTargetException.printStackTrace();
    }
  }

  public static void setGeolocationEnabled(WebSettings paramWebSettings, boolean paramBoolean)
  {
    if (mWebSettings_setGeolocationEnabled != null);
    while (true)
    {
      try
      {
        Method localMethod = mWebSettings_setGeolocationEnabled;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Boolean.valueOf(paramBoolean);
        localMethod.invoke(paramWebSettings, arrayOfObject);
        return;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        localIllegalArgumentException.printStackTrace();
        continue;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        localIllegalAccessException.printStackTrace();
        continue;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        localInvocationTargetException.printStackTrace();
        continue;
      }
      //Log.i(FreeAlmanacApp.TAG, "Native Geolocation not supported - were ok");
    }
  }

  public static void setStorage(WebSettings paramWebSettings, boolean paramBoolean, String paramString)
  {
    if (mWebSettings_setDatabaseEnabled != null);
    try
    {
      Method localMethod1 = mWebSettings_setDatabaseEnabled;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Boolean.valueOf(paramBoolean);
      localMethod1.invoke(paramWebSettings, arrayOfObject1);
      Method localMethod2 = mWebSettings_setDatabasePath;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = paramString;
      localMethod2.invoke(paramWebSettings, arrayOfObject2);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        localIllegalArgumentException.printStackTrace();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        localInvocationTargetException.printStackTrace();
    }
  }
}