# overlay
DEVICE_PACKAGE_OVERLAYS += device/google/raviole/overlay-lineage

# Kernel
TARGET_PREBUILT_KERNEL := device/google/raviole-kernel/Image.lz4

# Libraries required for vendor
PRODUCT_PACKAGES += \
    android.frameworks.sensorservice@1.0.vendor:64 \
    android.hardware.authsecret@1.0.vendor:64 \
    android.hardware.biometrics.fingerprint-V1-ndk_platform.vendor:64 \
    android.hardware.bluetooth@1.1.vendor:64 \
    android.hardware.confirmationui@1.0.vendor:64 \
    android.hardware.confirmationui@1.0-lib.trusty:64 \
    android.hardware.drm@1.4.vendor:64 \
    android.hardware.keymaster@4.1.vendor:64 \
    android.hardware.oemlock@1.0.vendor:64 \
    android.hardware.identity_credential.xml \
    android.hardware.identity-support-lib.vendor:64 \
    android.hardware.input.classifier@1.0.vendor:64 \
    android.hardware.neuralnetworks-V1-ndk_platform.vendor:64 \
    android.hardware.neuralnetworks@1.3.vendor:64 \
    android.hardware.power@1.2.vendor:64 \
    android.hardware.radio@1.6.vendor \
    android.hardware.radio.config@1.2.vendor \
    android.hardware.radio.deprecated@1.0.vendor \
    android.hardware.sensors@2.0-ScopedWakelock.vendor \
    android.hardware.sensors@2.1.vendor \
    android.hardware.tetheroffload.config@1.0.vendor:64 \
    android.hardware.tetheroffload.control@1.1.vendor:64 \
    android.hardware.weaver@1.0.vendor:64 \
    android.hardware.wifi@1.5.vendor:64 \
    hardware.google.bluetooth.bt_channel_avoidance@1.0.vendor:64 \
    hardware.google.bluetooth.ccc@1.0.vendor:64 \
    hardware.google.bluetooth.sar@1.1.vendor:64 \
    pixelpowerstats_provider_aidl_interface-cpp.vendor:64 \
    libaudioroutev2.vendor \
    libavservices_minijail_vendor:64 \
    libcodec2_hidl@1.0.vendor \
    libcodec2_vndk.vendor \
    libcppbor.vendor:64 \
    libGralloc4Wrapper \
    libexynosv4l2 \
    libexynosutils \
    libhwbinder.vendor \
    libmedia_ecoservice.vendor \
    libkeymaster4support.vendor:64 \
    libnetfilter_conntrack:64 \
    libnfnetlink:64 \
    libnos:64 \
    libnos_client_citadel:64 \
    libnos_datagram:64 \
    libnos_datagram_citadel:64 \
    libsensorndkbridge \
    libsfplugin_ccodec_utils.vendor \
    libtinycompress \
    libtrusty_metrics:64 \
    libwifi-hal:64 \
    nos_app_avb:64 \
    nos_app_identity:64 \
    nos_app_keymaster:64 \
    nos_app_weaver:64 \
    sensors.dynamic_sensor_hal

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.singlereg.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.singlereg.xml \
    device/google/raviole/privapp-permissions-google-p.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-google-p.xml \
    device/google/raviole/privapp-permissions-google-se.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-google-se.xml

 # AiAi Config
PRODUCT_COPY_FILES += \
     device/google/raviole/allowlist_com.google.android.as.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/allowlist_com.google.android.as.xml
 

# Powershare
include hardware/google/pixel/powershare/device.mk

# Telephony
PRODUCT_PACKAGES += \
    ImsServiceEntitlement \
    Iwlan

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)

# Touch
include hardware/google/pixel/touch/device.mk

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
persist.sys.disable_rescue=true

# Vendor Properties
TARGET_VENDOR_PROP := device/google/raviole/vendor.prop

# Quick-tap
TARGET_SUPPORTS_QUICK_TAP := true

# UDFPS
TARGET_HAS_UDFPS := true

# Artifact path requirement allowlist
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/etc/permissions/android.hardware.biometrics.face.xml \
    system/etc/permissions/privapp-permissions-com.crdroid.faceunlock.xml \
    system/etc/sysconfig/hiddenapi-whitelist-com.crdroid.faceunlock.xml \
    system/lib64/faceunlock_vendor_dependencies.so \
    system/lib64/libFaceDetectCA.so \
    system/lib64/libMegviiUnlock-jni-1.2.so \
    system/lib64/libMegviiUnlock.so \
    system/lib64/libarcsoft-lib.so \
    system/lib64/libarcsoft_faceid.so \
    system/lib64/libarcsoftbase.so \
    system/lib64/libmegface.so \
    system/lib64/libmpbase.so \
    system/priv-app/FaceUnlockService/FaceUnlockService.apk \
    system/addon.d/70-velvet.sh \
    system/app/FlipendoPrebuilt/FlipendoPrebuilt.apk \
    system/app/GoogleExtShared/GoogleExtShared.apk \
    system/etc/permissions/privapp-permissions-google.xml \
    system/priv-app/GooglePackageInstaller/GooglePackageInstaller.apk \
    system/priv-app/DocumentsUIGoogle/DocumentsUIGoogle.apk \
    system/priv-app/NetworkPermissionConfigGoogle/NetworkPermissionConfigGoogle.apk \
    system/priv-app/NetworkStackGoogle/NetworkStackGoogle.apk \
    system/priv-app/TagGoogle/TagGoogle.apk \
system/app/CaptivePortalLoginGoogle/CaptivePortalLoginGoogle.apk \
system/app/GooglePrintRecommendationService/GooglePrintRecommendationService.apk \
system/lib/libRSSupport.so \
system/lib/libblasV8.so \
system/lib/librsjni.so \
system/lib64/libRSSupport.so \
system/lib64/libblasV8.so \
system/lib64/librsjni.so



