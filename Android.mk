LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := cordova:libs/cordova-2.1.0.jar
include $(BUILD_MULTI_PREBUILT)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under)
LOCAL_PACKAGE_NAME := org.wikipedia
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := cordova:libs/cordova-2.1.0.jar
LOCAL_STATIC_JAVA_LIBRARIES := cordova
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform

include $(BUILD_PACKAGE)
