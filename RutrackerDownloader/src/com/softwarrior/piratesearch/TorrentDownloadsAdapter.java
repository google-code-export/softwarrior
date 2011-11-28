package com.softwarrior.piratesearch;

import java.net.URLEncoder;

/**
 * Search adapter for the Torrent Downloads torrent site (based on custom search RSS feeds)
 */
public class TorrentDownloadsAdapter extends RssFeedSearchAdapter {
	
	protected SearchResult fromRssItemToSearchResult(Item item) {
		// Direct .torrent file download in style http://www.torrentdownloads.net/torrent/<id>/<title>
		// Web links (as appearing in the RSS item) in style http://www.torrentdownloads.net/download/<id>/<title>
		TorrentDownloadsItem theItem = (TorrentDownloadsItem) item;
		return new SearchResult(
				item.getTitle(), 
				item.getLink().replace("/torrent/", "/download/"),
				item.getLink(),
				FileSizeConverter.getSize(theItem.getSize()),  
				item.getPubdate(),
				theItem.getSeeders(), 
				theItem.getLeechers());
	}

	@Override
	protected String getUrl(String query, SortOrder order) {
		// Note: doesn't support different list sortings
		return "http://www.torrentdownloads.net/rss.xml?type=search&search=" + URLEncoder.encode(query);
	}

	@Override
	protected RssParser getRssParser(String url) {
		return new TorrentDownloadsRssParser(url);
	}
	
	/**
	 * Custom Item with addition size, seeders and leechers data properties
	 */
	public class TorrentDownloadsItem extends Item {
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
	public class TorrentDownloadsRssParser extends RssParser {

		public TorrentDownloadsRssParser(String url) {
			super(url);
		}
		
		public Item createNewItem() {
			return new TorrentDownloadsItem();
		}

	    public void addAdditionalData(String localName, Item item, String text) {
	    	TorrentDownloadsItem theItem = (TorrentDownloadsItem) item;
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
		return "Torrent Downloads";
	}
	
}
