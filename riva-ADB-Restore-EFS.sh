echo  Restore EFS1
echo --- STARTING ----
echo --- WAITING FOR DEVICE
adb wait-for-device
echo --- Restore EFS1 image ---
adb push EFS1.img /sdcard/EFS1.img
adb shell su -c "dd if=/sdcard/EFS1.img of=/dev/block/mmcblk0p13 bs=4096"
echo --- Restore EFS2 image ---
adb push EFS2.img /sdcard/EFS2.img
adb shell su -c "dd if=/sdcard/EFS2.img of=/dev/block/mmcblk0p14 bs=4096"
echo DONE!
