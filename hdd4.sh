#!/bin/sh
echo "HDD 4 Wipe Started... $(date)" >> wipelog.txt
rm -rf HDD4.txt

if
omreport storage adisk controller=0 adisk=1:0:4 | grep --silent Critical;

then

dd if=/dev/zero of=/dev/sdd bs=4096k;


omconfig storage vdisk action=deletevdisk controller=0 vdisk=3;

else

badblocks -vw -s -e10 -o HDD4.txt /dev/sdd

dd if=/dev/zero of=/dev/sdd bs=4096k;

omconfig storage vdisk action=deletevdisk controller=0 vdisk=3;

fi
echo "HDD 4 Wipe Complete... $(date)" >> wipelog.txt