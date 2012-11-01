package com.softwarrior.rss;

import com.softwarrior.rutrackerdownloaderlite.DownloaderApp;

public abstract class FeedParserFactory {
	//static String feedUrl = "http://www.androidster.com/android_news.rss";
	
	public static FeedParser getParser(){
		return getParser(ParserType.ANDROID_SAX);
	}
	
	public static FeedParser getParser(ParserType type){
		switch (type){
			case SAX:
				return new SaxFeedParser(DownloaderApp.FeedUrl);
			case DOM:
				return new DomFeedParser(DownloaderApp.FeedUrl);
			case ANDROID_SAX:
				return new AndroidSaxFeedParser(DownloaderApp.FeedUrl);
			case XML_PULL:
				return new XmlPullFeedParser(DownloaderApp.FeedUrl);
			default: return null;
		}
	}
}
