#!/bin/sh

if
 ps | grep --silent hdd7.sh
 
 then
  echo "1:0:7 is still in progress"
  
  else
    ./hdd7health.sh

fi