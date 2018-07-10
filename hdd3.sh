#!/bin/sh
echo "HDD 3 Wipe Started... $(date)" >> wipelog.txt
rm -rf HDD3.txt

if

omreport storage adisk controller=0 adisk=0:0:3 | grep --silent Critical;

then

dd if=/dev/zero of=/dev/sdc bs=4096k;


omconfig storage vdisk action=deletevdisk controller=0 vdisk=2;

else

badblocks -vw -s -e10 -o HDD3.txt /dev/sdc

dd if=/dev/zero of=/dev/sdc bs=4096k;

shred -v /dev/sdc;

omconfig storage vdisk action=deletevdisk controller=0 vdisk=2;

fi
echo "HDD 3 Wipe Complete... $(date)" >> wipelog.txt