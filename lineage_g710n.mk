#
# Copyright (C) 2019 The LineageOS Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# common judyln
$(call inherit-product, device/lge/judyln-common/judyln-common.mk)

PRODUCT_SOONG_NAMESPACES += \
	$(DEVICE_PATH)

# Get non-open-source specific aspects
$(call inherit-product, vendor/lge/g710n/g710n-vendor.mk)

# Device identifiers
PRODUCT_NAME := lineage_g710n
PRODUCT_DEVICE := g710n
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := G7 ThinQ

PRODUCT_GMS_CLIENTID_BASE := android-om-lg

TARGET_VENDOR_PRODUCT_NAME := judyln_lao_com
TARGET_VENDOR_DEVICE_NAME := judyln

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=judyln \
    PRODUCT_NAME=judyln_lao_com \
    PRIVATE_BUILD_DESC="judyln_lao_com-user 10 QKQ1.191222.002 212731512c31d release-keys"

BUILD_FINGERPRINT := "lge/judyln_lao_com/judyln:10/QKQ1.191222.002/212731512c31d:user/release-keys"
