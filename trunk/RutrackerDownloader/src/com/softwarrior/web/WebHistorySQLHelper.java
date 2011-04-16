package com.softwarrior.web;

import com.softwarrior.rutrackerdownloader.RutrackerDownloaderApp;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.provider.BaseColumns;
import android.util.Log;

/** Helper to the database, manages versions and creation */
public class WebHistorySQLHelper extends SQLiteOpenHelper {
    private static final String DATABASE_NAME = "webhistory.db";
    private static final int DATABASE_VERSION = 1;

    // Table name
    public static final String TABLE = "webhistory";
    // Columns
    public static final String DATE_TIME = "date_time";
    public static final String ACTION = "action";
    public static final String NAME = "name";
    public static final String URL = "url";

    public WebHistorySQLHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        String sql = "create table " + TABLE + "( " + BaseColumns._ID
                + " integer primary key autoincrement, " 
                + DATE_TIME + " text not null, "
                + ACTION + " text not null, "
                + NAME + " text not null, "
                + URL + " text not null);";
        Log.d(RutrackerDownloaderApp.TAG, "onCreate: " + sql);
        db.execSQL(sql);
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        if (oldVersion >= newVersion)
            return;
        String sql = null;
        if (oldVersion == 1) 
            sql = "alter table " + TABLE + " add note text;";
        if (oldVersion == 2)
            sql = "";

        Log.d(RutrackerDownloaderApp.TAG, "onUpgrade  : " + sql);
        if (sql != null)
            db.execSQL(sql);
    }
}
