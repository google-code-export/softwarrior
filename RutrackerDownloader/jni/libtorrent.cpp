//-----------------------------------------------------------------------------
#include "libtorrent.h"
//-----------------------------------------------------------------------------
#include "libtorrent/session.hpp"
#include "libtorrent/size_type.hpp"
//-----------------------------------------------------------------------------
static libtorrent::session  	  gSession;
static libtorrent::torrent_handle gTorrent;
static libtorrent::proxy_settings gProxy;
static std::string 				  gSavePath;
static std::string 				  gTorentFile;
static volatile bool			  gWorkState = false;
//-----------------------------------------------------------------------------
JNIEXPORT jboolean JNICALL Java_com_softwarrior_libtorrent_LibTorrent_SetSession
	(JNIEnv *env, jobject obj, jint ListenPort, jint UploadLimit, jint DownloadLimit)
{
	jboolean result = JNI_FALSE;
	try{
		int listenPort = 54321;
		if(ListenPort > 0)
			listenPort = ListenPort;
		gSession.listen_on(std::make_pair(listenPort, listenPort+10));

		int uploadLimit = UploadLimit;
		if(uploadLimit > 0)
			gSession.set_upload_rate_limit(uploadLimit * 1000);

		int downloadLimit = DownloadLimit;
		if(downloadLimit > 0)
			gSession.set_download_rate_limit(downloadLimit * 1000);

		gWorkState==true;
	}catch(...){
		LOG_ERR("Exception: failed to set session");
		gWorkState==false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.SetSession WorkState==false");
	gWorkState==true ? result=JNI_TRUE : result=JNI_FALSE;
	return result;
}
//-----------------------------------------------------------------------------
void JniToStdString(JNIEnv *env, std::string* StdString, jstring JniString){
	if(JniString){
		StdString->clear();
		const jchar* ch = env->GetStringChars(JniString, false);
		int chLen =  env->GetStringLength(JniString);
		for(int i=0; i<chLen; i++) StdString->push_back((char)ch[i]);
		env->ReleaseStringChars(JniString,ch);
	}
}
//-----------------------------------------------------------------------------
//enum proxy_type
//{
//	0 - none, // a plain tcp socket is used, and the other settings are ignored.
//	1 - socks4, // socks4 server, requires username.
//	2 - socks5, // the hostname and port settings are used to connect to the proxy. No username or password is sent.
//	3 - socks5_pw, // the hostname and port are used to connect to the proxy. the username and password are used to authenticate with the proxy server.
//	4 - http, // the http proxy is only available for tracker and web seed traffic assumes anonymous access to proxy
//	5 - http_pw // http proxy with basic authentication uses username and password
//};
//-----------------------------------------------------------------------------
JNIEXPORT jboolean JNICALL Java_com_softwarrior_libtorrent_LibTorrent_SetProxy
	(JNIEnv *env, jobject obj, jint Type, jstring HostName, jint Port, jstring UserName, jstring Password)
{
	jboolean result = JNI_FALSE;
	try{
		int type = Type;
		if(type > 0){
			std::string hostName;
			JniToStdString(env, &hostName, HostName);
			int port = Port;
			std::string userName;
			JniToStdString(env, &userName, UserName);
			std::string password;
			JniToStdString(env, &password, Password);

			gProxy.type = libtorrent::proxy_settings::proxy_type(type);
			gProxy.hostname = hostName;
			gProxy.port = port;
			gProxy.username = userName;
			gProxy.password = password;

			gSession.set_proxy(gProxy);
		}
	}catch(...){
		LOG_ERR("Exception: failed to set proxy");
		gWorkState==false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.SetProxy WorkState==false");
	gWorkState==true ? result=JNI_TRUE : result=JNI_FALSE;
	return result;
}
//-----------------------------------------------------------------------------
JNIEXPORT jboolean JNICALL Java_com_softwarrior_libtorrent_LibTorrent_AddTorrent
	(JNIEnv *env, jobject obj, jstring SavePath, jstring TorentFile)
{
	jboolean result = JNI_FALSE;
	try{
		libtorrent::add_torrent_params torrentParams;

		JniToStdString(env, &gSavePath, SavePath);
		torrentParams.save_path = gSavePath.c_str();

		JniToStdString(env, &gTorentFile, TorentFile);
		torrentParams.ti = new libtorrent::torrent_info(gTorentFile.c_str());

		libtorrent::error_code ec;
		gTorrent = gSession.add_torrent(torrentParams,ec);
		if(ec) {
			LOG_ERR("failed to add torrent: %s\n", ec.message().c_str());
			gWorkState = false;
		}
		else
			gWorkState = true;
	}catch(...){
		LOG_ERR("Exception: failed to add torrent");
		gWorkState = false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.AddTorrent WorkState==false");
	gWorkState==true ? result=JNI_TRUE : result=JNI_FALSE;
	return result;
}
//-----------------------------------------------------------------------------
JNIEXPORT jboolean JNICALL Java_com_softwarrior_libtorrent_LibTorrent_PauseSession
	(JNIEnv *, jobject)
{
	jboolean result = JNI_FALSE;
	try {
		gSession.pause();
	} catch(...){
		LOG_ERR("Exception: failed to pause session");
		gWorkState=false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.PauseSession WorkState==false");
	gWorkState==true ? result=JNI_TRUE : result=JNI_FALSE;
	return result;
}
//-----------------------------------------------------------------------------
JNIEXPORT jboolean JNICALL Java_com_softwarrior_libtorrent_LibTorrent_ResumeSession
	(JNIEnv *, jobject)
{
	jboolean result = JNI_FALSE;
	try {
		gSession.resume();
	} catch(...){
		LOG_ERR("Exception: failed to resume session");
		gWorkState=false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.ResumeSession WorkState==false");
	gWorkState==true ? result=JNI_TRUE : result=JNI_FALSE;
	return result;
}
//-----------------------------------------------------------------------------
JNIEXPORT jboolean JNICALL Java_com_softwarrior_libtorrent_LibTorrent_RemoveTorrent
	(JNIEnv *env, jobject obj)
{
	jboolean result = JNI_FALSE;
	try {
		gSession.remove_torrent(gTorrent);
	} catch(...){
		LOG_ERR("Exception: failed to remove torrent");
		gWorkState=false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.RemoveTorrent WorkState==false");
	gWorkState==true ? result=JNI_TRUE : result=JNI_FALSE;
	return result;
}
//-----------------------------------------------------------------------------
JNIEXPORT jint JNICALL Java_com_softwarrior_libtorrent_LibTorrent_GetTorrentProgress
	(JNIEnv *env, jobject obj)
{
	jint result = 0;
	try {
		if(gWorkState) {
			libtorrent::torrent_status s = gTorrent.status();
			if(s.state != libtorrent::torrent_status::seeding && gTorrent.has_metadata()) {
				std::vector<libtorrent::size_type> file_progress;
				gTorrent.file_progress(file_progress);
				libtorrent::torrent_info const& info = gTorrent.get_torrent_info();
				int files_num = info.num_files();
				for (int i = 0; i < info.num_files(); ++i)
				{
					int progress = info.file_at(i).size > 0 ?file_progress[i] * 1000 / info.file_at(i).size:1000;
					result += progress;
				}
				result = result/files_num;
			}
			else if(s.state == libtorrent::torrent_status::seeding && gTorrent.has_metadata())
					result = 1000;
		}
	}catch(...){
		LOG_ERR("Exception: failed to progress torrent");
		gWorkState=false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.GetTorrentProgress WorkState==false");
	return result;
}
//-----------------------------------------------------------------------------
//enum state_t
//{
//	0 queued_for_checking,
//	1 checking_files,
//	2 downloading_metadata,
//	3 downloading,
//	4 finished,
//	5 seeding,
//	6 allocating,
//	7 checking_resume_data
//}
// + 8 paused
// + 9 queued
//-----------------------------------------------------------------------------
JNIEXPORT jint JNICALL Java_com_softwarrior_libtorrent_LibTorrent_GetTorrentState
	(JNIEnv *, jobject)
{
	jint result = -1;
	try {
		if(gWorkState) {
			libtorrent::torrent_status t_s = gTorrent.status();
			bool paused = gTorrent.is_paused();
			bool auto_managed = gTorrent.is_auto_managed();
			if(paused && !auto_managed)
				result = 8; //paused
			else if(paused && !auto_managed)
				result = 9; //queued
			else
				result = t_s.state;
		}
	}catch(...){
		LOG_ERR("Exception: failed to get torrent state");
		gWorkState=false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.GetTorrentState WorkState==false");
	return result;
}
//-----------------------------------------------------------------------------
std::string add_suffix(float val, char const* suffix = 0)
{
	std::string ret;
	if (val == 0)
	{
		ret.resize(4 + 2, ' ');
		if (suffix) ret.resize(4 + 2 + strlen(suffix), ' ');
		return ret;
	}

	const char* prefix[] = {"kB", "MB", "GB", "TB"};
	const int num_prefix = sizeof(prefix) / sizeof(const char*);
	char temp[30];
	for (int i = 0; i < num_prefix; ++i)
	{
		val /= 1000.f;
		if (std::fabs(val) < 1000.f)
		{
			memset(temp, 0, 30);
		    sprintf(temp, "%.4g", val);
			ret = temp;
			ret += prefix[i];
			if (suffix) ret += suffix;
			return ret;
		}
	}
	memset(temp, 0, 30);
    sprintf(temp, "%.4g", val);
	ret =  temp;
	ret += "PB";
	if (suffix) ret += suffix;
	return ret;
}
//-----------------------------------------------------------------------------
static char const* state_str[] =
{"checking (q)", "checking", "dl metadata", "downloading", "finished", "seeding", "allocating", "checking (r)"};
//-----------------------------------------------------------------------------
JNIEXPORT jstring JNICALL Java_com_softwarrior_libtorrent_LibTorrent_GetTorrentStatusText
	(JNIEnv *env, jobject obj)
{
	jstring result = NULL;
	try {
		if(gWorkState){
			std::string out;
			char str[500]; memset(str,0,500);
			//------- NAME --------
			std::string name = gTorrent.name();
			if (name.size() > 60) name.resize(60);
			snprintf(str, sizeof(str), "%-60s\r\n", name.c_str());
			out += str;
			//------- ERROR --------
			libtorrent::torrent_status t_s = gTorrent.status();
			bool paused = gTorrent.is_paused();
			bool auto_managed = gTorrent.is_auto_managed();
			if (!t_s.error.empty())
			{
				out += "error ";
				out += t_s.error;
				out += "\r\n";
				return env->NewStringUTF(out.c_str());
			}
			//---------------------
			int seeds = 0;
			int downloaders = 0;
			if (t_s.num_complete >= 0) seeds = t_s.num_complete;
			else seeds = t_s.list_seeds;
			if (t_s.num_incomplete >= 0) downloaders = t_s.num_incomplete;
			else downloaders = t_s.list_peers - t_s.list_seeds;
			//---------------------
			if (t_s.state != libtorrent::torrent_status::queued_for_checking && t_s.state != libtorrent::torrent_status::checking_files){
				snprintf(str, sizeof(str)
					,"down:     (%s)\r\n"
					 "up:        %s (%s)\r\n"
					 "swarm:     %4d:%4d\r\n"
					 "queue:    (%d|%d)\r\n"
					 "all-time  (Rx:%s Tx:%s)\r\n"
					 "seed rank: %x\r\n"
					, add_suffix(t_s.total_download).c_str()
					, add_suffix(t_s.upload_rate, "/s").c_str()
					, add_suffix(t_s.total_upload).c_str()
					, downloaders, seeds
					, t_s.up_bandwidth_queue, t_s.down_bandwidth_queue
					, add_suffix(t_s.all_time_download).c_str()
					, add_suffix(t_s.all_time_upload).c_str()
					, t_s.seed_rank);
				out += str;
				boost::posix_time::time_duration t = t_s.next_announce;
				snprintf(str, sizeof(str)
					, "peers:    %d (%d)\r\n"
					  "seeds:    %d\r\n"
					  "copies:   %4.2f\r\n"
					  "regions:  %d\r\n"
					  "download: %s \r\n"
					  "announce: %02d:%02d:%02d\r\n"
					  "tracker:  %s\r\n"
					, t_s.num_peers
					, t_s.connect_candidates
					, t_s.num_seeds
					, t_s.distributed_copies
					, t_s.sparse_regions
					, add_suffix(t_s.download_rate, "/s").c_str()
					, t.hours(), t.minutes(), t.seconds()
					, t_s.current_tracker.c_str());
				out += str;
			}
			result = env->NewStringUTF(out.c_str());
		}
	} catch(...){
		LOG_ERR("Exception: failed to get torrent status text");
		gWorkState=false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.GetTorrentStatusText WorkState==false");
	return result;
}
//-----------------------------------------------------------------------------
JNIEXPORT jstring JNICALL Java_com_softwarrior_libtorrent_LibTorrent_GetSessionStatusText
	(JNIEnv *env, jobject obj)
{
	jstring result = NULL;
	try {
		if(gWorkState){
			std::string out;
			char str[500]; memset(str,0,500);
			libtorrent::session_status s_s = gSession.status();
			snprintf(str, sizeof(str),
					  "conns:    %d\r\n"
					  "down:     %s (%s)\r\n"
					  "up:       %s (%s)\r\n"
					  "tcp/ip:   %s  %s\r\n"
					  "DHT:      %s  %s\r\n"
					  "tracker:  %s  %s\r\n"
				, s_s.num_peers
				, add_suffix(s_s.download_rate, "/s").c_str()
				, add_suffix(s_s.total_download).c_str()
				, add_suffix(s_s.upload_rate, "/s").c_str()
				, add_suffix(s_s.total_upload).c_str()
				, add_suffix(s_s.ip_overhead_download_rate, "/s").c_str()
				, add_suffix(s_s.ip_overhead_upload_rate, "/s").c_str()
				, add_suffix(s_s.dht_download_rate, "/s").c_str()
				, add_suffix(s_s.dht_upload_rate, "/s").c_str()
				, add_suffix(s_s.tracker_download_rate, "/s").c_str()
				, add_suffix(s_s.tracker_upload_rate, "/s").c_str());
			out += str;
			result = env->NewStringUTF(out.c_str());
		}
	} catch(...){
		LOG_ERR("Exception: failed to get session status");
		gWorkState=false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.GetSessionStatusText WorkState==false");
	return result;
}
//-----------------------------------------------------------------------------
