#!/bin/sh

FILENAME=HDD6.txt

FILESIZE=$(stat -c% "$FILENAME")
if [[ $FILESIZE >0 ]];

 omreport storage adisk controller=0 adisk=1:0:6 | grep --silent Critical;

then
  echo "HDD 1:0:6 is bad"
  
 else
   echo "HDD 1:0:6 is Good"
   
   fi
