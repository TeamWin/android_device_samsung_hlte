ifneq ($(filter hlte,$(TARGET_DEVICE)),)
    include $(all-subdir-makefiles)
endif
