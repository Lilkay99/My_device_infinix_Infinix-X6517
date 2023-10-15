#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
 
# installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from X6517 device
$(call inherit-product, device/infinix/X6517/device.mk)

PRODUCT_DEVICE := X6517
PRODUCT_NAME := twrp_X6517
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6517
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="X6517-V6500AACD-S-GL-230116V353"

BUILD_FINGERPRINT := Infinix/X6517-GL/Infinix-X6517:12/SP1A.210812.016/230116V353:user/release-keys
