#
# Copyright (C) 2018-2020 The LineageOS Project
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common Extended stuff.
$(call inherit-product, vendor/aosp/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit GMS, Pixel Features, and Modules.
$(call inherit-product, vendor/google/gms/config.mk)

# Don't preoptimize prebuilts when building GMS.
DONT_DEXPREOPT_PREBUILTS := true

# Pixel Features
$(call inherit-product, vendor/google/pixel/config.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="violet-user 10 QKQ1.190915.002 V12.0.4.0.QFHINXM release-keys" \
    PRODUCT_NAME="violet"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
