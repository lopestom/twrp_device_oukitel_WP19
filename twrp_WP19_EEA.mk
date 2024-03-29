#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from device
$(call inherit-product, device/oukitel/WP19/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := WP19
PRODUCT_NAME := twrp_WP19_EEA
PRODUCT_BRAND := OUKITEL
PRODUCT_MODEL := WP19
PRODUCT_MANUFACTURER := wheatek
PRODUCT_RELEASE_NAME := OUKITEL WP19

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=WP19 \
    PRODUCT_NAME=WP19_EEA \
    PRIVATE_BUILD_DESC="WP19_EEA-user 12 SP1A.210812.016 1654715609 release-keys"

BUILD_FINGERPRINT := OUKITEL/WP19_EEA/WP19:12/SP1A.210812.016/1654715609:user/release-keys

