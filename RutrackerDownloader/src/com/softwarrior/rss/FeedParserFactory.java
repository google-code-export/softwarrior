package com.softwarrior.rss;
public abstract class FeedParserFactory {
	//static String feedUrl = "http://www.androidster.com/android_news.rss";
	static String feedUrl = "http://pipes.yahoo.com/pipes/pipe.run?_id=238f93185eccbc0e671bb93b29a50745&_render=rss&fromdate=-1+day&type=documental,anime,abook,music";
	
	public static FeedParser getParser(){
		return getParser(ParserType.ANDROID_SAX);
	}
	
	public static FeedParser getParser(ParserType type){
		switch (type){
			case SAX:
				return new SaxFeedParser(feedUrl);
			case DOM:
				return new DomFeedParser(feedUrl);
			case ANDROID_SAX:
				return new AndroidSaxFeedParser(feedUrl);
			case XML_PULL:
				return new XmlPullFeedParser(feedUrl);
			default: return null;
		}
	}
}
