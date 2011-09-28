ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/prevail/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVidEnc \
    brcm_patchram_plus \
    abtfilt \
    gps.prevail \
    gralloc.prevail \
    copybit.prevail \
    lights.msm7k \
    screencap

# Recovery tools
PRODUCT_PACKAGES += \
    flash_image \
    dump_image \
    erase_image \
    make_ext4fs \
    e2fsck

# Boot screen
#PRODUCT_COPY_FILES += \
#    device/samsung/prevail/files/root/EUROPA.rle:root/SPH-M820.rle \
#    device/samsung/prevail/files/root/EUROPA.rle:recovery/root/SPH-M820.rle

# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni

# Hardware properties
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml
#    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
#    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Kernel modules
PRODUCT_COPY_FILES += \
    device/samsung/prevail/files/root/lib/modules/ext4.ko:root/lib/modules/ext4.ko \
    device/samsung/prevail/files/root/lib/modules/jbd2.ko:root/lib/modules/jbd2.ko \
    device/samsung/prevail/files/root/lib/modules/fsr.ko:root/lib/modules/fsr.ko \
    device/samsung/prevail/files/root/lib/modules/fsr_stl.ko:root/lib/modules/fsr_stl.ko \
    device/samsung/prevail/files/root/lib/modules/rfs_glue.ko:recovery/root/lib/modules/rfs_glue.ko \
    device/samsung/prevail/files/root/lib/modules/rfs_fat.ko:recovery/root/lib/modules/rfs_fat.ko \
    device/samsung/prevail/files/root/lib/modules/sec_param.ko:root/lib/modules/sec_param.ko \

# Recovery kernel modules / files
PRODUCT_COPY_FILES += \
    device/samsung/prevail/files/root/lib/modules/ext4.ko:root/lib/modules/ext4.ko \
    device/samsung/prevail/files/root/lib/modules/jbd2.ko:root/lib/modules/jbd2.ko \
    device/samsung/prevail/files/root/lib/modules/fsr.ko:root/lib/modules/fsr.ko \
    device/samsung/prevail/files/root/lib/modules/fsr_stl.ko:root/lib/modules/fsr_stl.ko \
    device/samsung/prevail/files/root/lib/modules/rfs_glue.ko:recovery/root/lib/modules/rfs_glue.ko \
    device/samsung/prevail/files/root/lib/modules/rfs_fat.ko:recovery/root/lib/modules/rfs_fat.ko \
    device/samsung/prevail/recovery.fstab_full:recovery/root/etc/recovery.fstab \
    device/samsung/prevail/files/bin/fat.format:recovery/root/sbin/fat.format

# Device-specific keymaps
PRODUCT_COPY_FILES += \
    vendor/samsung/prevail/proprietary/usr/keylayout/vino-headset.kl:system/usr/keylayout/vino-headset.kl \
    vendor/samsung/prevail/proprietary/usr/keylayout/vino-keypad.kl:system/usr/keylayout/vino-keypad.kl \
    vendor/samsung/prevail/proprietary/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    vendor/samsung/prevail/proprietary/usr/keychars/vino-keypad.kcm.bin:system/usr/keychars/vino-keypad.kcm.bin

# Board-specific init
PRODUCT_COPY_FILES += \
    device/samsung/prevail/files/ueventd.sph-m820.rc:root/ueventd.sph-m820.rc \
    device/samsung/prevail/files/init.sph-m820.rc:root/init.sph-m820.rc \
    device/samsung/prevail/files/bin/get_macaddrs:system/bin/get_macaddrs \
    device/samsung/prevail/files/bin/mad2sd:system/bin/mad2sd \
    device/samsung/prevail/files/etc/sysctl.conf:system/etc/sysctl.conf \
    device/samsung/prevail/files/etc/init.d/02prevail:system/etc/init.d/02prevail

# Sensors
PRODUCT_COPY_FILES += \
    vendor/samsung/prevail/proprietary/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \
    vendor/samsung/prevail/proprietary/bin/memsicd:system/bin/memsicd

