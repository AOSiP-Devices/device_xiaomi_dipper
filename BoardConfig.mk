#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm845-common
-include device/xiaomi/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/dipper

# Assert
TARGET_OTA_ASSERT_DEVICE := dipper

# Camera
TARGET_FACE_UNLOCK_CAMERA_ID := 5

# Display
TARGET_HAS_HDR_DISPLAY := true
TARGET_USES_COLOR_METADATA := true
TARGET_USES_DRM_PP := true

# Kernel
TARGET_KERNEL_CONFIG := raph_dipper_defconfig
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-raphiel-linux-gnu-
KERNEL_TOOLCHAIN := $(shell pwd)/prebuilts/gcc/linux-x86/aarch64/aarch64-raph-linux-android/bin
TARGET_KERNEL_SOURCE := kernel/xiaomi/dipper

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

# Power
TARGET_TAP_TO_WAKE_NODE := "/dev/input/event3"

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# SELinux
BOARD_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy/vendor

# Inherit from the proprietary version
-include vendor/xiaomi/dipper/BoardConfigVendor.mk
