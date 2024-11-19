#
# Copyright (C) 2021 AOSPK
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit from star2qltechn device
$(call inherit-product, device/samsung/star2qltechn/device.mk)

# Inherit some common SuperiorOS stuff
$(call inherit-product, vendor/superior/config/common.mk)

# Device identifier
PRODUCT_NAME := superior_star2qltechn
PRODUCT_DEVICE := star2qltechn
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G9650
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

BUILD_FINGERPRINT := "samsung/star2qltezh/star2qltechn:10/QP1A.190711.020/G9650ZHU9FWC3:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=star2qltezh \
    PRIVATE_BUILD_DESC="star2qltezh-user 10 QP1A.190711.020 G9650ZHU9FWC3 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.PDA=G9650ZHU9FWC3 \
    ro.build.fingerprint=samsung/star2qltezh/star2qltechn:10/QP1A.190711.020/G9650ZHU9FWC3:user/release-keys