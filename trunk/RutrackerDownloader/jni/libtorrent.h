#include <jni.h>

#ifndef __Included_Java_com_softwarrior_libtorrent_LibTorrent__
#define __Included_Java_com_softwarrior_libtorrent_LibTorrent__

#ifdef __cplusplus
extern "C" {
#endif

JNIEXPORT jstring JNICALL Java_com_softwarrior_libtorrent_LibTorrent_StartDownload
	(JNIEnv *, jobject, jstring, jstring, jint, jint);

JNIEXPORT jbyteArray JNICALL Java_com_softwarrior_libtorrent_LibTorrent_StopDownload
	(JNIEnv *, jobject);

#ifdef __cplusplus
}
#endif

#endif //__Included_Java_com_softwarrior_libtorrent_LibTorrent__
