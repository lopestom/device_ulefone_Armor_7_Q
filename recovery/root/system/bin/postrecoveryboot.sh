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

rm "/system/recovery-from-boot.p";
rm "/system_root/system/recovery-from-boot.p";
rm "/system/system/recovery-from-boot.p";

exit 0
