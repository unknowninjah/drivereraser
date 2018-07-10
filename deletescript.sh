#!/bin/sh

omconfig storage controller action=clearforeignconfig controller=0;

omconfig storage controller action=createvdisk controller=0 raid=r0 size=max pdisk=0:0:2;
omconfig storage controller action=createvdisk controller=0 raid=r0 size=max pdisk=0:0:3;
omconfig storage controller action=createvdisk controller=0 raid=r0 size=max pdisk=1:0:4;
omconfig storage controller action=createvdisk controller=0 raid=r0 size=max pdisk=1:0:5;
omconfig storage controller action=createvdisk controller=0 raid=r0 size=max pdisk=1:0:6;
omconfig storage controller action=createvdisk controller=0 raid=r0 size=max pdisk=1:0:7;

omconfig system alertlog action=clear --silent
omconfig system esmlog action=clear --silent


./hdd2.sh &
./hdd3.sh &
./hdd4.sh &
./hdd5.sh &
./hdd6.sh &
./hdd7.sh &

clear