#!/bin/sh

FILENAME=HDD4.txt

FILESIZE=$(stat -c% "$FILENAME")
if [[ $FILESIZE >0 ]];

 omreport storage adisk controller=0 adisk=1:0:4 | grep --silent Critical;

then
  echo "HDD 1:0:4 is bad"
  
 else
   echo "HDD 1:0:4 is Good"
   
   fi
