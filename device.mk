#
# Copyright (C) 2022 The LineageOS Project
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

# Inherit from the common tree
$(call inherit-product, device/samsung/universal2100-common/common.mk)

# Inherit proprietary files
$(call inherit-product, vendor/samsung/p3s/p3s-vendor.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

DEVICE_PATH := device/samsung/p3s

# AptX
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/libaptX/libaptX_encoder.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libaptX_encoder.so \
    $(DEVICE_PATH)/libaptX/libaptXHD_encoder.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libaptXHD_encoder.so

# Recovery/vendor_boot firmware
PRODUCT_COPY_FILES += \
    vendor/samsung/p3s/proprietary/vendor/firmware/y792_p3.bin:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/vendor/firmware/y792_p3.bin \
    vendor/samsung/p3s/proprietary/vendor/firmware/y792_p3.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/y792_p3.bin \
    vendor/samsung/p3s/proprietary/vendor/firmware/w9020_p3_c0.bin:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/vendor/firmware/w9020_p3_c0.bin \
    vendor/samsung/p3s/proprietary/vendor/firmware/w9020_p3_c0.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/w9020_p3_c0.bin \
    vendor/samsung/p3s/proprietary/vendor/firmware/w9020_p3_c1.bin:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/vendor/firmware/w9020_p3_c1.bin \
    vendor/samsung/p3s/proprietary/vendor/firmware/w9020_p3_c1.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/w9020_p3_c1.bin \
    vendor/samsung/p3s/proprietary/vendor/firmware/w9020_p3_c2.bin:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/vendor/firmware/w9020_p3_c2.bin \
    vendor/samsung/p3s/proprietary/vendor/firmware/w9020_p3_c2.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/w9020_p3_c2.bin \
    vendor/samsung/p3s/proprietary/vendor/firmware/w9020_p3_c3.bin:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/vendor/firmware/w9020_p3_c3.bin \
    vendor/samsung/p3s/proprietary/vendor/firmware/w9020_p3_c3.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/w9020_p3_c3.bin \
    vendor/samsung/p3s/proprietary/vendor/firmware/p3_00_generic_xtalk_shape.bin:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/vendor/firmware/p3_00_generic_xtalk_shape.bin \
    vendor/samsung/p3s/proprietary/vendor/firmware/p3_00_generic_xtalk_shape.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/p3_00_generic_xtalk_shape.bin \
    vendor/samsung/p3s/proprietary/vendor/firmware/p3_vl53l5.bin:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/vendor/firmware/p3_vl53l5.bin \
    vendor/samsung/p3s/proprietary/vendor/firmware/p3_vl53l5.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/p3_vl53l5.bin

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
