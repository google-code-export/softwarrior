package com.softwarrior.piratesearch;

import java.net.URLEncoder;

/**
 * Search adapter for the EzRss torrent site (based on custom search RSS feeds)
 * This adapter does not support sorting but instead always orders by release date (descending)
 */
public class EzrssAdapter extends RssFeedSearchAdapter {

	protected SearchResult fromRssItemToSearchResult(Item item) {

		EzrssItem theItem = (EzrssItem) item;
		return new SearchResult(
				item.getTitle(), 
				theItem.comments,
				item.getLink(),
				FileSizeConverter.getSize(item.getEnclosureLength()), 
				item.getPubdate(), 
				0, 
				0);
	}

	@Override
	protected String getUrl(String query, SortOrder order) {
		return "http://ezrss.it/search/index.php?simple&show_name=" + URLEncoder.encode(query) + "&mode=rss";
	}

	@Override
	protected RssParser getRssParser(String url) {
		return new EzrssRssParser(url);
	}
	
	/**
	 * Custom Item with addition torrentLink. size, seeders and leechers data properties
	 */
	public class EzrssItem extends Item {
		public String comments;
	}
	
	/**
	 * Custom parser to parse the additional comments data property
	 */
	public class EzrssRssParser extends RssParser {

		public EzrssRssParser(String url) {
			super(url);
		}
		
		public Item createNewItem() {
			return new EzrssItem();
		}

	    public void addAdditionalData(String localName, Item item, String text) {
	    	EzrssItem theItem = (EzrssItem) item;
	    	if (localName.equalsIgnoreCase("comments")) {
	    		theItem.comments = text.trim();
	    	}
	    }
	}

	public String getSiteName() {
		return "EzRss";
	}
	
}
