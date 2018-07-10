#!/bin/sh
echo "HDD 5 Wipe Started... $(date)" >> wipelog.txt
rm -rf HDD5.txt

if
omreport storage adisk controller=0 adisk=1:0:5 | grep Critical;

then

dd if=/dev/zero of=/dev/sde bs=4096k;


omconfig storage vdisk action=deletevdisk controller=0 vdisk=4;

else

badblocks -vw -s -e10 -o HDD5.txt /dev/sde

dd if=/dev/zero of=/dev/sde bs=4096k;

omconfig storage vdisk action=deletevdisk controller=0 vdisk=4;

fi
echo "HDD 5 Wipe Complete... $(date)" >> wipelog.txt