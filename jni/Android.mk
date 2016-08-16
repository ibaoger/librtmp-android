LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := librtmp
LOCAL_SRC_FILES := \
	src/amf.c \
	src/hashswf.c \
	src/log.c \
	src/parseurl.c \
	src/rtmp.c \

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -llog
LOCAL_CFLAGS := -Wall -O2 -DSYS=posix -DNO_CRYPTO
TARGET_PLATFORM := android-23

### librtmp library ###
### shared library use the first line
### static library use the second line
### !!! only one line can be used !!! ###

include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_STATIC_LIBRARY)