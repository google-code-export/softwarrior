package com.softwarrior.rss;

import com.softwarrior.rutrackerdownloaderlite.RutrackerDownloaderApp;

public abstract class FeedParserFactory {
	//static String feedUrl = "http://www.androidster.com/android_news.rss";
	
	public static FeedParser getParser(){
		return getParser(ParserType.ANDROID_SAX);
	}
	
	public static FeedParser getParser(ParserType type){
		switch (type){
			case SAX:
				return new SaxFeedParser(RutrackerDownloaderApp.FeedUrl);
			case DOM:
				return new DomFeedParser(RutrackerDownloaderApp.FeedUrl);
			case ANDROID_SAX:
				return new AndroidSaxFeedParser(RutrackerDownloaderApp.FeedUrl);
			case XML_PULL:
				return new XmlPullFeedParser(RutrackerDownloaderApp.FeedUrl);
			default: return null;
		}
	}
}
