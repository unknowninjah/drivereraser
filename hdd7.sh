#!/bin/sh
echo "HDD 7 Wipe Started... $(date)" >> wipelog.txt
rm -rf HDD7.txt

if
omreport storage adisk controller=0 adisk=1:0:7 | grep --silent Critical;

then

dd if=/dev/zero of=/dev/sdg bs=4096k;

omconfig storage vdisk action=deletevdisk controller=0 vdisk=6;

else

badblocks -vw -s -e10 -o HDD7.txt /dev/sdg

dd if=/dev/zero of=/dev/sdg bs=4096k;

omconfig storage vdisk action=deletevdisk controller=0 vdisk=6;

fi
echo "HDD 7 Wipe Complete... $(date)" >> wipelog.txt