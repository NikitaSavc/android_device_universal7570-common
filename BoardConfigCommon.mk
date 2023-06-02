#
# Copyright (C) 2021 The LineageOS Project
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

LOCAL_PATH := device/samsung/universal7570-common
BUILD_TOP := $(shell pwd)
ALLOW_MISSING_DEPENDENCIES := true

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Firmware
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
# TARGET_NO_RECOVERY := true

# Platform
BOARD_VENDOR := samsung
TARGET_BOOTLOADER_BOARD_NAME := universal7570
TARGET_BOARD_PLATFORM := exynos5
TARGET_SOC := exynos7570

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

# Binder
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_PHONY_TARGETS := true

# Extracted with libbootimg
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_SEPARATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
KERNEL_TOOLCHAIN := /home/nikita/LineageOS/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin
TARGET_LINUX_KERNEL_VERSION := 3.18
# TARGET_KERNEL_LLVM_BINUTILS := false
# TARGET_KERNEL_CLANG_COMPILE := false

# Kernel config
TARGET_KERNEL_SOURCE := kernel/samsung/exynos7570
TARGET_KERNEL_CONFIG := exynos7570-j4lte_defconfig

# HIDL
DEVICE_MATRIX_FILE := $(LOCAL_PATH)/configs/compatibility_matrix.xml
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/configs/manifest.xml

# Use these flags if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_FS_CONFIG_GEN := $(LOCAL_PATH)/config.fs

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 93306880
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
# BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2551275520
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27105533952
BOARD_VENDORIMAGE_PARTITION_SIZE := 214622208
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := false
BOARD_ROOT_EXTRA_FOLDERS := efs cpefs


# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Vendor separation
TARGET_COPY_OUT_VENDOR := vendor

# Audio
USE_XML_AUDIO_POLICY_CONF := 1
AUDIOSERVER_MULTILIB := 32

# Backlight
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"

# Camera
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true
TARGET_USES_MEDIA_EXTENSIONS := true
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_BACK_CAMERA_SENSOR := 0
BOARD_FRONT_CAMERA_SENSOR := 1

# Device Tree
BOARD_USES_DT := true

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# HWComposer
#BOARD_HDMI_INCAPABLE := true
#BOARD_USES_DECON_64BIT_ADDRESS := true
#BOARD_USES_EXYNOS5_COMMON_GRALLOC := true
#BOARD_USES_HWC_SERVICES := true
#BOARD_USES_VPP := true
#MAX_EGL_CACHE_KEY_SIZE := 12*1024
#MAX_EGL_CACHE_SIZE := 2048*1024
#MAX_VIRTUAL_DISPLAY_DIMENSION := 2048
#NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
#TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS :=  0x2000
#TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
#TARGET_USES_GRALLOC1 := true
#TARGET_USES_HWC2 := true
#TARGET_USES_ION := true
#TARGET_USES_NEW_ION_API :=true
#TARGET_USES_OVERLAY := true
#USE_OPENGL_RENDERER := true

# Display
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# HALs
TARGET_AUDIOHAL_VARIANT := samsung
TARGET_POWERHAL_VARIANT := samsung

# Libhwui
HWUI_COMPILE_FOR_PERF := true

# Offline charge
BOARD_CHARGING_MODE_BOOTING_LPM := "/sys/class/power_supply/battery/batt_lp_charging"
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
CHARGING_ENABLED_PATH := "/sys/class/power_supply/battery/batt_lp_charging"

# OMX
TARGET_OMX_LEGACY_RESCALING := true

# Recovery
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.recovery

# Renderscript
OVERRIDE_RS_DRIVER := libRSDriverArm.so

# RIL
BOARD_VENDOR := samsung
BOARD_MODEM_TYPE := tss310
BOARD_PROVIDES_LIBRIL := true
ENABLE_VENDOR_RIL_SERVICE := true

# Security patch level
VENDOR_SECURITY_PATCH := 2020-09-01

# Seccomp
BOARD_SECCOMP_POLICY := $(LOCAL_PATH)/seccomp

# SELinux
BOARD_SEPOLICY_DIRS += device/samsung/universal7570-common/sepolicy
BOARD_SEPOLICY_VERS := $(PLATFORM_SDK_VERSION).0

# Treble
ENABLE_VENDOR_IMAGE := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
PRODUCT_VENDOR_MOVE_ENABLED := true
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
PRODUCT_FULL_TREBLE_OVERRIDE := true
BOARD_VNDK_VERSION := current

# Shim
TARGET_LD_SHIM_LIBS += \
	/vendor/bin/hw/android.hardware.media.omx@1.0-service|/vendor/lib/libstagefright_vendor_shim.so \
	/system/bin/mediaserver|/system/lib/libstagefright_shim.so

# Wifi
BOARD_HAVE_SAMSUNG_WIFI := true
