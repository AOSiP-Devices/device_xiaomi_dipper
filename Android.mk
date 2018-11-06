#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

LOCAL_PATH := device/xiaomi/dipper

ifeq ($(PRODUCT_DEVICE),dipper)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif

include device/xiaomi/dipper/overlay/packages/apps/overlays/NoCutoutOverlay/Android.mk
