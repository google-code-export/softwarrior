package com.softwarrior.piratesearch;

import java.net.URLEncoder;

/**
 * Search adapter for the Mininova torrent site (based on custom search RSS feeds)
 *
 */
public class MininovaAdapter extends RssFeedSearchAdapter {

	protected SearchResult fromRssItemToSearchResult(Item item) {
		String desc = item.getDescription();
		int size = desc.indexOf("Size: ") + 6;
		int ratio = desc.indexOf("Ratio: ") + 7;
		int seeds = desc.indexOf("seeds", ratio) + 7;
		return new SearchResult(item.getTitle(), item.getLink().replace("/tor/", "/get/"), item.getLink(), 
				desc.substring(size, desc.indexOf("<", size)).replace("&nbsp;", " "),  
				item.getPubdate(),
				Integer.parseInt(desc.substring(ratio, desc.indexOf(" ", ratio))),
				Integer.parseInt(desc.substring(seeds, desc.indexOf(" ", seeds))));
	}

	@Override
	protected String getUrl(String query, SortOrder order) {
		return "http://www.mininova.org/rss/" + URLEncoder.encode(query) + (order == SortOrder.BySeeders? "/seeds": "");
	}

	public String getSiteName() {
		return "Mininova";
	}
	
}
