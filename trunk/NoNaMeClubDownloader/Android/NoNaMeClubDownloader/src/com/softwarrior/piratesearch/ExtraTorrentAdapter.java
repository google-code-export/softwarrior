package com.softwarrior.piratesearch;

import java.net.URLEncoder;

/**
 * Search adapter for the ExtraTorrent torrent site (based on custom search RSS feeds)
 */
public class ExtraTorrentAdapter extends RssFeedSearchAdapter {

	protected SearchResult fromRssItemToSearchResult(Item item) {
		ExtraTorrentsItem theItem = (ExtraTorrentsItem) item;
		return new SearchResult(
				item.getTitle(), 
				item.getEnclosureUrl(),
				item.getLink(),
				FileSizeConverter.getSize(theItem.getSize()),  
				item.getPubdate(),
				theItem.getSeeders(), 
				theItem.getLeechers());
	}

	@Override
	protected String getUrl(String query, SortOrder order) {
		// Note: doesn't support different list sortings
		return "http://extratorrent.com/rss.xml?type=search&search=" + URLEncoder.encode(query);
	}

	@Override
	protected RssParser getRssParser(String url) {
		return new ExtraTorrentsRssParser(url);
	}
	
	/**
	 * Custom Item with addition size, seeders and leechers data properties
	 */
	public class ExtraTorrentsItem extends Item {
		private long size;
		private int seeders;
		private int leechers;
		public void setSize(long size) { this.size = size; }
		public void setSeeders(int seeders) { this.seeders = seeders; }
		public void setLeechers(int leechers) { this.leechers = leechers; }
		public long getSize() { return size; }
		public int getSeeders() { return seeders; }
		public int getLeechers() { return leechers; }
	}
	
	/**
	 * Custom parser to parse the additional size, seeders and leechers data properties
	 */
	public class ExtraTorrentsRssParser extends RssParser {

		public ExtraTorrentsRssParser(String url) {
			super(url);
		}
		
		public Item createNewItem() {
			return new ExtraTorrentsItem();
		}

	    public void addAdditionalData(String localName, Item item, String text) {
	    	ExtraTorrentsItem theItem = (ExtraTorrentsItem) item;
	    	if (localName.equalsIgnoreCase("size")) {
	    		theItem.setSize(Long.parseLong(text.trim()));
	    	}
	    	if (localName.equalsIgnoreCase("seeders")) {
	    		theItem.setSeeders(Integer.parseInt(text.trim()));
	    	}
	    	if (localName.equalsIgnoreCase("leechers")) {
	    		theItem.setLeechers(Integer.parseInt(text.trim()));
	    	}
	    }
	}

	public String getSiteName() {
		return "ExtraTorrent";
	}
	
}
