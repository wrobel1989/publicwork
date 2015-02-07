#use NDK_DEBUG=1 env. var to build with debug lib
LOCAL_PATH := $(call my-dir)
NDK_DEBUG=1
include $(CLEAR_VARS)


include /home/pwrobel/android/OpenCV-2.4.10-android-sdk/sdk/native/jni/OpenCV.mk


TARGET_PLATFORM := 17
LOCAL_MODULE    := MainRend
LOCAL_SRC_FILES := main.cpp
LOCAL_CFLAGS    := -I/home/pwrobel/android/OpenCV-2.4.10-android-sdk/sdk/native/jni/include
LOCAL_LDLIBS    := -llog -landroid -lEGL -lGLESv2   -L/media/data2/android/android-ndk-r10d/platforms/android-17/arch-arm/usr/lib -lz -L/media/data2/android/android-ndk-r10d/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi-v7a-hard -lgnustl_shared -L/home/pwrobel/android/OpenCV-2.4.10-android-sdk/sdk/native/libs/armeabi-v7a -lopencv_core -lopencv_highgui -lopencv_java
LOCAL_STATIC_LIBRARIES := android_native_app_glue
include $(BUILD_SHARED_LIBRARY) 

$(call import-module,android/native_app_glue) 
