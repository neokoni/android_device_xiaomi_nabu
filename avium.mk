# Avium UI
AVIUM_BUILDTYPE := Unofficial
AVIUM_VERSION_APPEND_TIME_OF_DAY := false
AVIUM_MAINTAINER := Neokoni
AVIUM_FORCE_SET_FAKE_PROP := true

# Feature
TARGET_FORCE_ENABLE_BLUR := true

# GMS
WITH_GMS := true
TARGET_INCLUDE_GOOGLEIME :=true
TARGET_GOOGLEIME_OVERRIDE_IME := true
TARGET_USES_GSANS := true

# Add our keys, enable release-key build
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/lineage-priv/keys/releasekey
PRODUCT_MAINLINE_BLUETOOTH_SEPOLICY_DEV_CERTIFICATES := $(dir $(PRODUCT_DEFAULT_DEV_CERTIFICATE))

# Updater
PRODUCT_PACKAGES += \
    Updater

PRODUCT_COPY_FILES += \
     vendor/avium/prebuilt/common/etc/init/init.avium-updater.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.avium-updater.rc
