# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/raviole/overlay-spark

# TEMP
PRODUCT_PACKAGES += \
    GmsCompat

# ADB
PRODUCT_PRODUCT_PROPERTIES += \
    ro.adb.secure=0 \
    persist.sys.usb.config=mtp,adb \
    persist.service.debuggable=1 \
    persist.service.adb.enable=1

# GMS
WITH_GAPPS := true

# Propperties - product
PRODUCT_PRODUCT_PROPERTIES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural

# Powershare
PRODUCT_PACKAGES += \
    vendor.lineage.powershare@1.0-service.gs101

$(call inherit-product, device/google/raviole/device-custom.mk)
