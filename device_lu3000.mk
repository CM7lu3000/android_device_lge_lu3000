$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/lu3000/lu3000-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/lu3000/overlay

## Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.lu3000.rc:root/init.rc \
    $(LOCAL_PATH)/ueventd.lu3000.rc:root/ueventd.rc \
    $(LOCAL_PATH)/init.omap.post_boot.sh:root/init.omap.post_boot.sh \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab

# RIL stuffs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.vsnet:system/etc/init.vsnet \
    $(LOCAL_PATH)/init_lgt.vsnet:system/etc/init_lgt.vsnet

## Charger Mode files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_01.rle:root/chargerimages/battery_charging_01.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_02.rle:root/chargerimages/battery_charging_02.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_03.rle:root/chargerimages/battery_charging_03.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_04.rle:root/chargerimages/battery_charging_04.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_05.rle:root/chargerimages/battery_charging_05.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_06.rle:root/chargerimages/battery_charging_06.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_very_low.rle:root/chargerimages/battery_very_low.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_wait_01.rle:root/chargerimages/battery_wait_01.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_wait_02.rle:root/chargerimages/battery_wait_02.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/black_bg.rle:root/chargerimages/black_bg.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/charger_background.rle:root/chargerimages/charger_background.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/dummy_battery.rle:root/chargerimages/dummy_battery.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/lockscreen_charge_ani_no_battery.rle:root/chargerimages/lockscreen_charge_ani_no_battery.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/white_lg_logo.rle:root/chargerimages/white_lg_logo.rle \
    $(LOCAL_PATH)/chargemode/chargerlogo:root/sbin/chargerlogo

## KeyLayout Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/configs/Broadcom_Bluetooth_HID.kl:system/usr/keylayout/Broadcom_Bluetooth_HID.kl \
    $(LOCAL_PATH)/configs/TWL4030_Keypad.kl:system/usr/keylayout/TWL4030_Keypad.kl \
    $(LOCAL_PATH)/configs/hub_synaptics_touch.kl:system/usr/keylayout/hub_synaptics_touch.kl \
    $(LOCAL_PATH)/configs/twl4030_pwrbutton.kl:system/usr/keylayout/twl4030_pwrbutton.kl

## Wifi Files(Config, Firmware, Module, ...etc)
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

## Alsa configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/asound.conf:system/etc/asound.conf

## GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps_brcm_conf.xml:system/etc/gps_brcm_conf.xml

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/platform.xml:system/etc/permissions/platform.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

## Product Packages
PRODUCT_PACKAGES += \
    libskiahw \
    overlay.lu3000 \
    alsa.lu3000 \
    acoustics.default \
    libaudiomodemgeneric \
    prb \
    wifimac

# OMX components
PRODUCT_PACKAGES += \
    libbridge \
    cexec.out \
    libOMX_Core \
    libLCML \
    libOMX.TI.Video.Decoder \
    libOMX.TI.Video.encoder \
    libOMX.TI.WBAMR.decode \
    libOMX.TI.AAC.encode \
    libOMX.TI.G722.decode \
    libOMX.TI.MP3.decode \
    libOMX.TI.WMA.decode \
    libOMX.TI.Video.encoder \
    libOMX.TI.WBAMR.encode \
    libOMX.TI.G729.encode \
    libOMX.TI.AAC.decode \
    libOMX.TI.VPP \
    libOMX.TI.G711.encode \
    libOMX.TI.JPEG.encoder \
    libOMX.TI.G711.decode \
    libOMX.TI.ILBC.decode \
    libOMX.TI.ILBC.encode \
    libOMX.TI.AMR.encode \
    libOMX.TI.G722.encode \
    libOMX.TI.JPEG.decoder \
    libOMX.TI.G726.encode \
    libOMX.TI.G729.decode \
    libOMX.TI.Video.Decoder \
    libOMX.TI.AMR.decode \
    libOMX.TI.G726.decode

# OpenMAX IL configuration
TI_OMX_POLICY_MANAGER := hardware/ti/omx/system/src/openmax_il/omx_policy_manager
PRODUCT_COPY_FILES += \
    $(TI_OMX_POLICY_MANAGER)/src/policytable.tbl:system/etc/policytable.tbl \
    $(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_PACKAGES += \
    libomap_mm_library_jni

FRAMEWORKS_BASE_SUBDIRS += \
    $(addsuffix /java, omapmmlib )

$(call inherit-product, build/target/product/full.mk)


PRODUCT_LOCALES += hdpi

#Korea
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=9

PRODUCT_NAME := full_lu3000
PRODUCT_DEVICE := lu3000
PRODUCT_MODEL := LG Optimus Mach
