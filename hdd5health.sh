#!/bin/sh

FILENAME=HDD5.txt

FILESIZE=$(stat -c% "$FILENAME")
if [[ $FILESIZE >0 ]];

 omreport storage adisk controller=0 adisk=1:0:5 | grep --silent Critical;

then
  echo "HDD 1:0:5 is bad"
  
 else
   echo "HDD 1:0:5 is Good"
   
   fi