# 3D
PRODUCT_COPY_FILES += \
    device/samsung/prevail/files/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/samsung/prevail/files/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/samsung/prevail/files/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/samsung/prevail/files/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/samsung/prevail/files/lib/libgsl.so:system/lib/libgsl.so \
    vendor/samsung/prevail/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/samsung/prevail/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

	# Camera
PRODUCT_COPY_FILES += \
    vendor/samsung/prevail/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/samsung/prevail/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/samsung/prevail/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so

# Wifi
PRODUCT_COPY_FILES += \
    device/samsung/prevail/files/etc/wifi/bcm4329_aps.bin:system/etc/wifi/bcm4329_aps.bin \
    device/samsung/prevail/files/etc/wifi/bcm4329_mfg.bin:system/etc/wifi/bcm4329_mfg.bin \
    device/samsung/prevail/files/etc/wifi/bcm4329_sta.bin:system/etc/wifi/bcm4329_sta.bin \
    device/samsung/prevail/files/etc/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
    device/samsung/prevail/files/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    device/samsung/prevail/files/etc/wifi/dhd.ko:system/etc/wifi/dhd.ko \
    device/samsung/prevail/files/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf \
    device/samsung/prevail/files/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/samsung/prevail/files/etc/dhcpd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/samsung/prevail/files/bin/dhcpcd:system/bin/dhcpcd

# SD Card
PRODUCT_COPY_FILES += \
    device/samsung/prevail/files/etc/vold.fstab:system/etc/vold.fstab

# Media configuration xml file
PRODUCT_COPY_FILES += \
    device/samsung/prevail/files/etc/media_profiles.xml:/system/etc/media_profiles.xml

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/prevail/files/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    vendor/samsung/prevail/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \
    vendor/samsung/prevail/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
    device/samsung/prevail/files/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# Samsung RIL
PRODUCT_COPY_FILES += \
    vendor/samsung/prevail/proprietary/bin/rild:system/bin/rild \
    vendor/samsung/prevail/proprietary/bin/qmuxd:system/bin/qmuxd \
    vendor/samsung/prevail/proprietary/lib/libril.so:system/lib/libril.so \
    vendor/samsung/prevail/proprietary/lib/libsec-ril.so:system/lib/libsec-ril.so \
    vendor/samsung/prevail/proprietary/lib/libsecril-client.so:system/lib/libsecril-client.so \
    vendor/samsung/prevail/proprietary/lib/libdiag.so:system/lib/libdiag.so

# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/samsung/prevail/proprietary/bin/BCM4329B1_002.002.023.0746.0827.hcd:system/bin/BCM4329B1_002.002.023.0746.0827.hcd

# OMX libraries
PRODUCT_COPY_FILES += \
    device/samsung/prevail/files/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    device/samsung/prevail/files/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \
    device/samsung/prevail/files/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    device/samsung/prevail/files/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    device/samsung/prevail/files/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    device/samsung/prevail/files/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so \
    device/samsung/prevail/files/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    device/samsung/prevail/files/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    device/samsung/prevail/files/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    device/samsung/prevail/files/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    device/samsung/prevail/files/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
    device/samsung/prevail/files/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \
    device/samsung/prevail/files/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
    device/samsung/prevail/files/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \
    device/samsung/prevail/files/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    device/samsung/prevail/files/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    device/samsung/prevail/files/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    device/samsung/prevail/files/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    device/samsung/prevail/files/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \
    device/samsung/prevail/files/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    device/samsung/prevail/files/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    device/samsung/prevail/files/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
    device/samsung/prevail/files/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \
    device/samsung/prevail/files/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so


$(call inherit-product, build/target/product/full_base.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Include GSM stuff
#$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Broadcom FM radio
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

$(call inherit-product-if-exists, vendor/samsung/prevail/prevail-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/prevail/overlay
$(call inherit-product-if-exists, device/samsung/prevail/prevail-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/prevail/overlay

# LDPI assets
PRODUCT_LOCALES += ldpi mdpi
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi
PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=CyanogenMod-7.1.0-RC1-VAccAR

PRODUCT_NAME := full_prevail
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := prevail
PRODUCT_MODEL := SPH-M820
PRODUCT_MANUFACTURER := samsung
