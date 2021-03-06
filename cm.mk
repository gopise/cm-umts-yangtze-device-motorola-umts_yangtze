# Inherit device configuration for VZW Droid RAZR.
$(call inherit-product, device/motorola/umts_yangtze/full_umts_yangtze.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_umts_yangtze
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := umts_yangtze
PRODUCT_MODEL := XT885
PRODUCT_MANUFACTURER := MOTO
PRODUCT_RELEASE_NAME := MOTOROLA RAZR V
PRODUCT_SFX := umts

# Private version string
PRODUCT_PRIVATE_PREFIX := GOPISE
PRODUCT_PRIVATE_VERNUM := v1.1
PRODUCT_PRIVATE_VER := $(PRODUCT_PRIVATE_PREFIX)-$(PRODUCT_PRIVATE_VERNUM)

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=${PRODUCT_DEVICE}_${PRODUCT_SFX} \
   BUILD_NUMBER=${DATE} \
   TARGET_DEVICE=${PRODUCT_DEVICE} \
   BUILD_FINGERPRINT=${PRODUCT_BRAND}/${PRODUCT_DEVICE}_${PRODUCT_SFX}/${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}:${PLATFORM_VERSION}/${BUILD_ID}/${DATE}:user/release-keys \
   PRIVATE_BUILD_DESC="${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}-user ${PLATFORM_VERSION} ${BUILD_ID} ${DATE} release-keys" \
   PRODUCT_BRAND=${PRODUCT_BRAND} \
   BUILD_UTC_DATE= \
   PRODUCT_DEFAULT_LANGUAGE=en \
   PRODUCT_DEFAULT_REGION=US \
