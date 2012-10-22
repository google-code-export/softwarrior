package com.softwarrior.piratesearch;

import java.net.URLEncoder;

/**
 * Search adapter for the Monova torrent site (based on custom search RSS feeds)
 */
public class MonovaAdapter extends RssFeedSearchAdapter {

	protected SearchResult fromRssItemToSearchResult(Item item) {
		// Description in format 'Seeds: <num> Peers: <num> Filesize: <sizestring>'
		String d = item.getDescription();
		// Size
		String size = "";
		int sizeExist = d.indexOf("Filesize: ");
		if (sizeExist >= 0) {
			int sizeStart = sizeExist + "Filesize: ".length();
			size = d.substring(sizeStart);
		}
		// Seeds
		int seedsExist = d.indexOf("Seeds: ");
		int seeders = 0;
		if (seedsExist >= 0) {
			int seedsStart = seedsExist + "Seeds: ".length();
			try {
				seeders = Integer.parseInt(d.substring(seedsStart, d.indexOf(" ", seedsStart)));
			} catch (Exception e) { }
		}
		// Leechers
		int leechers = 0;
		int leechersExist = d.indexOf("Peers: ");
		if (leechersExist >= 0) {
			int leechersStart = leechersExist + "Peers: ".length();
			try {
				leechers = Integer.parseInt(d.substring(leechersStart, d.indexOf(" ", leechersStart)));
			} catch (Exception e) { }
		}
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
		return "http://www.monova.org/rss.php?type=search&term=" + URLEncoder.encode(query) + (order == SortOrder.BySeeders? "&order=seeds": "");
	}

	public String getSiteName() {
		return "Monova";
	}
	
}
