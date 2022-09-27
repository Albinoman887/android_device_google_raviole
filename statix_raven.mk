# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Inherit some common StatiX stuff.
$(call inherit-product, vendor/spark/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven_64.mk)

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
    system/lib64/librsjni.so \
    system/addon.d/50-lineage.sh \
    system/app/NfcNci/NfcNci.apk \
    system/app/NfcNci/lib/arm64/libnfc_nci_jni.so \
    system/app/googleconf/googleconf.apk \
    system/app/wellbeingconf/wellbeingconf.apk \
    system/bin/backuptool_ab.functions \
    system/bin/backuptool_ab.sh \
    system/bin/backuptool_postinstall.sh \
    system/bin/curl \
    system/bin/getcap \
    system/bin/procmem \
    system/bin/scp \
    system/bin/setcap \
    system/bin/sftp \
    system/bin/ssh \
    system/bin/ssh-keygen \
    system/bin/sshd \
    system/bin/start-ssh \
    system/etc/hosts.spark_adblock \
    system/etc/init/lineage-ssh.rc \
    system/etc/init/lineage-system.rc \
    system/etc/init/lineage-updates.rc \
    system/etc/libnfc-nci.conf \
    system/etc/permissions/android.software.nfc.beam.xml \
    system/etc/permissions/android.software.sip.voip.xml \
    system/etc/permissions/privapp-permissions-org.pixelexperience.faceunlock.xml \
    system/etc/permissions/privapp-permissions-spark.xml \
    system/etc/sensitive_pn.xml \
    system/etc/ssh/sshd_config \
    system/etc/sysconfig/backup.xml \
    system/etc/sysconfig/hiddenapi-whitelist-org.pixelexperience.faceunlock.xml \
    system/lib/libsepol.so \
    system/lib64/android.hardware.nfc@1.0.so \
    system/lib64/android.hardware.nfc@1.1.so \
    system/lib64/android.hardware.nfc@1.2.so \
    system/lib64/libnfc-nci.so \
    system/lib64/libnfc_nci_jni.so \
    system/lib64/libsepol.so \
    system/lib64/libssh.so \
    system/priv-app/GoogleExtServices/GoogleExtServices.apk \
    system/usr/keylayout/Vendor_045e_Product_0719.kl \
    system/etc/init/smartcharge-init.rc \
    system/fonts/RobotoFallback-VF.ttf \
    system/lib64/android.hardware.nfc-V1-ndk.so

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)

# Extra packages
PRODUCT_PACKAGES += \
    vendor.lineage.powershare@1.0-service.gs101

## Device identifier. This must come after all inclusions
PRODUCT_NAME := spark_raven
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=raven \
    PRIVATE_BUILD_DESC="raven-user 13 TP1A.220905.004 8927612 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)
