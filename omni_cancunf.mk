#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from cancunf device
$(call inherit-product, device/motorola/cancunf/device.mk)

PRODUCT_DEVICE := cancunf
PRODUCT_NAME := omni_cancunf
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g73 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cancunf_g_vext-user 12 T3TD33.16-13-5 1449d9 release-keys"

BUILD_FINGERPRINT := motorola/cancunf_g_vext/cancunf:12/T3TD33.16-13-5/1449d9:user/release-keys
