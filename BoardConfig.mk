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
# This file sets variables that control the way modules are built
# throughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/huawei/u8120/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/huawei/u8120/include

# ARMv6-compatible processor rev 2 (v6l)
# CPU
# Arch related defines
TARGET_BOARD_PLATFORM := msm7x27
TARGET_ARCH_VARIANT := armv6j
TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI2 := armeabi

# Target information
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := false

TARGET_BOOTLOADER_BOARD_NAME := u8120
TARGET_OTA_ASSERT_DEVICE := u8120,u8100,u8109,u8110,ascend
TARGET_BOARD_INFO_FILE := device/huawei/u8120/board-info.txt

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER 	:= AWEXT
BOARD_WLAN_DEVICE 		:= ar6000
WIFI_DRIVER_MODULE_PATH 	:= "/system/wifi/ar6000.ko"
WIFI_DRIVER_MODULE_NAME	 	:= ar6000
WIFI_DRIVER_MODULE_ARG 		:= "softmac_file=/system/wifi/softmac"

# Audio
BOARD_PROVIDES_LIBAUDIO := true
BOARD_USES_GENERIC_AUDIO := false

# Camera
BOARD_USE_FROYO_LIBCAMERA := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true

# RIL
BOARD_PROVIDES_LIBRIL := true

# Graphics
BOARD_HAS_LIMITED_EGL := true
BOARD_EGL_CFG := device/huawei/u8120/egl.cfg

# ICS Stuff 
BOARD_USE_LEGACY_TOUCHSCREEN := true
BOARD_USE_LEGACY_TRACKPAD := true
DISABLE_DEXPREOPT := true
COPYBIT_MSM7K := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
TARGET_FORCE_CPU_UPLOAD := true
TARGET_WEBKIT_USE_MORE_MEMORY := true

WITH_DEXPREOPT := false

# QCOM
BOARD_USES_QCOM_LIBS := true
BOARD_USES_LEGACY_QCOM := true
BOARD_USES_QCOM_LIBRPC := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 6225
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8120
BOARD_GPS_LIBRARIES := libloc_api

# USB mass storage
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/vold/179:1
BOARD_SDEXT_DEVICE := /dev/block/vold/179:2
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH  := /sys/devices/platform/msm_hsusb/gadget/lun0/file
BOARD_CUSTOM_USB_CONTROLLER := ../../device/huawei/u8120/UsbController.cpp

# Browser
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8

# Kernel
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_CMDLINE := mem=211M console=ttyMSM2,115200n8 androidboot.hardware=u8120
BOARD_KERNEL_PAGESIZE := 4096

# # cat /proc/mtd
# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "boot"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00140000 00020000 "misc"
# mtd3: 00060000 00020000 "splash"
# mtd4: 0aa00000 00020000 "system"
# mtd5: 05d00000 00020000 "cache"
# mtd6: 0a6a0000 00020000 "userdata"
# mtd7: 01400000 00020000 "cust"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0baa6f40
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a6a0000

# (BOARD_KERNEL_PAGESIZE * 64)
BOARD_FLASH_BLOCK_SIZE := 262144

#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0aa00000

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u8120/recovery/recovery_keys.c
BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/u8120/recovery/recovery_graphics.c
BOARD_LDPI_RECOVERY := true

