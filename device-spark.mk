# artifacts
$(call inherit-product, device/google/raviole/artifacts.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/raviole/overlay-spark

# RRO Overlays
PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay \
    NowPlayingOverlay

# ADB
PRODUCT_PRODUCT_PROPERTIES += \
    ro.adb.secure=0 \
    persist.sys.usb.config=mtp,adb \
    persist.service.debuggable=1 \
    persist.service.adb.enable=1

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.columbus.use_ap_sensor=false

# UDFPS
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
