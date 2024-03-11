#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from RMX3395 device
$(call inherit-product, device/realme/RMX3395/device.mk)

PRODUCT_DEVICE := RMX3395
PRODUCT_NAME := lineage_RMX3395
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3395
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_NAME := RE879EL1
PRODUCT_SYSTEM_DEVICE := RE879EL1

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3395-user 13 TP1A.220905.001 S.15d84a6_1 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3395/RE879EL1:13/TP1A.220905.001/S.15d84a6_1:user/release-keys