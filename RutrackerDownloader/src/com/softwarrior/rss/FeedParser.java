package com.softwarrior.rss;
import java.util.List;

public interface FeedParser {
	List<RSSMessage> parse();
}
