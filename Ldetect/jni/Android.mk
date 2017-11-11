LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

OPENCV_LIB_TYPE:=STATIC
OPENCV_INSTALL_MODULES:=on

OPENCV_MK_PATH:=/media/pritam/2A1A5C751A5C3FCD/ndk_opencv/OpenCV-android-sdk/sdk/native/jni/OpenCV.mk
ifeq ("$(wildcard $(OPENCV_MK_PATH))","")
	#try to load OpenCV.mk from default install location
	include $(TOOLCHAIN_PREBUILT_ROOT)/user/share/OpenCV/OpenCV.mk
else
	include $(OPENCV_MK_PATH)
endif

LOCAL_MODULE    := ImageProcessing
LOCAL_SRC_FILES := ImageProcessing.cpp


LOCAL_LDLIBS +=  -llog -ldl

include $(BUILD_SHARED_LIBRARY)
