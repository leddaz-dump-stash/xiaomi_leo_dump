#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:26527054:8dd42eb7c6063f6890cbd278c048564a91a7f03f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:24196426:f7325cadf0981a974b0a5601666b375c3b49f186 EMMC:/dev/block/bootdevice/by-name/recovery 8dd42eb7c6063f6890cbd278c048564a91a7f03f 26527054 f7325cadf0981a974b0a5601666b375c3b49f186:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
