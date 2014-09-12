# Copyright (C) 2011 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for maguro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and maguro, hence its name.
#

# Get the long list of APNs
$(call inherit-product, vendor/du/config/gsm.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/du/config/common.mk)

# Inherit from skyrocket device
$(call inherit-product, device/samsung/celoxdcm/full_celoxdcm.mk)

#set build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SC-03D TARGET_DEVICE=SC-03D BUILD_FINGERPRINT="samsung/SC-03D/SC-03D:4.4/KRT16M/OMLPH:user/release-keys" PRIVATE_BUILD_DESC="SC-03D-user 4.4 KRT16M OMLPH release-keys"

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := du_celoxdcm
PRODUCT_DEVICE := celoxdcm
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := celoxdcm
BOARD_VENDOR := samsung
BOARD_FAMILY := celox
TARGET_BOARD_PLATFORM := msm8660
