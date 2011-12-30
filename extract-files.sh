#!/bin/sh

mkdir -p ../../../vendor/huawei/u8120/proprietary

DIRS="
bin
etc
lib/hw
"
for DIR in $DIRS; do
	mkdir -p ../../../vendor/huawei/u8120/proprietary/$DIR
done

FILES="
bin/modempre
bin/oem_rpc_svc
bin/akmd2
bin/qmuxd
bin/hci_qcomm_init
bin/rild

lib/libaudio.so
lib/libaudioeq.so
lib/libOmxCore.so
lib/libOmxH264Dec.so
lib/libOmxMpeg4Dec.so
lib/libOmxVidEnc.so
lib/libOmxWmvDec.so
lib/libmm-adspsvc.so
lib/libmm-omxcore.so
lib/libsnd.so
lib/libauth.so
lib/libril-qc-1.so
lib/libril.so
lib/liboncrpc.so
lib/libdsm.so
lib/libqueue.so
lib/libcm.so
lib/libdiag.so
lib/libmmgsdilib.so
lib/libgsdi_exp.so
lib/libgstk_exp.so
lib/libwms.so
lib/libnv.so
lib/libwmsts.so
lib/libril-qcril-hook-oem.so
lib/libdss.so
lib/libdll.so
lib/libqmi.so
lib/libpbmlib.so
lib/libhwrpc.so
lib/liboem_rapi.so

lib/hw/sensors.default.so
lib/hw/lights.msm7k.so

lib/libomx_aacdec_sharedlibrary.so
lib/libomx_amrdec_sharedlibrary.so
lib/libomx_amrenc_sharedlibrary.so
lib/libomx_avcdec_sharedlibrary.so
lib/libomx_m4vdec_sharedlibrary.so
lib/libomx_mp3dec_sharedlibrary.so
lib/libomx_sharedlibrary.so
lib/libomx_sharedlibrary_qc.so

etc/init.qcom.bt.sh
"
for FILE in $FILES; do
	adb pull system/$FILE ../../../vendor/huawei/u8120/proprietary/
done

chmod 755 ../../../vendor/huawei/u8120/proprietary/modempre
chmod 755 ../../../vendor/huawei/u8120/proprietary/oem_rpc_svc
chmod 755 ../../../vendor/huawei/u8120/proprietary/akmd2
chmod 755 ../../../vendor/huawei/u8120/proprietary/qmuxd
chmod 755 ../../../vendor/huawei/u8120/proprietary/hci_qcomm_init
chmod 755 ../../../vendor/huawei/u8120/proprietary/rild
