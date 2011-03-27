//-----------------------------------------------------------------------------
#include "libtorrent.h"
//-----------------------------------------------------------------------------
#include "libtorrent/bencode.hpp"
#include "libtorrent/session.hpp"
#include "libtorrent/alert_types.hpp"
#include "libtorrent/size_type.hpp"
//-----------------------------------------------------------------------------
static libtorrent::session  	  gSession;
static libtorrent::torrent_handle gTorrent;
static libtorrent::proxy_settings gProxy;
static std::string 				  gSavePath;
static std::string 				  gTorrentFile;
static volatile bool			  gWorkState = false;
//-----------------------------------------------------------------------------
JNIEXPORT jboolean JNICALL Java_com_softwarrior_libtorrent_LibTorrent_SetSession
	(JNIEnv *env, jobject obj, jint ListenPort, jint UploadLimit, jint DownloadLimit)
{
	jboolean result = JNI_FALSE;
	try{

		gSession.set_alert_mask(libtorrent::alert::all_categories
			& ~(libtorrent::alert::dht_notification
			+ libtorrent::alert::progress_notification
			+ libtorrent::alert::debug_notification
			+ libtorrent::alert::stats_notification));

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

		gWorkState=true;
	}catch(...){
		LOG_ERR("Exception: failed to set session");
		gWorkState=false;
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
		gWorkState=false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.SetProxy WorkState==false");
	gWorkState==true ? result=JNI_TRUE : result=JNI_FALSE;
	return result;
}
//-----------------------------------------------------------------------------
JNIEXPORT jboolean JNICALL Java_com_softwarrior_libtorrent_LibTorrent_AddTorrent
	(JNIEnv *env, jobject obj, jstring SavePath, jstring TorrentFile)
{
	jboolean result = JNI_FALSE;
	try{
		JniToStdString(env, &gSavePath, SavePath);
		JniToStdString(env, &gTorrentFile, TorrentFile);

		LOG_INFO("SavePath: %s", gSavePath.c_str());
		LOG_INFO("TorrentFile: %s", gTorrentFile.c_str());

		boost::intrusive_ptr<libtorrent::torrent_info> t;
		libtorrent::error_code ec;
		t = new libtorrent::torrent_info(gTorrentFile.c_str(), ec);
		if (ec){
			LOG_ERR("%s: %s\n", gTorrentFile.c_str(), ec.message().c_str());
		}
		else{
			LOG_INFO("%s\n", t->name().c_str());

			libtorrent::add_torrent_params torrentParams;
			libtorrent::lazy_entry resume_data;

			boost::filesystem::path save_path = gSavePath;
			std::string filename = (save_path / (t->name() + ".resume")).string();
			std::vector<char> buf;
			if (libtorrent::load_file(filename.c_str(), buf) == 0)
				torrentParams.resume_data = &buf;

			torrentParams.ti = t;
			torrentParams.save_path = gSavePath;
			gTorrent = gSession.add_torrent(torrentParams,ec);
			if(ec) {
				LOG_ERR("failed to add torrent: %s\n", ec.message().c_str());
				gWorkState = false;
			}
			else
				gWorkState = true;
		}
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
int SaveFile(boost::filesystem::path const& filename, std::vector<char>& v)
{
	libtorrent::file f;
	libtorrent::error_code ec;
	if (!f.open(filename, libtorrent::file::write_only, ec)) return -1;
	if (ec) return -1;
	libtorrent::file::iovec_t b = {&v[0], v.size()};
	libtorrent::size_type written = f.writev(0, &b, 1, ec);
	if (written != v.size()) return -3;
	if (ec) return -3;
	return 0;
}
//-----------------------------------------------------------------------------
void HandleAlert(libtorrent::alert* a)
{
	if (libtorrent::torrent_finished_alert* p = libtorrent::alert_cast<libtorrent::torrent_finished_alert>(a))
	{
		// write resume data for the finished torrent
		// the alert handler for save_resume_data_alert
		// will save it to disk
		libtorrent::torrent_handle h = p->handle;
		h.save_resume_data();
	}
	else if (libtorrent::save_resume_data_alert* p = libtorrent::alert_cast<libtorrent::save_resume_data_alert>(a))
	{
		libtorrent::torrent_handle h = p->handle;
		TORRENT_ASSERT(p->resume_data);
		if (p->resume_data)
		{
			std::vector<char> out;
			libtorrent::bencode(std::back_inserter(out), *p->resume_data);
			SaveFile(h.save_path() / (h.name() + ".resume"), out);
			gSession.remove_torrent(h);
		}
	}
	else if (libtorrent::save_resume_data_failed_alert* p = libtorrent::alert_cast<libtorrent::save_resume_data_failed_alert>(a))
	{
		libtorrent::torrent_handle h = p->handle;
		gSession.remove_torrent(h);
	}
}

//-----------------------------------------------------------------------------
JNIEXPORT jboolean JNICALL Java_com_softwarrior_libtorrent_LibTorrent_RemoveTorrent
	(JNIEnv *env, jobject obj)
{
	jboolean result = JNI_FALSE;
	try {
		gTorrent.pause();
		// the alert handler for save_resume_data_alert
		// will save it to disk
		gTorrent.save_resume_data();
		// loop through the alert queue to see if anything has happened.
		std::auto_ptr<libtorrent::alert> a;
		a = gSession.pop_alert();
		while (a.get())
		{
			LOG_INFO("RemoveTorrent Alert: %s", a->message().c_str());
			HandleAlert(a.get());
			a = gSession.pop_alert();
		}

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
//	if(!gWorkState) LOG_ERR("LibTorrent.GetTorrentProgress WorkState==false");
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
//	if(!gWorkState) LOG_ERR("LibTorrent.GetTorrentState WorkState==false");
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
			//std::string name = gTorrent.name();
			//if (name.size() > 80) name.resize(80);
			//snprintf(str, sizeof(str), "%-80s\n", name.c_str());
			//out += str;
			out += gTorrent.name(); out += "\n";
			//------- ERROR --------
			libtorrent::torrent_status t_s = gTorrent.status();
			bool paused = gTorrent.is_paused();
			bool auto_managed = gTorrent.is_auto_managed();
			if (!t_s.error.empty())
			{
				out += "error ";
				out += t_s.error;
				out += "\n";
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
				snprintf(str, sizeof(str),
					 "%26s%20s\n"
					 "%26s%20s/%s\n"
					 "%20s%20d/%d\n"
					 "%17s%20d/%d\n"
					 "%23s%20s/%s\n"
					 "%23s%20x\n"
					, "down:"
					, add_suffix(t_s.total_download).c_str()
					, "up/rate:"
					, add_suffix(t_s.total_upload).c_str(), add_suffix(t_s.upload_rate, "/s").c_str()
					, "downs/seeds:"
					, downloaders, seeds
					, "queue up/down:"
					, t_s.up_bandwidth_queue, t_s.down_bandwidth_queue
					, "all-time rx/tx:"
					, add_suffix(t_s.all_time_download).c_str(), add_suffix(t_s.all_time_upload).c_str()
					, "seed rank:"
					, t_s.seed_rank);
				out += str;
				boost::posix_time::time_duration t = t_s.next_announce;
				snprintf(str, sizeof(str),
					  "%22s%20d/%d\n"
					  "%26s%20d\n"
					  "%26s%20.2f\n"
					  "%25s%20d\n"
					  "%22s%20s\n"
					  "%22s%20.02d:%02d:%02d\n"
					  "%26s%s\n"
					, "peers/cand:"
					, t_s.num_peers, t_s.connect_candidates
					, "seeds:"
					, t_s.num_seeds
					, "copies:"
					, t_s.distributed_copies
					, "regions:"
					, t_s.sparse_regions
					, "download:"
					, add_suffix(t_s.download_rate, "/s").c_str()
					, "announce:"
					, t.hours(), t.minutes(), t.seconds()
					, "tracker:"
					, t_s.current_tracker.c_str());
				out += str;
			}
			result = env->NewStringUTF(out.c_str());
		}
	} catch(...){
		LOG_ERR("Exception: failed to get torrent status text");
		gWorkState=false;
	}
//	if(!gWorkState) LOG_ERR("LibTorrent.GetTorrentStatusText WorkState==false");
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
					  "%25s%20d\n"
					  "%22s%20s/%s\n"
					  "%25s%20s/%s\n"
					  "%18s%20s/%s\n"
					  "%15s%20s/%s\n"
					  "%19s%20s/%s\n"
				,"conns:"
				, s_s.num_peers
				, "down/rate:"
				, add_suffix(s_s.total_download).c_str(), add_suffix(s_s.download_rate, "/s").c_str()
				, "up/rate:"
				, add_suffix(s_s.total_upload).c_str(), add_suffix(s_s.upload_rate, "/s").c_str()
				, "ip rate down/up:"
				, add_suffix(s_s.ip_overhead_download_rate, "/s").c_str(), add_suffix(s_s.ip_overhead_upload_rate, "/s").c_str()
				, "dht rate down/up:"
				, add_suffix(s_s.dht_download_rate, "/s").c_str(), add_suffix(s_s.dht_upload_rate, "/s").c_str()
				, "tr rate down/up:"
				, add_suffix(s_s.tracker_download_rate, "/s").c_str(), add_suffix(s_s.tracker_upload_rate, "/s").c_str());
			out += str;
			result = env->NewStringUTF(out.c_str());
		}
	} catch(...){
		LOG_ERR("Exception: failed to get session status");
		gWorkState=false;
	}
