#include "libtorrent.h"

#include "libtorrent/session.hpp"
#include "libtorrent/size_type.hpp"

static libtorrent::session  	  gSession;
static libtorrent::torrent_handle gTHandle;
static std::string 				  gSavePath;
static std::string 				  gTorentFile;
static volatile bool			  gWorkState = false;

JNIEXPORT jboolean JNICALL Java_com_softwarrior_libtorrent_LibTorrent_StartDownload
  (JNIEnv *env, jobject obj, jstring SavePath, jstring TorentFile, jint ListenPort, jint ProxyType, jstring ProxyHostName, jint ProxyPort, jstring ProxyUsername, jstring ProxyPassword)
{
	jboolean result = JNI_FALSE;
	try{
		int listenPort = ListenPort;
		gSession.listen_on(std::make_pair(listenPort, listenPort+10));
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

		gSavePath.clear();
		const jchar* savePathCh =  env->GetStringChars(SavePath, false);
		int savePathChLen =  env->GetStringLength(SavePath);
		for(int i=0; i<savePathChLen; i++) gSavePath.push_back((char)savePathCh[i]);
		env->ReleaseStringChars(SavePath,savePathCh);

		torrentParams.save_path  = gSavePath.c_str();

		gTorentFile.clear();
		const jchar* torentFileCh =  env->GetStringChars(TorentFile, false);
		int torentFileChLen =  env->GetStringLength(TorentFile);
		for(int i=0; i<torentFileChLen; i++) gTorentFile.push_back((char)torentFileCh[i]);
		env->ReleaseStringChars(TorentFile,torentFileCh);

		torrentParams.ti = new libtorrent::torrent_info(gTorentFile.c_str());

		libtorrent::error_code ec;
		gTHandle = gSession.add_torrent(torrentParams,ec);
		if(ec)
		{
			LOG_ERR("failed to add torrent: %s\n", ec.message().c_str());
			gWorkState = false;
		}
		else
			gWorkState = true;
	}catch(...){
		LOG_ERR("Exception: failed to add torrent");
		gWorkState = false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.StartDownload WorkState==false");
	gWorkState==true ? result=JNI_TRUE : result=JNI_FALSE;
	return result;
}

JNIEXPORT jint JNICALL Java_com_softwarrior_libtorrent_LibTorrent_GetProgress
  (JNIEnv *env, jobject obj)
{
	jint result = 0;
	try {
		if(gWorkState) {
			libtorrent::torrent_status s = gTHandle.status();
			if(s.state != libtorrent::torrent_status::seeding && gTHandle.has_metadata()) {
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
			}
		}
	}catch(...){
		LOG_ERR("Exception: failed to progress torrent");
		gWorkState=false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.GetProgress WorkState==false");
	return result;
}

JNIEXPORT jboolean JNICALL Java_com_softwarrior_libtorrent_LibTorrent_PauseDownload
	(JNIEnv *, jobject)
{
	jboolean result = JNI_FALSE;
	try {
		if(gWorkState)
			gSession.pause();
	} catch(...){
		LOG_ERR("Exception: failed to pause torrent");
		gWorkState=false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.PauseDownload WorkState==false");
	gWorkState==true ? result=JNI_TRUE : result=JNI_FALSE;
	return result;
}

JNIEXPORT jboolean JNICALL Java_com_softwarrior_libtorrent_LibTorrent_ResumeDownload
	(JNIEnv *, jobject)
{
	jboolean result = JNI_FALSE;
	try {
		if(gWorkState)
			gSession.resume();
	} catch(...){
		LOG_ERR("Exception: failed to resume torrent");
		gWorkState=false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.ResumeDownload WorkState==false");
	gWorkState==true ? result=JNI_TRUE : result=JNI_FALSE;
	return result;
}

JNIEXPORT jboolean JNICALL Java_com_softwarrior_libtorrent_LibTorrent_StopDownload
  (JNIEnv *env, jobject obj)
{
	jboolean result = JNI_FALSE;
	try {
		if(gWorkState)
		{
			gSession.remove_torrent(gTHandle);
			gSavePath.clear();
			gTorentFile.clear();
			return JNI_TRUE;
		}
	} catch(...){
		LOG_ERR("Exception: failed to remove torrent");
		gWorkState=false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.StopDownload WorkState==false");
	gWorkState==true ? result=JNI_TRUE : result=JNI_FALSE;
	return result;
}
