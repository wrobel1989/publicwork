#use NDK_DEBUG=1 env. var to build with debug lib
LOCAL_PATH := $(call my-dir)
NDK_DEBUG=1
include $(CLEAR_VARS)

TARGET_PLATFORM := 17
LOCAL_MODULE    := MainRend
LOCAL_SRC_FILES := main.cpp
LOCAL_LDLIBS    := -llog -landroid -lEGL -lGLESv2
LOCAL_STATIC_LIBRARIES := android_native_app_glue

include $(BUILD_SHARED_LIBRARY) 

$(call import-module,android/native_app_glue) 
