# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

$(call inherit-product, device/samsung/celoxdcm/full_celoxdcm.mk)

# Enhanced NFC
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# Inherit some common liquid stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SC-03D TARGET_DEVICE=SC-03D BUILD_FINGERPRINT="samsung/SC-03D/SC-03D:4.4/KRT16M/OMLPH:user/release-keys" PRIVATE_BUILD_DESC="SC-03D-user 4.4 KRT16M OMLPH release-keys"

PRODUCT_NAME := liquid_celoxdcm
PRODUCT_DEVICE := celoxdcm

