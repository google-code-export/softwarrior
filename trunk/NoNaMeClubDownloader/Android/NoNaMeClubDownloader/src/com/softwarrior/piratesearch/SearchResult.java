package com.softwarrior.piratesearch;

import java.util.Date;

import android.net.Uri;
import android.text.format.DateFormat;

/**
 * Represents a search result form the torent site.
 *
 */
public class SearchResult {

	final private String title;
	final private String torrentUrl;
	final private String detailsUrl;
	final private String size;
	final private Date added;
	final private int seeds;
	final private int leechers;

	public String getTitle() { return title; }
	public String getTorrentUrl() { return torrentUrl; }
	public String getDetailsUrl() { return detailsUrl; }
	public String getSize() { return size; }
//	public Date getAddedDate() { return added; }
	public String getAddedDate() { 
		return (String) DateFormat.format("dd-MMM-yy", added);
	}
	public int getSeeds() { return seeds; }
	public int getLeechers() { return leechers; }
	
	public SearchResult(String title, String torrentUrl, String detailsUrl, String size, Date added, int seeds, int leechers) {
		this.title = title;
		this.torrentUrl = torrentUrl;
		this.detailsUrl = detailsUrl;
		this.size = size;
		this.added = added;
		this.seeds = seeds;
		this.leechers = leechers;
	}

	public Uri getDetailsUri() {
		return Uri.parse(getDetailsUrl());
	}

	public Uri getTorrentUri() {
		return Uri.parse(getTorrentUrl());
	}
	
	@Override
	public String toString() {
		return title;
	}
	
}
