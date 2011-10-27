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
    gps.prevail \
    gralloc.prevail \
    copybit.prevail \
    lights.msm7k \
    screencap \
    libsecgps.so \
    libsec-ril.so \
    libsecril-client.so

# Recovery tools
PRODUCT_PACKAGES += \
    flash_image \
    dump_image \
    erase_image \
    make_ext4fs \
    e2fsck

# Boot screen
#PRODUCT_COPY_FILES += \
#    device/samsung/prevail/files/root/SPH-M820.rle:root/SPH-M820.rle \
#    device/samsung/prevail/files/root/SPH-M820.rle:recovery/root/SPH-M820.rle

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
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml


# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Kernel modules
PRODUCT_COPY_FILES += \
    device/samsung/prevail/files/root/lib/modules/ext4.ko:root/lib/modules/ext4.ko \
    device/samsung/prevail/files/root/lib/modules/jbd2.ko:root/lib/modules/jbd2.ko \
    device/samsung/prevail/files/root/lib/modules/fsr.ko:root/lib/modules/fsr.ko \
    device/samsung/prevail/files/root/lib/modules/fsr_stl.ko:root/lib/modules/fsr_stl.ko \
    device/samsung/prevail/files/root/lib/modules/sec_param.ko:root/lib/modules/sec_param.ko \

# Recovery kernel modules / files
PRODUCT_COPY_FILES += \
    device/samsung/prevail/files/root/lib/modules/ext4.ko:root/lib/modules/ext4.ko \
    device/samsung/prevail/files/root/lib/modules/jbd2.ko:root/lib/modules/jbd2.ko \
    device/samsung/prevail/files/root/lib/modules/fsr.ko:root/lib/modules/fsr.ko \
    device/samsung/prevail/files/root/lib/modules/fsr_stl.ko:root/lib/modules/fsr_stl.ko \
    device/samsung/prevail/files/root/lib/modules/sec_param.ko:root/lib/modules/sec_param.ko \
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


# Sensors
PRODUCT_COPY_FILES += \
    vendor/samsung/prevail/proprietary/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \
    vendor/samsung/prevail/proprietary/bin/memsicd:system/bin/memsicd

# 3D
PRODUCT_COPY_FILES += \
    vendor/samsung/prevail/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/samsung/prevail/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/samsung/prevail/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/samsung/prevail/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/samsung/prevail/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    vendor/samsung/prevail/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/samsung/prevail/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# Camera
PRODUCT_COPY_FILES += \
    vendor/samsung/prevail/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/samsung/prevail/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/samsung/prevail/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so

# Wifi
PRODUCT_COPY_FILES += \
    device/samsung/prevail/files/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
    device/samsung/prevail/files/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    vendor/samsung/prevail/proprietary/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    vendor/samsung/prevail/proprietary/etc/wifi/bcm4329_sta.bin:system/etc/wifi/bcm4329_sta.bin \
    vendor/samsung/prevail/proprietary/etc/wifi/bcm4329_mfg.bin:system/etc/wifi/bcm4329_mfg.bin \
    vendor/samsung/prevail/proprietary/etc/wifi/bcm4329_aps.bin:system/etc/wifi/bcm4329_aps.bin \
    vendor/samsung/prevail/proprietary/etc/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
    vendor/samsung/prevail/proprietary/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    vendor/samsung/prevail/proprietary/etc/wifi/wifi.conf:system/etc/wifi/wifi.conf \
    vendor/samsung/prevail/proprietary/bin/mfgloader:system/bin/mfgloader \
    vendor/samsung/prevail/proprietary/bin/wlservice:system/bin/wlservice \
    vendor/samsung/prevail/proprietary/lib/libwlservice.so:system/lib/libwlservice.so \
    vendor/samsung/prevail/proprietary/lib/libwlandut.so:system/lib/libwlandut.so

#APN
PRODUCT_COPY_FILES += \
    vendor/samsung/prevail/proprietary/etc/apns-conf.xml:system/etc/apns-conf.xml

# SD Card
PRODUCT_COPY_FILES += \
    vendor/samsung/prevail/proprietary/etc/vold.fstab:system/etc/vold.fstab

# Media configuration xml file
PRODUCT_COPY_FILES += \
    device/samsung/prevail/files/etc/media_profiles.xml:/system/etc/media_profiles.xml

# Audio
PRODUCT_COPY_FILES += \
    vendor/samsung/prevail/proprietary/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    vendor/samsung/prevail/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \
    vendor/samsung/prevail/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
    vendor/samsung/prevail/proprietary/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# Samsung RIL
