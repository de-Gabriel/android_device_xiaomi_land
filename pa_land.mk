#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

# Check for the target product.
ifeq (pa_land,$(TARGET_PRODUCT))

DEVICE_PATH := device/xiaomi/land

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Set bootanimation to 720p display.
TARGET_BOOT_ANIMATION_RES := 720
TARGET_ARCH := arm64
TARGET_DENSITY := xhdpi

# Inherit from our common CAF device tree.
include device/qcom/common/common.mk

# Inherit from land devce
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 3S
PRODUCT_DEVICE := land
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := pa_land

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := land

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="land-user 6.0.1 MMB29M V9.6.1.0.MALMIFD release-keys"

BUILD_FINGERPRINT := Xiaomi/land/land:6.0.1/MMB29M/V9.6.1.0.MALMIFD:user/release-keys

# Paranoid Android platform
include vendor/pa/main.mk

endif
