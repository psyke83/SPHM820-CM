#!/bin/sh

mkdir -p ../../../vendor/samsung/prevail/proprietary

DIRS="
usr
usr/keylayout/
usr/keychars/
lib
lib/hw
lib/egl
bin
etc
etc/bluetooth
etc/dhcpcd
etc/dhcpcd/dhcpcd-hooks
etc/firmware
etc/permissions
etc/ppp
etc/wifi
framework


"

for DIR in $DIRS; do
	mkdir -p ../../../vendor/samsung/prevail/proprietary/$DIR
done

FILES="

usr/keylayout/vino-headset.kl
usr/keylayout/vino-keypad.kl
usr/keylayout/qwerty.kl
usr/keychars/vino-keypad.kcm.bin

lib/hw/sensors.default.so
bin/memsicd

lib/egl/libEGL_adreno200.so
lib/egl/libGLESv1_CM_adreno200.so
lib/egl/libGLESv2_adreno200.so
lib/egl/libq3dtools_adreno200.so
lib/libgsl.so

etc/firmware/yamato_pfp.fw
etc/firmware/yamato_pm4.fw

lib/liboemcamera.so
lib/libmmipl.so
lib/libmmjpeg.so

etc/dhcpcd/dhcpcd.conf
etc/wifi/bcm4329_sta.bin
etc/wifi/bcm4329_mfg.bin
etc/wifi/bcm4329_aps.bin
etc/wifi/nvram_mfg.txt
etc/wifi/nvram_net.txt
etc/wifi/wifi.conf
bin/mfgloader
bin/wlservice
lib/libwlservice.so
lib/libwlandut.so

etc/apns-conf.xml

etc/vold.fstab

etc/AudioFilter.csv
lib/liba2dp.so
lib/libaudioeq.so
etc/AutoVolumeControl.txt

bin/rild
bin/rilclient-test
bin/qmuxd
lib/libril.so
lib/libsec-ril.so
lib/libsecril-client.so
lib/libreference-ril.so
lib/libdiag.so

bin/BCM4329B1_002.002.023.0746.0827.hcd
etc/bluetooth/audio.conf
etc/bluetooth/auto_pairing.conf
etc/bluetooth/blacklist.conf
etc/bluetooth/input.conf
etc/bluetooth/input.conf

lib/libmm-adspsvc.so
lib/libomx_amrenc_sharedlibrary.so
lib/libOmxEvrcEnc.so
lib/libOmxWmaDec.so
lib/libOmxH264Dec.so
lib/libomx_sharedlibrary.so
lib/libOmxQcelp13Enc.so
lib/libOmxMp3Dec.so
lib/libOmxAacEnc.so
lib/libOmxAmrDec.so
lib/libOmxAdpcmDec.so
lib/libomx_m4vdec_sharedlibrary.so
lib/libOmxWmvDec.so
lib/libomx_amrdec_sharedlibrary.so
lib/libOmxAacDec.so
lib/libOmxAmrEnc.so
lib/libOmxEvrcDec.so
lib/libOmxAmrRtpDec.so
lib/libomx_mp3dec_sharedlibrary.so
lib/libOmxAmrwbDec.so
lib/libOmxMpeg4Dec.so
lib/libOmxQcelpDec.so
lib/libomx_aacdec_sharedlibrary.so
lib/libomx_avcdec_sharedlibrary.so

lib/liblog.so
bin/logcat
bin/logwrapper

etc/init.cdma-pppd
etc/init.gprs-pppd
etc/ppp/chap-secrets
etc/ppp/ip-down
etc/ppp/ip-up
etc/ppp/ip-up-vpn
etc/ppp/options
etc/ppp/pap-secrets
bin/pppd
bin/pppd_runner

lib/libloc_api.so
lib/libsecgps.so
lib/librpc.so
lib/liboncrpc.so
lib/libcommondefs.so
etc/gps.conf

"

for FILE in $FILES; do
	adb pull system/$FILE ../../../vendor/samsung/prevail/proprietary/$FILE
done

