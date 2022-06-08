# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/raviole/overlay-lineage

# Additional RRO Overlays
PRODUCT_PACKAGES += \
   PixelFrameworksOverlay

# Camera
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true
PRODUCT_PACKAGES += \
    GoogleCamera

# GMS
WITH_GMS := true

# parts
PRODUCT_PACKAGES += \
    GoogleParts

# Powershare HAL
include hardware/google/pixel/powershare/device.mk

# Touch
include hardware/google/pixel/touch/device.mk

$(call inherit-product, device/google/raviole/device-custom.mk)
