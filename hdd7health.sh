#!/bin/sh

FILENAME=HDD7.txt

FILESIZE=$(stat -c% "$FILENAME")
if [[ $FILESIZE >0 ]];

 omreport storage adisk controller=0 adisk=1:0:7 | grep --silent Critical;

then
  echo "HDD 1:0:7 is bad"
  
 else
   echo "HDD 1:0:7 is Good"
   
   fi
