package com.softwarrior.piratesearch;

import java.net.URLEncoder;


/**
 * Search adapter for the Vertor torrent site (based on custom search RSS feeds)
 */
public class VertorAdapter extends RssFeedSearchAdapter {
	
	protected SearchResult fromRssItemToSearchResult(Item item) {
		// Web links in format http://www.vertor.com/index.php?mod=view&id=<torrent-id>
		int torIDStart = "http://www.vertor.com/index.php?mod=view&id=".length();
		String torID = item.getLink().substring(torIDStart);
		String d = item.getDescription();
		// Description includes size...
		int sizeStart = d.indexOf("Size: ") + "Size: ".length();
		String size = d.substring(sizeStart, d.indexOf(" ", sizeStart));
		size = size.replace("&nbsp;", "");
		// ... and seeders/leechers
		int statusStart = d.indexOf("Status: ") + "Status: ".length();
		int seeders = Integer.parseInt(d.substring(statusStart, d.indexOf(" ", statusStart)));
		int leechersStart = d.indexOf("seeders, ", statusStart) + "seeders, ".length();
		int leechers = Integer.parseInt(d.substring(leechersStart, d.indexOf(" ", leechersStart)));
		return new SearchResult(
				item.getTitle(), 
				"http://www.vertor.com/index.php?mod=download&id=" + torID, 
				"http://www.vertor.com/index.php?mod=view&id=" + torID, 
				size,  
				item.getPubdate(), 
				seeders, 
				leechers);
	}

	@Override
	protected String getUrl(String query, SortOrder order) {
		return "http://www.vertor.com/index.php?mod=rss_search&words=" + URLEncoder.encode(query) + "&search=1" + (order == SortOrder.BySeeders? "&orderby=a.seeds": "");
	}

	public String getSiteName() {
		return "Vertor";
	}
	
}
