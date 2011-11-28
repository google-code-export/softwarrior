package com.softwarrior.piratesearch;

import java.util.ArrayList;
import java.util.List;

/**
 * An abstract class providing functionality to easily build search engine support for torrent sites that use RSS feeds.
 * The site should allow for a custom feed per search and the results should include at least the title and direct URL.
 */
public abstract class RssFeedSearchAdapter implements ISearchAdapter {

	/**
	 * Returns a SearchResult object from a single RSS item. Typically, you return a 
	 * new SearchResult object filled with the title and URL's from the raw RSS item.
	 * @param item The RSS item element, containing title, URL, description, etc.
	 * @return A result object that is properly filled with data
	 */
	protected abstract SearchResult fromRssItemToSearchResult(Item item);

	/**
	 * Returns the RSS feed URL for a search query. Typically, you return URL-encode
	 * the query and return the URL (possibly with a search parameter). 
	 * @param query The plain search term the user gave
	 * @param order 
	 * @return The full URL of the custom search RSS feed
	 */
	protected abstract String getUrl(String query, SortOrder order);

	/**
	 * Returns the RSS parser to use. When not overriden the default parser will be
	 * used, but when additional tags need to be parsed, a custom parser can be used.
	 * @param url The url to parse
	 * @return An RssParser-based parser instance
	 */
	protected RssParser getRssParser(String url) {
		return new RssParser(url);
	}
	
	public String buildRssFeedUrlFromSearch(String query, SortOrder order) {
		return getUrl(query, order);
	}

	public List<SearchResult> search(String query, SortOrder order, int maxResults) throws Exception {

		// Parse the RSS feeds
		RssParser parser = getRssParser(getUrl(query, order));
		parser.parse();
		List<Item> items = parser.getChannel().getItems();
		
		// Create a list of SearchResults and send it back
		List<SearchResult> results = new ArrayList<SearchResult>();
		int i = 0;
		if (items != null) {
			for (Item item : items) {
				if (i >= maxResults) {
					break;
				}
				results.add(fromRssItemToSearchResult(item));
				i++;
			}
		}
		return results;
			
	}
	
}
