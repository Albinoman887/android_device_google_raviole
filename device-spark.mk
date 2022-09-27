# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/raviole/overlay-spark

# Gapps
$(call inherit-product-if-exists, vendor/gms/products/gms.mk)
WITH_GAPPS := true

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

# UDFPS
TARGET_HAS_UDFPS := true
