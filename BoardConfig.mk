USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/lu3000/BoardConfigVendor.mk


#Compile-Kernel Option
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := true



#Board Config
TARGET_BOARD_PLATFORM := omap3

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_PROVIDES_INIT_RC := true
OMAP_ENHANCEMENT := true
BOARD_USES_UBOOT := true
TARGET_BOOTLOADER_BOARD_NAME := lu3000



#Graphic
ifdef OMAP_ENHANCEMENT
COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT -DTARGET_OMAP3
endif
COMMON_GLOBAL_CFLAGS += -DOVERLAY_NUM_REQBUFFERS=6



#OMX, CAMERA Setting
BOARD_USES_TI_CAMERA_HAL := true
HARDWARE_OMX := true
ifdef HARDWARE_OMX
OMX_JPEG := true
OMX_VENDOR := ti
OMX_VENDOR_INCLUDES := \
   hardware/ti/omx/system/src/openmax_il/omx_core/inc \
   hardware/ti/omx/image/src/openmax_il/jpeg_enc/inc
OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
BOARD_OPENCORE_LIBRARIES := libOMX_Core
BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1
BOARD_CAMERA_LIBRARIES := libcamera
endif



#etc setting
BOARD_NEEDS_CUTILS_LOG := true
BOARD_EGL_CFG := device/lge/lu3000/configs/egl.cfg



#Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_FM_RADIO := true
COMMON_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#If Bluetooth Don't work, Add CUSTOM_BLUEDROID_OPTION for RFKILL.
BOARD_CUSTOM_BLUEDROID := ../../../device/lge/lu3000/bluetooth.c


#Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_TI_OMAP_MODEM_AUDIO := true


#Wifi
BOARD_WLAN_DEVICE           := wl1271
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
WIFI_DRIVER_MODULE_PATH     := "/system/etc/wifi/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_NAME     := tiwlan_drv
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/firmware.bin"
WIFI_FIRMWARE_LOADER        := wlan_loader
PRODUCT_WIRELESS_TOOLS      := true

BOARD_SOFTAP_DEVICE         := wl1271
AP_CONFIG_DRIVER_WILINK     := true
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/softap/firmware_ap.bin"
WPA_SUPPL_APPROX_USE_RSSI   := true
WIFI_AP_DRIVER_MODULE_PATH  := "/system/etc/wifi/softap/tiap_drv.ko"
WIFI_AP_DRIVER_MODULE_NAME  := tiap_drv
WIFI_AP_FIRMWARE_LOADER     := wlan_ap_loader
BOARD_HOSTAPD_DRIVER        := true
BOARD_HOSTAPD_DRIVER_NAME   := wilink


# fix this up by examining /proc/mtd on a running device
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x25800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x15040000
BOARD_FLASH_BLOCK_SIZE := 0x00040000


#Charger Mode Setting.
BOARD_GLOBAL_CFLAGS += -DCHARGERMODE_CMDLINE_NAME='"rs"' -DCHARGERMODE_CMDLINE_VALUE='"c"'
#Based on p970.... Able? Unable?
