package com.softwarrior.piratesearch;

import java.net.URLEncoder;

/**
 * Search adapter for the Torrentreactor.net torrent site (based on custom search RSS feeds)
 */
public class TorrentReactorAdapter extends RssFeedSearchAdapter {

	protected SearchResult fromRssItemToSearchResult(Item item) {
		// Description includes size...
		String d = item.getDescription();
		int sizeStart = d.indexOf("Size: ") + "Size: ".length();
		String size = d.substring(sizeStart, d.indexOf(" MB", sizeStart) + " MB".length());
		// ... and seeders/leechers
		int statusStart = d.indexOf("Status: ") + "Status: ".length();
		int seeders = Integer.parseInt(d.substring(statusStart, d.indexOf(" ", statusStart)));
		int leechersStart = d.indexOf("seeders, ", statusStart) + "seeders, ".length();
		int leechers = Integer.parseInt(d.substring(leechersStart, d.indexOf(" ", leechersStart)));
		
		return new SearchResult(
				item.getTitle(), 
				item.getEnclosureUrl(), 
				item.getLink(),  
				size,
				item.getPubdate(),
				seeders,
				leechers);
	}

	@Override
	protected String getUrl(String query, SortOrder order) {
		return "http://www.torrentreactor.net/rss.php?search=" + URLEncoder.encode(query) + (order == SortOrder.BySeeders? "&orderby=a.seeds": "");
	}

	public String getSiteName() {
		return "TorrentReactor";
	}
	
}
