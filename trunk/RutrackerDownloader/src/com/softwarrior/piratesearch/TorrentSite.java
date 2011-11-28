package com.softwarrior.piratesearch;

import java.util.List;

/**
 * Provides factory-like access to all the torrent site search adapters.
 */
public enum TorrentSite {

	Btjunkie {
		@Override
		public ISearchAdapter getAdapter() {
			return new BtjunkieAdapter();
		}
	},
	ExtraTorrent {
		@Override
		public ISearchAdapter getAdapter() {
			return new ExtraTorrentAdapter();
		}
	},
	EzRss {
		@Override
		public ISearchAdapter getAdapter() {
			return new EzrssAdapter();
		}
	},
	Isohunt {
		@Override
		public ISearchAdapter getAdapter() {
			return new IsohuntAdapter();
		}
	},
	KickassTorents {
		@Override
		public ISearchAdapter getAdapter() {
			return new KickassTorrentsAdapter();
		}
	},
	Mininova {
		@Override
		public ISearchAdapter getAdapter() {
			return new MininovaAdapter();
		}
	},
	Monova {
		@Override
		public ISearchAdapter getAdapter() {
			return new MonovaAdapter();
		}
	},
	ThePirateBay {
		@Override
		public ISearchAdapter getAdapter() {
			return new ThePirateBayAdapter();
		}
	},
	TorrentDownloads {
		@Override
		public ISearchAdapter getAdapter() {
			return new TorrentDownloadsAdapter();
		}
	},
	TorrentReactor {
		@Override
		public ISearchAdapter getAdapter() {
			return new TorrentReactorAdapter();
		}
	},
	Vertor {
		@Override
		public ISearchAdapter getAdapter() {
			return new VertorAdapter();
		}
	};

	/**
	 * Directly and synchronously perform the search for torrents matching the given query string.
	 * @param query The raw (non-urlencoded) query to search for
	 * @param order The preferred order in which results are sorted
	 * @param maxResults Maximum number of results to return
	 * @return The list of found torrents on the site matching the search query
	 * @throws Exception When an exception occurred during the loading or parsing of the search results
	 */
	public List<SearchResult> search(String query, SortOrder order, int maxResults) throws Exception {
		return getAdapter().search(query, order, maxResults);
	}

	public abstract ISearchAdapter getAdapter();

	/**
	 * Returns the TorrentSite corresponding to the Enum type name it 
	 * has, e.g. <code>TorrentSite.fromCode("Mininova")</code> returns 
	 * the <code>TorrentSite.Isohunt</code> enumeration value
	 * @param siteCode The name of the enum type value
	 * @return The corresponding enum type value of a torrent site
	 */
	public static TorrentSite fromCode(String siteCode) {
		try {
			return Enum.valueOf(TorrentSite.class, siteCode);
		} catch (Exception e) {
			return null;
		}
	}

}
