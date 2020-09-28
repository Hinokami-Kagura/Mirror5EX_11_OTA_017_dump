#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:12934444:e745024f75d3ae0ea9cc75636ef20ed36f044f71; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:9674024:efc7610db2cb9af98f7fd2cf22f59ebb7122c97a EMMC:/dev/block/bootdevice/by-name/recovery e745024f75d3ae0ea9cc75636ef20ed36f044f71 12934444 efc7610db2cb9af98f7fd2cf22f59ebb7122c97a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
