# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs101/lineage-common.mk)
$(call inherit-product, device/google/raviole/aosp_raven_64.mk)
$(call inherit-product, device/google/raviole/device-lineage.mk)
#$(call inherit-product, vendor/gms/products/gms.mk)
$(call inherit-product, vendor/google/pixelparts/pixelparts.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_raven
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_BRAND := google

PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.uwb.calibration.calibrationpaths=/vendor/etc/calib_paths

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=raven \
    PRIVATE_BUILD_DESC="raven-user 12 SP2A.220305.013.A3 8229987 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SP2A.220305.013.A3/8229987:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
