LOCAL_PATH := $(my-dir)

ifeq ($(TARGET_DEVICE),u8120)
    subdir_makefiles := \
        $(LOCAL_PATH)/libaudio/Android.mk \
        $(LOCAL_PATH)/liblights/Android.mk \
        $(LOCAL_PATH)/librpc/Android.mk \
        $(LOCAL_PATH)/libcamerahal/Android.mk \
        $(LOCAL_PATH)/libstagefrighthw/Android.mk \
        $(LOCAL_PATH)/libomxcore/Android.mk \
        $(LOCAL_PATH)/libopencorehw/Android.mk

    include $(subdir_makefiles)
endif
