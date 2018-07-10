#!/bin/sh
echo "HDD 6 Wipe Started... $(date)" >> wipelog.txt
rm -rf HDD6.txt

if
omreport storage adisk controller=0 adisk=1:0:6 | grep Critical;

then

dd if=/dev/zero of=/dev/sdf bs=4096k;


omconfig storage vdisk action=deletevdisk controller=0 vdisk=5;

else

badblocks -vw -s -e10 -o HDD6.txt /dev/sdf

dd if=/dev/zero of=/dev/sdf bs=4096k;

omconfig storage vdisk action=deletevdisk controller=0 vdisk=5;

fi
echo "HDD 6 Wipe Complete... $(date)" >> wipelog.txt