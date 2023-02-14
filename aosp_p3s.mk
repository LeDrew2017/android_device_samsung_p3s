#
# Copyright (C) 2022 The PixelExperience Project
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

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Inherit from p3s device
$(call inherit-product, device/samsung/p3s/device.mk)

# Inherit some common Pixel Experience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Pixel Experience Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := false # This is correct, device doesn't support Quick Tap

## Device identifier, this must come after all inclusions
PRODUCT_NAME := aosp_p3s
PRODUCT_DEVICE := p3s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G998B
PRODUCT_MANUFACTURER := samsung

PRODUCT_SYSTEM_NAME := Galaxy S21 Ultra 5G
PRODUCT_SYSTEM_DEVICE := Galaxy S21 Ultra 5G

PRODUCT_GMS_CLIENTID_BASE := android-samsung
