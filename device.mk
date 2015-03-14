$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/hlte/hlte-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/hlte/overlay

LOCAL_PATH := device/samsung/hlte
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

$(shell mkdir -p out/target/product/hlte/recovery/root/vendor/firmware/keymaster)
$(shell mkdir -p out/target/product/hlte/recovery/root/vendor/lib/hw)

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.qcom:recovery/root/fstab.qcom

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/selinux/file_contexts:recovery/root/prebuilt_file_contexts \
    $(LOCAL_PATH)/recovery/keymaster.b00:recovery/root/vendor/firmware/keymaster/keymaster.b00 \
    $(LOCAL_PATH)/recovery/keymaster.b01:recovery/root/vendor/firmware/keymaster/keymaster.b01 \
    $(LOCAL_PATH)/recovery/keymaster.b02:recovery/root/vendor/firmware/keymaster/keymaster.b02 \
    $(LOCAL_PATH)/recovery/keymaster.b03:recovery/root/vendor/firmware/keymaster/keymaster.b03 \
    $(LOCAL_PATH)/recovery/keymaster.mdt:recovery/root/vendor/firmware/keymaster/keymaster.mdt \
    $(LOCAL_PATH)/recovery/cmnlib.b00:recovery/root/vendor/firmware/cmnlib.b00 \
    $(LOCAL_PATH)/recovery/cmnlib.b01:recovery/root/vendor/firmware/cmnlib.b01 \
    $(LOCAL_PATH)/recovery/cmnlib.b02:recovery/root/vendor/firmware/cmnlib.b02 \
    $(LOCAL_PATH)/recovery/cmnlib.b03:recovery/root/vendor/firmware/cmnlib.b03 \
    $(LOCAL_PATH)/recovery/cmnlib.mdt:recovery/root/vendor/firmware/cmnlib.mdt \
    $(LOCAL_PATH)/recovery/libQSEEComAPI.so:recovery/root/vendor/lib/libQSEEComAPI.so
    $(LOCAL_PATH)/recovery/keystore.msm8974.so:recovery/root/vendor/lib/hw/keystore.msm8974.so


$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := samsung_hlte
PRODUCT_BRAND := Samsung
