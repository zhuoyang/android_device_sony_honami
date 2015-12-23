# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/honami/overlay-crdroid

# Inherit AOSP Rhine device parts
$(call inherit-product, device/sony/honami/aosp_c6903.mk)

# Inherit crDroid Rhine device parts
$(call inherit-product, device/sony/rhine/device2.mk)

## crDroid Parts ##
# Inherit crDroid common Phone stuff.
$(call inherit-product, vendor/crdroid/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/crdroid/config/nfc_enhanced.mk)
## End crDroid Parts ##

# Recovery
PRODUCT_COPY_FILES += \
    device/sony/honami/bootrec-device:root/sbin/bootrec-device

# Fingerprint for Honami
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6903
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/C6903/C6903:5.0.2/14.5.A.0.270/3750474323:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="C6903-user 5.0.2 14.5.A.0.270 3750474323 release-keys"

# Override Product Name for crDroid
PRODUCT_NAME := crdroid_honami
PRODUCT_MODEL := Xperia Z1

# Assert
TARGET_OTA_ASSERT_DEVICE := C6902,C6903,C6906,C6943,honami
