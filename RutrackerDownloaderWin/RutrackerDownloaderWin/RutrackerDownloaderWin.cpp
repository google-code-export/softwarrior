// RutrackerDownloaderWin.cpp : Defines the entry point for the console application.
//
//#include "stdafx.h"
//
//
//int _tmain(int argc, _TCHAR* argv[])
//{
//	return 0;
//}

//#include <iterator>
//
//#include "libtorrent/config.hpp"

#ifdef _MSC_VER
#pragma warning(push, 1)
#endif

//#include <boost/filesystem/operations.hpp>
//#include <boost/filesystem/convenience.hpp>
//#include <boost/bind.hpp>

#ifdef _MSC_VER
#pragma warning(pop)
#endif

//#include "libtorrent/extensions/metadata_transfer.hpp"
//#include "libtorrent/extensions/ut_metadata.hpp"
//#include "libtorrent/extensions/ut_pex.hpp"
//#include "libtorrent/extensions/smart_ban.hpp"

//#include "libtorrent/entry.hpp"
//#include "libtorrent/bencode.hpp"
#include "libtorrent/session.hpp"
//#include "libtorrent/identify_client.hpp"
//#include "libtorrent/alert_types.hpp"
//#include "libtorrent/ip_filter.hpp"
//#include "libtorrent/magnet_uri.hpp"
//#include "libtorrent/bitfield.hpp"
//#include "libtorrent/file.hpp"

using boost::bind;

int main(int argc, char* argv[])
{
        using namespace libtorrent;
#if BOOST_VERSION < 103400
        namespace fs = boost::filesystem;
        fs::path::default_name_check(fs::no_check);
#endif

if (argc != 2)
{
        std::cerr << "usage: ./simple_client torrent-file\n"
                "to stop the client, press return.\n";
        return 1;
}

#ifndef BOOST_NO_EXCEPTIONS
        try
#endif
        {
                session s;
                s.listen_on(std::make_pair(6881, 6889));
                add_torrent_params p;
                p.save_path = "./";
                p.ti = new torrent_info(argv[1]);
                s.add_torrent(p);

                // wait for the user to end
                char a;
                std::cin.unsetf(std::ios_base::skipws);
                std::cin >> a;
        }
#ifndef BOOST_NO_EXCEPTIONS
        catch (std::exception& e)
        {
                std::cout << e.what() << "\n";
        }
#endif
        return 0;
}