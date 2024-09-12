#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common risingOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_coral.mk)

include device/google/coral/coral/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_NAME := coral

# RisingOS variables
RISING_MAINTAINER := nhansp
RISING_CHIPSET := sm8150
WITH_GMS := true
RISING_BATTERY := 3700mah
RISING_RAM := 6gb

PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET"Snapdragon 855" \
    RISING_MAINTAINER="nhansp ft. yuuki"

# RisingOS targets
TARGET_ENABLE_BLUR := true 
TARGET_SUPPORT_64_BIT_APPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_BOOT_ANIMATION_RES := 1440


PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=coral \
    PRIVATE_BUILD_DESC="coral-user 13 TP1A.221005.002.B2 9382335 release-keys"

BUILD_FINGERPRINT := google/coral/coral:13/TP1A.221005.002.B2/9382335:user/release-keys

$(call inherit-product, vendor/google/coral/coral-vendor.mk)
