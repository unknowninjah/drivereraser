#!/bin/sh

if
 ps | grep --silent hdd6.sh
 
 then
  echo "1:0:6 is still in progress"
  
  else
    ./hdd6health.sh

fi