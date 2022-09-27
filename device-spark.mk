# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/raviole/overlay-spark

# RRO Overlays
PRODUCT_PACKAGES += \
    NowPlayingOverlay

# Gapps
$(call inherit-product-if-exists, vendor/gms/products/gms.mk)
WITH_GAPPS := true

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
persist.columbus.use_ap_sensor=false

# UDFPS
TARGET_HAS_UDFPS := true
