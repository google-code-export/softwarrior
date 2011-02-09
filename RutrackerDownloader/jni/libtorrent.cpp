#include "libtorrent.h"

#include "libtorrent/session.hpp"

static libtorrent::session* gpSession = 0;
static char* 				gpSavePath = 0;
static char* 				gpTorentFile = 0;

JNIEXPORT jstring JNICALL Java_com_softwarrior_libtorrent_LibTorrent_StartDownload
  (JNIEnv *env, jobject obj, jstring SavePath, jstring TorentFile, jint ListenPort1, jint ListenPort2)
{
	if(gpSession == 0)
	{
		gpSession = new libtorrent::session();

		int listenPort1 = ListenPort1;
		int listenPort2 = ListenPort2;
		gpSession->listen_on(std::make_pair(listenPort1, listenPort2));
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
		gpSession->add_torrent(torrentParams);
	}
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
