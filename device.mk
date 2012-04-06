# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay
DEVICE_PACKAGE_OVERLAYS += device/huawei/u8120/ldpi
PRODUCT_PACKAGE_OVERLAYS += vendor/cm/overlay/ldpi

PRODUCT_PACKAGES += \
    libRS \
    hwprops \
    rzscontrol \
    librs_jni \
    lights.msm7x27\
    hwcomposer.default \
    gps.u8120 \
    audio.primary.msm7x27 \
    audio_policy.msm7x27 \
    audio.a2dp.default \
    libstagefrighthw \
    libopencorehw \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    Gallery2 \
    abtfilt \
    libcamera \
    camera.msm7x27 \
    com.android.future.usb.accessory \
    zipalign \
    dexpreopt

PRODUCT_LOCALES := en_GB
PRODUCT_LOCALES += ldpi mdpi
PRODUCT_AAPT_CONFIG := normal ldpi mdpi
PRODUCT_AAPT_PREF_CONFIG := ldpi

# Support files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Media configuration xml file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media_profiles.xml:/system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/initlogo.rle:root/initlogo.rle \
    $(LOCAL_PATH)/prebuilt/init.u8120.rc:root/init.u8120.rc \
    $(LOCAL_PATH)/prebuilt/ueventd.u8120.rc:root/ueventd.u8120.rc \
    $(LOCAL_PATH)/prebuilt/init.u8120.usb.rc:root/init.u8120.usb.rc \
    $(LOCAL_PATH)/prebuilt/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/prebuilt/FileManager.apk:system/app/FileManager.apk

# Camera libs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/libcamerahal/prebuilt/libqcamera.so:obj/lib/libqcamera.so \
    $(LOCAL_PATH)/libcamerahal/prebuilt/libqcamera.so:system/lib/libqcamera.so \
    $(LOCAL_PATH)/libcamerahal/prebuilt/libcamera.so:obj/lib/libcamera.so \
    $(LOCAL_PATH)/libcamerahal/prebuilt/libcamera.so:system/lib/libcamera.so

# Zipalign and Zram tweaks and MAC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/init.d/02huawei:system/etc/init.d/02huawei \
    $(LOCAL_PATH)/prebuilt/bin/zipalign:system/bin/zipalign \
    $(LOCAL_PATH)/prebuilt/etc/init.d/70zipalign:system/etc/init.d/70zipalign \
    $(LOCAL_PATH)/prebuilt/etc/check_property.sh:system/etc/check_property.sh \
    $(LOCAL_PATH)/firmware/softmac:system/wifi/softmac

# Input device calibration files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keyfiles/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    $(LOCAL_PATH)/keyfiles/synaptics.idc:system/usr/idc/synaptics.idc \
    $(LOCAL_PATH)/keyfiles/msm_touchscreen.idc:system/usr/idc/msm_touchscreen.idc \
    $(LOCAL_PATH)/keyfiles/melfas-touchscreen.idc:system/usr/idc/melfas-touchscreen.idc \
    $(LOCAL_PATH)/keyfiles/surf_keypad.idc:system/usr/idc/surf_keypad.idc \
    $(LOCAL_PATH)/keyfiles/touchscreen-keypad.idc:system/usr/idc/touchscreen-keypad.idc \
    $(LOCAL_PATH)/keyfiles/ts_test_input.idc:system/usr/idc/ts_test_input.idc \
    $(LOCAL_PATH)/keyfiles/7k_handset.idc:system/usr/idc/7k_handset.idc \