PRODUCT_COPY_FILES += \
    vendor/samsung/prevail/proprietary/bin/rild:system/bin/rild \
    vendor/samsung/prevail/proprietary/bin/rilclient-test:system/bin/rilclient-test \
    vendor/samsung/prevail/proprietary/bin/qmuxd:system/bin/qmuxd \
    vendor/samsung/prevail/proprietary/lib/libreference-ril.so:system/lib/libreference-ril.so \
    vendor/samsung/prevail/proprietary/lib/libdiag.so:system/lib/libdiag.so

# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/samsung/prevail/proprietary/bin/BCM4329B1_002.002.023.0746.0827.hcd:system/bin/BCM4329B1_002.002.023.0746.0827.hcd
#    vendor/samsung/prevail/proprietary/etc/bluetooth/audio.conf:system/etc/bluetooth/audio.conf \
#    vendor/samsung/prevail/proprietary/etc/bluetooth/auto_pairing.conf:system/etc/bluetooth/auto_pairing.conf \
#    vendor/samsung/prevail/proprietary/etc/bluetooth/blacklist.conf:system/etc/bluetooth/blacklist.conf \
#    vendor/samsung/prevail/proprietary/etc/bluetooth/input.conf:system/etc/bluetooth/input.conf \
#    vendor/samsung/prevail/proprietary/etc/bluetooth/input.conf:system/etc/bluetooth/input.conf 




# OMX libraries
PRODUCT_COPY_FILES += \
    vendor/samsung/prevail/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/samsung/prevail/proprietary/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \
    vendor/samsung/prevail/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    vendor/samsung/prevail/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    vendor/samsung/prevail/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/samsung/prevail/proprietary/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so \
    vendor/samsung/prevail/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    vendor/samsung/prevail/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    vendor/samsung/prevail/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    vendor/samsung/prevail/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    vendor/samsung/prevail/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
    vendor/samsung/prevail/proprietary/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \
    vendor/samsung/prevail/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
    vendor/samsung/prevail/proprietary/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \
    vendor/samsung/prevail/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    vendor/samsung/prevail/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    vendor/samsung/prevail/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    vendor/samsung/prevail/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    vendor/samsung/prevail/proprietary/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \
    vendor/samsung/prevail/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    vendor/samsung/prevail/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/samsung/prevail/proprietary/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
    vendor/samsung/prevail/proprietary/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \
    vendor/samsung/prevail/proprietary/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so

# Fix Logcat
PRODUCT_COPY_FILES += \
    vendor/samsung/prevail/proprietary/lib/liblog.so:system/lib/liblog.so \
    vendor/samsung/prevail/proprietary/bin/logcat:system/bin/logcat \
    vendor/samsung/prevail/proprietary/bin/logwrapper:system/bin/logwrapper

# 3G PPP
PRODUCT_COPY_FILES += \
    vendor/samsung/prevail/proprietary/etc/init.cdma-pppd:system/etc/init.cdma-pppd \
    vendor/samsung/prevail/proprietary/etc/init.gprs-pppd:system/etc/init.gprs-pppd \
    vendor/samsung/prevail/proprietary/etc/ppp/chap-secrets:system/etc/ppp/chap-secrets \
    vendor/samsung/prevail/proprietary/etc/ppp/ip-down:system/etc/ppp/ip-down \
    vendor/samsung/prevail/proprietary/etc/ppp/ip-up:system/etc/ppp/ip-up \
    vendor/samsung/prevail/proprietary/etc/ppp/ip-up-vpn:system/etc/ppp/ip-up-vpn \
    vendor/samsung/prevail/proprietary/etc/ppp/options:system/etc/ppp/options \
    vendor/samsung/prevail/proprietary/etc/ppp/pap-secrets:system/etc/ppp/pap-secrets \
    vendor/samsung/prevail/proprietary/bin/pppd:system/bin/pppd \
    vendor/samsung/prevail/proprietary/bin/pppd_runner:system/bin/pppd_runner

# GPS
PRODUCT_COPY_FILES += \
    vendor/samsung/prevail/proprietary/lib/libloc_api.so:system/lib/libloc_api.so \
    vendor/samsung/prevail/proprietary/lib/librpc.so:system/lib/librpc.so \
    vendor/samsung/prevail/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/samsung/prevail/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so \
    vendor/samsung/prevail/proprietary/etc/gps.conf:system/etc/gps.conf

$(call inherit-product, build/target/product/full_base.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)


# Broadcom FM radio
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

$(call inherit-product-if-exists, vendor/samsung/prevail/prevail-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/prevail/overlay

# LDPI assets
PRODUCT_LOCALES += ldpi mdpi
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi
PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=CyanogenMod-7.1.0-HROARK

PRODUCT_NAME := full_prevail
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := prevail
PRODUCT_MODEL := SPH-M820
PRODUCT_MANUFACTURER := samsung
