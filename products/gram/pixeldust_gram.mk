#
# Copyright (C) 2018-2019 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := Poco M2 Pro
export TARGET_DEVICE := gram

# Include common PixelDust stuff
include vendor/pixeldust/configs/pixeldust_phone.mk

# Include optional stuff (e.g. prebuilt apps)
include vendor/pixeldust/configs/system_optional.mk

# Google Apps
$(call inherit-product-if-exists, vendor/gapps/gapps.mk)
REMOVE_GAPPS_PACKAGES += \
    GoogleCamera \
    NexusLauncherRelease

# Inherit from gram device
$(call inherit-product, device/xiaomi/gram/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := gram
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := pixeldust_gram
PRODUCT_MODEL := Poco M2 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := gram

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gram-user 10 QKQ1.191215.002 V11.0.3.0.QJPINXM release-keys"

BUILD_FINGERPRINT := POCO/gram_in/gram:10/QKQ1.191215.002/V11.0.3.0.QJPINXM:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.pixeldust.maintainer="ChaitanayaMittal" \
    ro.pixeldust.device="gram"
