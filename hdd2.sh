#!/bin/sh
echo "HDD 2 Wipe Started... $(date)" >> wipelog.txt
rm -rf HDD2.txt

if
omreport storage adisk controller=0 adisk=0:0:2 | grep --silent Critical;

then

dd if=/dev/zero of=/dev/sdb bs=4096k;

omconfig storage vdisk action=deletevdisk controller=0 vdisk=1;

else

badblocks -vw -s -e10 -o HDD2.txt /dev/sdb

dd if=/dev/zero of=/dev/sdb bs=4096k;


omconfig storage vdisk action=deletevdisk controller=0 vdisk=1;

fi

echo "HDD 2 Wipe Complete... $(date)" >> wipelog.txt