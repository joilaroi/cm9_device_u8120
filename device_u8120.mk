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
#

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8120/overlay

PRODUCT_PACKAGES += \
    lights.u8120 \
    gps.u8120 \
    hwprops \
    rzscontrol \
    abtfilt \
    Gallery2 \
    dexpreopt \

DISABLE_DEXPREOPT := false

# Vold config
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# Hardware permissions
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
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Init files
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/init.u8120.usb.rc:root/init.u8120.usb.rc \
    device/huawei/u8120/prebuilt/initlogo.rle:root/initlogo.rle \
    device/huawei/u8120/prebuilt/init.u8120.rc:root/init.u8120.rc \
    device/huawei/u8120/prebuilt/ueventd.huawei.rc:root/ueventd.huawei.rc

# OEM logo and boot splash
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/initlogo.rle:root/initlogo.rle

# Wi-Fi releated
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/hostapd:system/bin/hostapd \
    device/huawei/u8120/prebuilt/hostapd.conf:system/etc/wifi/hostapd.conf \
    device/huawei/u8120/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8120/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Modules
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/lib/modules/ar6000.ko:system/wifi/ar6000.ko \
    device/huawei/u8120/prebuilt/lib/modules/tun.ko:system/lib/modules/2.6.32.9-perf/tun.ko \
    device/huawei/u8120/prebuilt/lib/modules/cifs.ko:system/lib/modules/2.6.32.9-perf/cifs.ko \
    device/huawei/u8120/prebuilt/lib/modules/zram.ko:system/lib/modules/2.6.32.9-perf/zram.ko \
    device/huawei/u8120/prebuilt/lib/modules/lzo_compress.ko:system/lib/modules/2.6.32.9-perf/lzo_compress.ko \
    device/huawei/u8120/prebuilt/lib/modules/lzo_decompress.ko:system/lib/modules/2.6.32.9-perf/lzo_decompress.ko

# Firmware
PRODUCT_COPY_FILES += \
    device/huawei/u8120/firmware/athtcmd_ram.bin:system/wifi/athtcmd_ram.bin \
    device/huawei/u8120/firmware/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \
    device/huawei/u8120/firmware/caldata.bin.ar6002:system/wifi/caldata.bin.ar6002 \
    device/huawei/u8120/firmware/caldata.bin.ar6102:system/wifi/caldata.bin.ar6102 \
    device/huawei/u8120/firmware/data.patch.hw2_0.bin:system/wifi/data.patch.hw2_0.bin \
    device/huawei/u8120/firmware/data.patch.hw2_0.bin.ar6002:system/wifi/data.patch.hw2_0.bin.ar6002 \
    device/huawei/u8120/firmware/device.bin:system/wifi/device.bin

# OEM RPC
PRODUCT_COPY_FILES += \
    vendor/huawei/u8120/proprietary/bin/modempre:system/bin/modempre \
    vendor/huawei/u8120/proprietary/bin/oem_rpc_svc:system/bin/oem_rpc_svc \
    vendor/huawei/u8120/proprietary/lib/libhwrpc.so:system/lib/libhwrpc.so \
    vendor/huawei/u8120/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so

# Other
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/lib/hw/audio.primary.u8120.so:system/lib/hw/audio.primary.u8120.so \
    device/huawei/u8120/prebuilt/lib/hw/audio_policy.u8120.so:system/lib/hw/audio_policy.u8120.so \
    device/huawei/u8120/prebuilt/lib/libsurfaceflinger.so:system/lib/libsurfaceflinger.so \
    device/huawei/u8120/prebuilt/lib/hw/gralloc.u8120.so:system/lib/hw/gralloc.u8120.so \
    device/huawei/u8120/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    device/huawei/u8120/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/huawei/u8120/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/u8120/prebuilt/xbin/busybox:system/xbin/busybox

# Touchscreen
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/u8120/prebuilt/usr/idc/melfas-touchscreen.idc:system/usr/idc/melfas-touchscreen.idc \
    device/huawei/u8120/prebuilt/usr/keylayout/synaptics.kl:system/usr/keylayout/synaptics.kl \
    device/huawei/u8120/prebuilt/usr/keylayout/melfas-touchscreen.kl:system/usr/keylayout/melfas-touchscreen.kl \
    device/huawei/u8120/prebuilt/usr/idc/msm_touchscreen.idc:system/usr/idc/msm_touchscreen.idc \
    device/huawei/u8120/prebuilt/usr/keylayout/msm_touchscreen.kl:system/usr/keylayout/msm_touchscreen.kl \
    device/huawei/u8120/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/huawei/u8120/prebuilt/usr/keychars/surf_keypad.kcm:system/usr/keychars/surf_keypad.kcm \
    device/huawei/u8120/prebuilt/usr/keylayout/u8120-keypad.kl:system/usr/keylayout/u8120-keypad.kl \
    device/huawei/u8120/prebuilt/usr/keychars/u8120-keypad.kcm:system/usr/keychars/u8120-keypad.kcm

# rmt_storage
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/bin/rmt_storage:system/bin/rmt_storage \
    device/huawei/u8120/prebuilt/bin/rmt_oeminfo:system/bin/rmt_oeminfo

PRODUCT_COPY_FILES += device/huawei/u8120/prebuilt/kernel:kernel

$(call inherit-product-if-exists, vendor/huawei/u8120/u8120-vendor.mk)

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_PROPERTY_OVERIDES += \
    ro.config.disable_hw_accel=true

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.telephony.ril.v3=icccardstatus,datacall,signalstrength,facilitylock \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.telephony.default_network=0 \
    ro.telephony.call_ring.multiple=false

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# LDPI assets
PRODUCT_LOCALES += ldpi mdpi

PRODUCT_NAME := huawei_u8120
PRODUCT_DEVICE := u8120
PRODUCT_MODEL := u8120
PRODUCT_BRAND := huawei
PRODUCT_MANUFACTURER := huawei
