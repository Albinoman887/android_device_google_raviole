# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

# Inherit some common SparkOS stuff.
$(call inherit-product, vendor/spark/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole_64.mk)
$(call inherit-product, device/google/raviole/device-spark.mk)

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)

# Extra packages
PRODUCT_PACKAGES += \
    vendor.lineage.powershare@1.0-service.gs101

## Device identifier. This must come after all inclusions
PRODUCT_NAME := spark_oriole
PRODUCT_MODEL := Pixel 6
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=oriole \
    PRIVATE_BUILD_DESC="oriole-user 13 TP1A.220905.004 8927612 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGERPRINT)
