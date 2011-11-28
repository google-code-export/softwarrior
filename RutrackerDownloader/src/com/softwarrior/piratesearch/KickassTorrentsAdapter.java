package com.softwarrior.piratesearch;

import java.net.URLEncoder;


/**
 * Search adapter for the KickassTorrents torrent site (based on custom search RSS feeds)
 */
public class KickassTorrentsAdapter extends RssFeedSearchAdapter {

	protected SearchResult fromRssItemToSearchResult(Item item) {
		KickassTorrentsItem theItem = (KickassTorrentsItem) item;
		return new SearchResult(
				item.getTitle(), 
				theItem.getTorrentLink(),
				item.getLink(),
				FileSizeConverter.getSize(theItem.getSize()), 
				item.getPubdate(), 
				theItem.getSeeders(), 
				theItem.getLeechers());
	}

	@Override
	protected String getUrl(String query, SortOrder order) {
		// Note: doesn't support different list sortings
		return "http://www.kickasstorrents.com/search/" + URLEncoder.encode(query) + "/?rss=1";
	}

	@Override
	protected RssParser getRssParser(String url) {
		return new KickassTorrentsRssParser(url);
	}
	
	/**
	 * Custom Item with addition torrentLink. size, seeders and leechers data properties
	 */
	public class KickassTorrentsItem extends Item {
		private String torrentLink;
		private long size;
		private int seeders;
		private int leechers;
		public void setTorrentLink(String torrentLink) { this.torrentLink = torrentLink; }
		public void setSize(long size) { this.size = size; }
		public void setSeeders(int seeders) { this.seeders = seeders; }
		public void setLeechers(int leechers) { this.leechers = leechers; }
		public String getTorrentLink() { return torrentLink; }
		public long getSize() { return size; }
		public int getSeeders() { return seeders; }
		public int getLeechers() { return leechers; }
	}
	
	/**
	 * Custom parser to parse the additional torrentLink. size, seeders and leechers data properties
	 */
	public class KickassTorrentsRssParser extends RssParser {

		public KickassTorrentsRssParser(String url) {
			super(url);
		}
		
		public Item createNewItem() {
			return new KickassTorrentsItem();
		}

	    public void addAdditionalData(String localName, Item item, String text) {
	    	KickassTorrentsItem theItem = (KickassTorrentsItem) item;
	    	if (localName.equalsIgnoreCase("torrentLink")) {
	    		theItem.setTorrentLink(text.trim());
	    	}
	    	if (localName.equalsIgnoreCase("size")) {
	    		theItem.setSize(Long.parseLong(text.trim()));
	    	}
	    	if (localName.equalsIgnoreCase("seeds")) {
	    		theItem.setSeeders(Integer.parseInt(text.trim()));
	    	}
	    	if (localName.equalsIgnoreCase("leechs")) {
	    		theItem.setLeechers(Integer.parseInt(text.trim()));
	    	}
	    }
	}

	public String getSiteName() {
		return "KickAssTorrents";
	}
	
}