# Keychars and keylayout files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keyfiles/msm_touchscreen.kl:system/usr/keylayout/msm_touchscreen.kl \
    $(LOCAL_PATH)/keyfiles/msm_touchscreen.kcm:system/usr/keychars/msm_touchscreen.kcm \
    $(LOCAL_PATH)/keyfiles/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    $(LOCAL_PATH)/keyfiles/synaptics-rmi-touchscreen.kcm:system/usr/keychars/synaptics-rmi-touchscreen.kcm \
    $(LOCAL_PATH)/keyfiles/melfas-touchscreen.kl:system/usr/keylayout/melfas-touchscreen.kl \
    $(LOCAL_PATH)/keyfiles/melfas-touchscreen.kcm:system/usr/keychars/melfas-touchscreen.kcm \
    $(LOCAL_PATH)/keyfiles/synaptics.kl:system/usr/keylayout/synaptics.kl \
    $(LOCAL_PATH)/keyfiles/synaptics.kcm:system/usr/keychars/synaptics.kcm \
    $(LOCAL_PATH)/keyfiles/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    $(LOCAL_PATH)/keyfiles/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    $(LOCAL_PATH)/keyfiles/ts_test_input.kl:system/usr/keylayout/ts_test_input.kl \
    $(LOCAL_PATH)/keyfiles/qwerty.kl:system/usr/keylayout/qwerty.kl \
    $(LOCAL_PATH)/keyfiles/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    $(LOCAL_PATH)/keyfiles/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    $(LOCAL_PATH)/keyfiles/Virtual.kcm:system/usr/keychars/Virtual.kcm \
    $(LOCAL_PATH)/keyfiles/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/keyfiles/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \

# modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/modules/ar6000.ko:system/wifi/ar6000.ko \
    $(LOCAL_PATH)/prebuilt/modules/zram.ko:system/lib/modules/2.6.32.9-perf/zram.ko

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib/hw/copybit.msm7x27.so:system/lib/hw/copybit.msm7x27.so \
    $(LOCAL_PATH)/prebuilt/lib/hw/gralloc.msm7x27.so:system/lib/hw/gralloc.msm7x27.so

# Wi-Fi related
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    $(LOCAL_PATH)/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/wifi/dhcpcd.conf \
    $(LOCAL_PATH)/prebuilt/hostapd:system/bin/hostapd \
    $(LOCAL_PATH)/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/prebuilt/hostapd.conf:system/etc/wifi/hostapd.conf

# Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/athtcmd_ram.bin:system/wifi/athtcmd_ram.bin \
    $(LOCAL_PATH)/firmware/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \
    $(LOCAL_PATH)/firmware/caldata.bin.ar6002:system/wifi/caldata.bin.ar6002 \
    $(LOCAL_PATH)/firmware/caldata.bin.ar6102:system/wifi/caldata.bin.ar6102 \
    $(LOCAL_PATH)/firmware/data.patch.hw2_0.bin:system/wifi/data.patch.hw2_0.bin \
    $(LOCAL_PATH)/firmware/data.patch.hw2_0.bin.ar6002:system/wifi/data.patch.hw2_0.bin.ar6002 \
    $(LOCAL_PATH)/firmware/device.bin:system/wifi/device.bin \
    $(LOCAL_PATH)/firmware/eeprom.bin:system/wifi/eeprom.bin \
    $(LOCAL_PATH)/firmware/eeprom.data:system/wifi/eeprom.data

# OEM RPC
PRODUCT_COPY_FILES += \
    vendor/huawei/u8120/proprietary/bin/modempre:system/bin/modempre \
    vendor/huawei/u8120/proprietary/bin/oem_rpc_svc:system/bin/oem_rpc_svc \
    vendor/huawei/u8120/proprietary/lib/libhwrpc.so:system/lib/libhwrpc.so \
    vendor/huawei/u8120/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/prebuilt/etc/AudioFilterU8120.csv:system/etc/AudioFilterU8120.csv \
    $(LOCAL_PATH)/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    $(LOCAL_PATH)/prebuilt/etc/01_qc.cfg:system/etc/01_qc.cfg

# rmt_storage
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bin/rmt_storage:system/bin/rmt_storage

# Other
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    $(LOCAL_PATH)/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    $(LOCAL_PATH)/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl

# Sysctl
PRODUCT_COPY_FILES += \
    device/zte/common/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    device/zte/common/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1

TARGET_PREBUILT_KERNEL := device/huawei/u8120/prebuilt/kernel

$(call inherit-product-if-exists, vendor/huawei/u8120/u8120-vendor.mk)

