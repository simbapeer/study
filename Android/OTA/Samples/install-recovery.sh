#!/system/bin/sh
  log -t recovery "Before sha1.... Simba...."
if ! applypatch -c EMMC:/dev/block/mmcblk0p2:4642816:c125924fef5a1351c9041ac9e1d6fd1f9738ff77; then
  log -t recovery "Installing new recovery image__From Simba..."
  applypatch EMMC:/dev/block/mmcblk0p1:3870720:aee24fadd281e9e2bd4883ee9962a86fc345dcab EMMC:/dev/block/mmcblk0p2 c125924fef5a1351c9041ac9e1d6fd1f9738ff77 4642816 aee24fadd281e9e2bd4883ee9962a86fc345dcab:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed__From Simba..."
fi
