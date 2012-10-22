LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS) 

LOCAL_MODULE := libtorrent
LOCAL_SRC_FILES := lib/libtorrent.so

include $(BUILD_SHARED_LIBRARY)
