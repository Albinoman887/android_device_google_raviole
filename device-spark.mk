# artifacts
$(call inherit-product, device/google/raviole/artifacts.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/raviole/overlay-spark

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# EUICC
PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay
