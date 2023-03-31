echo  Backup EFS1
echo --- STARTING ----
echo --- WAITING FOR DEVICE
adb wait-for-device
echo --- Backup EFS1 image ---
adb shell su -c "dd if=/dev/block/mmcblk0p13 of=/sdcard/EFS1.img bs=4096"
adb pull /sdcard/EFS1.img
echo --- Backup EFS2 image ---
adb shell su -c "dd if=/dev/block/mmcblk0p14 of=/sdcard/EFS2.img bs=4096"
adb pull /sdcard/EFS2.img
echo DONE!
