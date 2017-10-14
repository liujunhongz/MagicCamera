# This is the Android makefile for libyuv for both platform and NDK.
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := .cpp

LOCAL_SRC_FILES := \
    MagicJni.cpp                \
    bitmap/BitmapOperation.cpp  \
    bitmap/BitmapOperation.h    \
    bitmap/Conversion.cpp       \
    bitmap/Conversion.h         \
    bitmap/JniBitmap.h          \
    beautify/MagicBeautify.cpp  \
    beautify/MagicBeautify.h  \

LOCAL_MODULE := MagicBeautify
# LOCAL_MODULE_TAGS := optional
LOCAL_LDLIBS += -llog -ljnigraphics

# LOCAL_CFLAGS := -std=clang -DNO_CRYPTO

include $(BUILD_SHARED_LIBRARY)
# include $(BUILD_STATIC_LIBRARY)

