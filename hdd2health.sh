#!/bin/sh

FILENAME=HDD2.txt

FILESIZE=$(stat -c% "$FILENAME")
if [[ $FILESIZE >0 ]];

 omreport storage adisk controller=0 adisk=0:0:2 | grep --silent Critical;

then
  echo "HDD 0:0:2 is bad"
  
 else
   echo "HDD 0:0:2 is Good"
   
   fi
