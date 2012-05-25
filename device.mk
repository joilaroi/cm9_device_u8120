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

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Discard inherited values and use our own instead.
PRODUCT_NAME := huawei_u8120
PRODUCT_DEVICE := u8120
PRODUCT_MODEL := Huawei U8120

PRODUCT_AAPT_CONFIG := mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_LOCALES += mdpi

# Graphics 
PRODUCT_PACKAGES += \
    gralloc.u8120 \
    copybit.u8120

# Audio
PRODUCT_PACKAGES += \
    audio.primary.u8120 \
    audio_policy.u8120 \
    audio.a2dp.default

# Zram
PRODUCT_PACKAGES += \
    hwprops \
    rzscontrol

# Video decoding
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libopencorehw \
    libmm-omxcore \
    libOmxCore

# Other
PRODUCT_PACKAGES += \
    lights.u8120 \
    lights.msm7k \
    gps.u8120 \
    camera.u8120 \
    Apollo

# Goomanager & FileManager
PRODUCT_PACKAGES += \
    GooManager \
    FileManager

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
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Vold and USB
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/prebuilt/etc/start_usb0.sh:system/etc/start_usb0.sh \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/prebuilt/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/prebuilt/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/prebuilt/initlogo.rle:root/initlogo.rle

# modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib/modules/ar6000.ko:system/wifi/ar6000.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/zram.ko:system/lib/modules/zram.ko

# Wi-Fi related
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    $(LOCAL_PATH)/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \

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
    $(LOCAL_PATH)/firmware/eeprom.data:system/wifi/eeprom.data \
    $(LOCAL_PATH)/firmware/softmac:system/wifi/softmac

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    $(LOCAL_PATH)/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv

# surf_keypad
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin

# Decoders
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxCore.so:system/lib/libOmxCore.so

# Zipalign and scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/init.d/02huawei:system/etc/init.d/02huawei \
    $(LOCAL_PATH)/prebuilt/etc/init.d/70zipalign:system/etc/init.d/70zipalign \
    $(LOCAL_PATH)/prebuilt/bin/zipalign:system/bin/zipalign


# Bluetooth configuration files
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# USB autorun.iso for cdrom emulation in kernel driver
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/cdrom/autorun.iso:system/cdrom/autorun.iso

# Touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/cypress-ts-innolux_Ver04.idc:system/usr/idc/cypress-ts-innolux_Ver04.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/melfas-touchscreen.Ver23.idc:system/usr/idc/melfas-touchscreen.Ver23.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/melfas-touchscreen_ver23.idc:system/usr/idc/melfas-touchscreen_ver23.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/melfas-touchscreen_Ver23.idc:system/usr/idc/melfas-touchscreen_Ver23.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/melfas-touchscreen.idc:system/usr/idc/melfas-touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/7k_handset.idc:system/usr/idc/7k_handset.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/kp_test_input.idc:system/usr/idc/kp_test_input.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/surf_keypad.idc:system/usr/idc/surf_keypad.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/u8120-keypad.idc:system/usr/idc/u8120-keypad.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/touchscreen-keypad.idc:system/usr/idc/touchscreen-keypad.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/msm_touchscreen.idc:system/usr/idc/msm_touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/ts_test_input.idc:system/usr/idc/ts_test_input.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/sensors.idc:system/usr/idc/sensors.idc \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/synaptics.kl:system/usr/keylayout/synaptics.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/u8120-keypad.kl:system/usr/keylayout/u8120-keypad.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/cypress-ts-innolux_Ver04.kl:system/usr/keylayout/cypress-ts-innolux_Ver04.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/melfas-touchscreen.Ver23.kl:system/usr/keylayout/melfas-touchscreen.Ver23.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/melfas-touchscreen_ver23.kl:system/usr/keylayout/melfas-touchscreen_ver23.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/touchscreen-keypad.kl:system/usr/keylayout/touchscreen-keypad.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl

