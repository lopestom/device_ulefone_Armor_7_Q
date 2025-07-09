#!/system/bin/sh

umount /system_root
umount /product
umount /vendor

mount -o rw /system_root
mount -o rw /product
mount -o rw /vendor

/bin/blockdev --setrw /dev/block/mapper/system_root
/bin/blockdev --setrw /dev/block/mapper/system
/bin/blockdev --setrw /dev/block/mapper/product
/bin/blockdev --setrw /dev/block/mapper/vendor

rm "/vendor/recovery-from-boot.p";
rm "/vendor/install-recovery.sh";
rm "/vendor/etc/init/vendor_flash_recovery.rc";
rm "/system/etc/init/recovery-persist.rc";
rm "/system/bin/recovery-persist";

exit 0
