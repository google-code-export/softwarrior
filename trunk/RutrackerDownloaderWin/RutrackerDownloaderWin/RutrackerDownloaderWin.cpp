//-----------------------------------------------------------------------------------
#ifdef _MSC_VER
#pragma warning(push, 1)
#endif

#ifdef _MSC_VER
#pragma warning(pop)
#endif
//-----------------------------------------------------------------------------------
#include <conio.h>
//-----------------------------------------------------------------------------------
#include "libtorrent/session.hpp"
//-----------------------------------------------------------------------------------
static libtorrent::session* 	  gpSession = 0;
static libtorrent::torrent_handle gTHandle;
static char* 				      gpSavePath = 0;
static char* 					  gpTorentFile = 0;
//-----------------------------------------------------------------------------------
void StartDownload(const std::string& SavePath, const std::string& TorentFile, int ListenPort, int ProxyType, const std::string& ProxyHostName, int ProxyPort, const std::string& ProxyUsername)
{
	if(gpSession == 0)
	{
		gpSession = new libtorrent::session();
		int listenPort = ListenPort;
		gpSession->listen_on(std::make_pair(listenPort, listenPort+10));

		//TODO: PROXY
//		proxy_settings ps;
//		ps.hostname = ProxyHostName;
//	    ps.port = ProxyPort;
//	    ps.type = ProxyType;
//		//if (ps.type == proxy_settings::none) ps.type = proxy_settings::socks5;
//		ps.username = ProxyUsername;
//		ps.password = ProxyPassword;
//		ps.type = proxy_settings::socks5_pw;
//
//		gpSession->set_peer_proxy(ps);
//		gpSession->set_web_seed_proxy(ps);
//		gpSession->set_tracker_proxy(ps);
//		gpSession->set_dht_proxy(ps);

		libtorrent::add_torrent_params torrentParams;

		gpSavePath = new char[SavePath.length()];
		strcpy(gpSavePath, SavePath.c_str());

		torrentParams.save_path  = gpSavePath;

		gpTorentFile = new char[TorentFile.length()];
		strcpy(gpTorentFile, TorentFile.c_str());

		torrentParams.ti = new libtorrent::torrent_info(gpTorentFile);

		libtorrent::error_code ec;
		gTHandle = gpSession->add_torrent(torrentParams,ec);
		if(ec)
			printf("failed to add torrent: %s\n", ec.message().c_str());
	}
}
//-----------------------------------------------------------------------------------
int GetProgress()
{
	int result = 0;
	if(gpSession)
	{
		libtorrent::torrent_status s = gTHandle.status();
		if(s.state != libtorrent::torrent_status::seeding && gTHandle.has_metadata())
		{
			std::vector<libtorrent::size_type> file_progress;
			gTHandle.file_progress(file_progress);
			libtorrent::torrent_info const& info = gTHandle.get_torrent_info();
			int num_files= info.num_files();
			for (int i = 0; i < info.num_files(); ++i)
			{
				int progress = info.file_at(i).size > 0 ?file_progress[i] * 1000 / info.file_at(i).size:1000;
				result += progress;
				printf("File number=%d, progress=%d\n\r", i, progress);
			}
			result=result/num_files;
			printf("Common progress=%d\n\r", result);
		}
	}
	return result;
}
//-----------------------------------------------------------------------------------
void StopDownload()
{
	if(gpSession)
	{
		delete gpSession;
		gpSession = 0;
	}
	if(gpSavePath)
	{
		delete gpSavePath;
		gpSavePath = 0;
	}
	if(gpTorentFile)
	{
		delete gpTorentFile;
		gpTorentFile = 0;
	}
}
//-----------------------------------------------------------------------------------
// MAIN
//-----------------------------------------------------------------------------------
int main(int argc, char* argv[])
{
//-----------------------------
#if BOOST_VERSION < 103400
	namespace fs = boost::filesystem;
	fs::path::default_name_check(fs::no_check);
#endif
//----------------------------
	if (argc != 2)
	{
			std::cerr << "usage: ./simple_client torrent-file\n"
					"to stop the client, press return.\n";
			return 1;
	}
//----------------------------
#ifndef BOOST_NO_EXCEPTIONS
	try
#endif
//----------------------------
	{
		StartDownload("./", argv[1], 55425, 0, "", 0, "");

		while(true)
		{
			::Sleep(100);
			GetProgress();
			if (_kbhit()) break;
		}
		StopDownload();
	}
//----------------------------
#ifndef BOOST_NO_EXCEPTIONS
    catch (std::exception& e)
    {	
		std::cout << e.what() << "\n";
    }
#endif
//----------------------------
	return 0;
}
//-----------------------------------------------------------------------------------