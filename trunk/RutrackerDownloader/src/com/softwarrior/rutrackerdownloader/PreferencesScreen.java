package com.softwarrior.rutrackerdownloader;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceScreen;
import android.view.KeyEvent;

import java.util.ArrayList;
import java.util.Collection;

public final class PreferencesScreen extends PreferenceActivity
    implements OnSharedPreferenceChangeListener {

	//FILMS, VIDEO, TV
	public static final String KEY_VIDEO_FOREIGN_FILMS = "preferences_video_foreign_films";
	public static final String KEY_VIDEO_RUSSIAN_FILMS = "preferences_video_russian_films";
	public static final String KEY_VIDEO_AUTHORS_FILMS = "preferences_video_authors_films";
	public static final String KEY_VIDEO_THEATRE = "preferences_video_theatre";
	public static final String KEY_VIDEO_ANIMATIONS = "preferences_video_animations";
	public static final String KEY_VIDEO_ANIMATION_SERIALS = "preferences_video_animation_serials";
	public static final String KEY_VIDEO_ANIME = "preferences_video_anime";
	//SERIALS
	public static final String KEY_SERIALS_FOREIGN = "preferences_serials_foreign";
	public static final String KEY_SERIALS_RUSSIAN = "preferences_serials_russian";
	//AUDIOBOOKS
	public static final String KEY_AUDIOBOOKS_AUDIOBOOKS = "preferences_audiobooks_audiobooks";	
	//MUSIC
	public static final String KEY_MUSIC_CLASSIC = "preferences_music_classic";
	public static final String KEY_MUSIC_POPE_DANCE = "preferences_music_pope_dance";
	
  @Override
  protected void onCreate(Bundle icicle) {
    super.onCreate(icicle);
    addPreferencesFromResource(R.xml.preferences);
    PreferenceScreen preferences = getPreferenceScreen();
    preferences.getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
    setContentView(R.layout.preferences);
  }

  public void onSharedPreferenceChanged(SharedPreferences sharedPreferences,
			String key) {
		// TODO Auto-generated method stub	
  }
}
