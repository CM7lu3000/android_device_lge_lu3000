$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/lu3000/lu3000-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/lu3000/overlay

#Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.lu3000.rc:root/init.rc \
    $(LOCAL_PATH)/ueventd.lu3000.rc:root/ueventd.rc \
    $(LOCAL_PATH)/init.omap.post_boot.sh:root/init.omap.post_boot.sh \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab

#Wifi Files(Config, Firmware, Module, ...etc)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/firmware.bin:system/etc/wifi/firmware.bin \
    $(LOCAL_PATH)/prebuilt/tiwlan_drv.ko:system/etc/wifi/tiwlan_drv.ko \
    $(LOCAL_PATH)/configs/tiwlan.ini:system/etc/wifi/tiwlan.ini \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/prebuilt/tiap_drv.ko:system/etc/wifi/softap/tiap_drv.ko \
    $(LOCAL_PATH)/prebuilt/firmware_ap.bin:system/etc/wifi/softap/firmware_ap.bin \
    $(LOCAL_PATH)/configs/hostapd.conf:system/etc/wifi/softap/hostapd.conf \
    $(LOCAL_PATH)/configs/tiwlan_ap.ini:system/etc/wifi/softap/tiwlan_ap.ini \
    $(LOCAL_PATH)/configs/udhcpdWlan.conf:system/etc/wifi/softap/udhcpdWlan.conf \
    $(LOCAL_PATH)/prebuilt/ap_start:system/etc/wifi/softap/scripts/ap_start \
    $(LOCAL_PATH)/prebuilt/ap_stop:system/etc/wifi/softap/scripts/ap_stop \
    $(LOCAL_PATH)/prebuilt/nat_start:system/etc/wifi/softap/scripts/nat_start

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_lu3000
PRODUCT_DEVICE := lu3000
