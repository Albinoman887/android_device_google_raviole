# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Dot stuff.
$(call inherit-product, vendor/dot/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole_64.mk)
$(call inherit-product, device/google/raviole/device-lineage.mk)
$(call inherit-product, vendor/gms/products/gms.mk)
WITH_GMS:= true

include device/google/gs101/lineage_common.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := dot_oriole
PRODUCT_MODEL := Pixel 6
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=oriole \
    PRIVATE_BUILD_DESC="oriole-user 12 SP2A.220405.004 8233519 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:12/SP2A.220405.004/8233519:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
