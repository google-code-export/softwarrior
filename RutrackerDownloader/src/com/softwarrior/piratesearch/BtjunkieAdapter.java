package com.softwarrior.piratesearch;

import java.net.URLEncoder;

/**
 * Search adapter for the BTJunkie torrent site (based on custom search RSS feeds)
 */
public class BtjunkieAdapter extends RssFeedSearchAdapter {

	protected SearchResult fromRssItemToSearchResult(Item item) {
		int size = item.getDescription().indexOf("Size: ") + 6;
		String t = item.getTitle(); // The title in format 'name  [seeders/leechers]'
		int i = t.lastIndexOf("["); // Where the [seeders/leechers] string starts
		String seeders = t.substring(i + 1, t.indexOf("/", i)); // The seeders text
		String leechers = t.substring(t.indexOf("/", i) + 1, t.indexOf("]", i)); // The seeders text
		return new SearchResult(
				t.substring(0, i - 2), 
				item.getLink() + "/download.torrent", 
				item.getLink(), 
				item.getDescription().substring(size), 
				item.getPubdate(),
				(seeders.equals("X")? 0: Integer.parseInt(seeders)),
				(leechers.equals("X")? 0: Integer.parseInt(leechers)));
	}

	@Override
	protected String getUrl(String query, SortOrder order) {
		return "http://btjunkie.org/rss.xml?query=" + URLEncoder.encode(query) + (order == SortOrder.BySeeders? "&o=22": "");
	}

	public String getSiteName() {
		return "BTJunkie";
	}
	
}
