#!/bin/sh

mkdir -p ../../../vendor/samsung/prevail/proprietary

DIRS="
usr/keylayout/
usr/keychars/
lib/hw
bin
etc/firmware
etc/wifi
lib/egl


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

etc/firmware/yamato_pfp.fw
etc/firmware/yamato_pm4.fw

lib/liboemcamera.so
lib/libmmipl.so
lib/libmmjpeg.so

etc/wifi/bcm4329_aps.bin
etc/wifi/bcm4329_mfg.bin
etc/wifi/bcm4329_sta.bin
etc/wifi/nvram_mfg.txt
etc/wifi/nvram_net.txt

lib/liba2dp.so
lib/libaudioeq.so

bin/rild
bin/qmuxd
lib/libril.so
lib/libsec-ril.so
lib/libsecril-client.so
lib/libdiag.so

/bin/BCM4329B1_002.002.023.0746.0827.hcd

"

for FILE in $FILES; do
	adb pull system/$FILE ../../../vendor/samsung/prevail/proprietary/$FILE
done

