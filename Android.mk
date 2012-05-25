LOCAL_PATH := $(my-dir)

ifeq ($(TARGET_DEVICE),u8120)

subdir_makefiles := \
    $(LOCAL_PATH)/libaudio/Android.mk \
    $(LOCAL_PATH)/libcamera/Android.mk \
    $(LOCAL_PATH)/libcopybit/Android.mk \
    $(LOCAL_PATH)/libgralloc/Android.mk \
    $(LOCAL_PATH)/liblights/Android.mk \
    $(LOCAL_PATH)/liblights_msm7k/Android.mk \
    $(LOCAL_PATH)/libopencorehw/Android.mk \
    $(LOCAL_PATH)/librpc/Android.mk \
    $(LOCAL_PATH)/libstagefrighthw/Android.mk \
    $(LOCAL_PATH)/GooManager/Android.mk \
    $(LOCAL_PATH)/FileManager/Android.mk

    include $(subdir_makefiles)

endif
