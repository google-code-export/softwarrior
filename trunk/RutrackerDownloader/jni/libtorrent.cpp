#include "libtorrent.h"

#include "libtorrent/session.hpp"
#include "libtorrent/size_type.hpp"

static libtorrent::session* 	  gpSession = 0;
static libtorrent::torrent_handle gTHandle;
static char* 					  gpSavePath = 0;
static char* 					  gpTorentFile = 0;

JNIEXPORT jstring JNICALL Java_com_softwarrior_libtorrent_LibTorrent_StartDownload
  (JNIEnv *env, jobject obj, jstring SavePath, jstring TorentFile, jint ListenPort, jint ProxyType, jstring ProxyHostName, jint ProxyPort, jstring ProxyUsername, jstring ProxyPassword)
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

		const jchar* savePathCh =  env->GetStringChars(SavePath, false);
		int savePathChLen =  env->GetStringLength(SavePath);
		gpSavePath = new char[savePathChLen+1];
		memset(gpSavePath,0,savePathChLen+1);
		for(int i=0; i<savePathChLen; i++) gpSavePath[i] = (char)savePathCh[i];

		torrentParams.save_path  = gpSavePath;

		const jchar* torentFileCh =  env->GetStringChars(TorentFile, false);
		int torentFileChLen =  env->GetStringLength(TorentFile);
		gpTorentFile = new char[torentFileChLen+1];
		memset(gpTorentFile,0,torentFileChLen+1);
		for(int i=0; i<torentFileChLen; i++) gpTorentFile[i] = (char)torentFileCh[i];

		torrentParams.ti = new libtorrent::torrent_info(gpTorentFile);

		libtorrent::error_code ec;
		gTHandle = gpSession->add_torrent(torrentParams,ec);
		if(ec)
			LOG_INFO("failed to add torrent: %s\n", ec.message().c_str());
	}
}

JNIEXPORT jint JNICALL Java_com_softwarrior_libtorrent_LibTorrent_GetProgress
  (JNIEnv *env, jobject obj)
{
	jint result = 0;
	if(gpSession)
	{
		libtorrent::torrent_status s = gTHandle.status();
		if(s.state != libtorrent::torrent_status::seeding && gTHandle.has_metadata())
		{
			std::vector<libtorrent::size_type> file_progress;
			gTHandle.file_progress(file_progress);
			libtorrent::torrent_info const& info = gTHandle.get_torrent_info();
			int files_num = info.num_files();
			for (int i = 0; i < info.num_files(); ++i)
			{
				int progress = info.file_at(i).size > 0 ?file_progress[i] * 1000 / info.file_at(i).size:1000;
				result += progress;
			}
			result = result/files_num;
			LOG_INFO("Common progress=%d\n\r", result);
		}
	}
	return result;
}

JNIEXPORT jbyteArray JNICALL Java_com_softwarrior_libtorrent_LibTorrent_StopDownload
  (JNIEnv *env, jobject obj)
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
