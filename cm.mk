# Release name
PRODUCT_RELEASE_NAME := hlte

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/hlte/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hlte
PRODUCT_NAME := cm_hlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := hlte
PRODUCT_MANUFACTURER := samsung