//	if(!gWorkState) LOG_ERR("LibTorrent.GetSessionStatusText WorkState==false");
	return result;
}
//-----------------------------------------------------------------------------
JNIEXPORT jstring JNICALL Java_com_softwarrior_libtorrent_LibTorrent_GetTorrentFiles
	(JNIEnv *env, jobject obj)
{
	jstring result = NULL;
	try {
		if(gWorkState){
			std::string out;
			libtorrent::torrent_status s = gTorrent.status();
			if(gTorrent.has_metadata()) {
				libtorrent::torrent_info const& info = gTorrent.get_torrent_info();
				int files_num = info.num_files();
				for (int i = 0; i < info.num_files(); ++i) {
					out += info.file_at(i).path.string();
					out += "\n";
				}
			}
			result = env->NewStringUTF(out.c_str());
		}
	} catch(...){
		LOG_ERR("Exception: failed to get torrent files");
		gWorkState=false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.GetTorrentFiles WorkState==false");
	return result;
}
//-----------------------------------------------------------------------------
//0 - piece is not downloaded at all
//1 - normal priority. Download order is dependent on availability
//2 - higher than normal priority. Pieces are preferred over pieces with the same availability, but not over pieces with lower availability
//3 - pieces are as likely to be picked as partial pieces.
//4 - pieces are preferred over partial pieces, but not over pieces with lower availability
//5 - currently the same as 4
//6 - piece is as likely to be picked as any piece with availability 1
//7 - maximum priority, availability is disregarded, the piece is preferred over any other piece with lower priority
JNIEXPORT jboolean JNICALL Java_com_softwarrior_libtorrent_LibTorrent_SetTorrentFilesPriority
	(JNIEnv *env, jobject obj, jbyteArray FilesPriority )
{
	jboolean result = JNI_FALSE;
	jbyte* filesPriority  = NULL;
	try {
		if(gWorkState){
			std::string out;
			libtorrent::torrent_status s = gTorrent.status();
			if(gTorrent.has_metadata()) {
				libtorrent::torrent_info const& info = gTorrent.get_torrent_info();
				int files_num = info.num_files();
				jsize arr_size = env->GetArrayLength(FilesPriority);
				if(files_num == arr_size){
					filesPriority = env->GetByteArrayElements(FilesPriority, 0);
					const unsigned char* prioritiesBytes = (const unsigned char*)filesPriority;
					std::vector<int> priorities;
					for (int i = 0; i < info.num_files(); ++i) {
						priorities.push_back(int(filesPriority[i]));
					}
					gTorrent.prioritize_files(priorities);
				} else {
					LOG_ERR("LibTorrent.SetTorrentFilesPriority priority array size failed");
					result = JNI_FALSE;
				}
			}
		}
	} catch(...){
		LOG_ERR("Exception: failed to set files priority");
		gWorkState=false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.SetTorrentFilesPriority WorkState==false");
	gWorkState==true ? result=JNI_TRUE : result=JNI_FALSE;
	if(filesPriority)
		env->ReleaseByteArrayElements(FilesPriority, filesPriority, JNI_ABORT);
	return result;
}
//-----------------------------------------------------------------------------
JNIEXPORT jbyteArray JNICALL Java_com_softwarrior_libtorrent_LibTorrent_GetTorrentFilesPriority
	(JNIEnv *env, jobject obj)
{
	jbyteArray result = NULL;
	jbyte* result_array = NULL;
	try {
		if(gWorkState){
			libtorrent::torrent_status s = gTorrent.status();
			if(gTorrent.has_metadata()) {
				libtorrent::torrent_info const& info = gTorrent.get_torrent_info();
				int files_num = info.num_files();
				std::vector<int> priorities = gTorrent.file_priorities();
				if(files_num == priorities.size() ){
					result_array = new jbyte[files_num];
					for(int i=0;i<files_num;i++) result_array[i] = (jbyte)priorities[i];
					result = env->NewByteArray(files_num);
					env->SetByteArrayRegion(result,0,files_num,result_array);
				} else {
					LOG_ERR("LibTorrent.GetTorrentFilesPriority priority array size failed");
				}
			}
		}
	} catch(...){
		LOG_ERR("Exception: failed to get files priority");
		gWorkState=false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.GetTorrentFilesPriority WorkState==false");
	if(result_array)
		delete [] result_array;
	return result;
}
//-----------------------------------------------------------------------------
JNIEXPORT jstring JNICALL Java_com_softwarrior_libtorrent_LibTorrent_GetTorrentName
	(JNIEnv *env, jobject obj, jstring TorrentFile)
{
	jstring result = NULL;
	try{
		std::string torrentFile;
		JniToStdString(env, &torrentFile, TorrentFile);

		boost::intrusive_ptr<libtorrent::torrent_info> t;
		libtorrent::error_code ec;
		t = new libtorrent::torrent_info(torrentFile.c_str(), ec);
		if (ec){
			LOG_ERR("%s: %s\n", torrentFile.c_str(), ec.message().c_str());
		}
		else{
			LOG_INFO("%s\n", t->name().c_str());
			result = env->NewStringUTF((t->name()).c_str());
		}
	}catch(...){
		LOG_ERR("Exception: failed to add torrent");
		gWorkState = false;
	}
	if(!gWorkState) LOG_ERR("LibTorrent.GetTorrentName WorkState==false");
	return result;
}
//-----------------------------------------------------------------------------
