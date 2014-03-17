# Release name
PRODUCT_RELEASE_NAME := hlte

# Inherit device configuration
$(call inherit-product, device/samsung/hlte/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hlte
PRODUCT_NAME := omni_hlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := hlte
PRODUCT_MANUFACTURER := samsung
