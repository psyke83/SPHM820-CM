# inherit from the proprietary version
-include device/samsung/prevail/BoardConfigVendor.mk

# Camera
USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi

# Kernel
#TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/prevail/recovery_kernel
TARGET_PREBUILT_KERNEL := device/samsung/prevail/kernel
BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_CMDLINE := mem=336M console=ttyMSM2,115200 hw=9
BOARD_KERNEL_BASE := 0x13000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_PAGE_SIZE := 0x00001000

# Graphics
BOARD_EGL_CFG := device/samsung/prevail/files/lib/egl/egl.cfg
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_USE_SCREENCAP := true
BOARD_NO_RGBX_8888 := true

# cat /proc/LinuStoreIII/bmlinfo
# FSR VERSION: FSR_1.2.1p1_b139_RTM
# minor       position           size     units       id
#    1: 0x00000000-0x00180000 0x00180000      6        1
#    2: 0x00180000-0x00240000 0x000c0000      3        2
#    3: 0x00240000-0x00300000 0x000c0000      3        3
#    4: 0x00300000-0x01480000 0x01180000     70        4
#    5: 0x01480000-0x02100000 0x00c80000     50       23
#    6: 0x02100000-0x021c0000 0x000c0000      3       10
#    7: 0x021c0000-0x027c0000 0x00600000     24        5
#    8: 0x027c0000-0x029c0000 0x00200000      8        6
#    9: 0x029c0000-0x033c0000 0x00a00000     40        7
#   10: 0x033c0000-0x03dc0000 0x00a00000     40        8
#   11: 0x03dc0000-0x03e80000 0x000c0000      3        9
#   12: 0x03e80000-0x0e800000 0x0a980000    678       21
#   13: 0x0e800000-0x19100000 0x0a900000    676       22
#   14: 0x19100000-0x1f500000 0x06400000    400       24

# Recovery
BOARD_BML_BOOT := /dev/block/bml9
BOARD_BML_RECOVERY := /dev/block/bml10
TARGET_BOOTLOADER_BOARD_NAME := prevail
TARGET_OTA_ASSERT_DEVICE := SPH-M820
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_LDPI_RECOVERY := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 177733632
BOARD_USERDATAIMAGE_PARTITION_SIZE := 177209344
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_RECOVERY_INITRC := device/samsung/prevail/recovery.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/prevail/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/samsung/prevail/recovery/recovery_ui.c
TARGET_RECOVERY_PRE_COMMAND := "echo 3 > /proc/sys/vm/drop_caches; sync"
TARGET_USERIMAGES_USE_EXT4 := true

# Audio
TARGET_PROVIDES_LIBAUDIO := true

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL:=true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# GPS
BOARD_GPS_LIBRARIES := libsecgps libsecril-client
BOARD_USES_GPSSHIM := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 6225
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := prevail
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240
#BOARD_GPS_NEEDS_XTRA := true

# USB
BOARD_CUSTOM_USB_CONTROLLER := ../../device/samsung/prevail/UsbController.cpp
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun"
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# WiFi
BOARD_WLAN_DEVICE := dhd
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_6_X
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_APS_FIRMWARE_NAME := "bcm4329_aps.bin"
WIFI_DRIVER_STA_FIRMWARE_NAME := "bcm4329_sta.bin"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/bcm4329_sta.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/bcm4329_aps.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wifi/bcm4329_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_MFGDRV_MODULE_ARG := "firmware_path=/system/etc/wifi/bcm4329_mfg.bin nvram_path=/system/etc/wifi/nvram_mfg.txt"
WIFI_DRV_AP_MODULE_ARG := "firmware_path=/system/etc/wifi/bcm4329_aps.bin nvram_path=/system/etc/wifi/nvram_net.txt"
BOARD_WEXT_NO_COMBO_SCAN    := true

# 3G
# BOARD_MOBILEDATA_INTERFACE_NAME := "ppp0"

# JIT / Optimizations
WITH_DEXPREOPT := true
JS_ENGINE := v8

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm4329
BOARD_USE_BROADCOM_FM_VOLUME_HACK := true
#HAS_BCM20780 := true
#BOARD_GLOBAL_CFLAGS += -DHAS_BCM20780
