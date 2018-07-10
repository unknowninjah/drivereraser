#!/bin/sh

if
 ps | grep --silent hdd3.sh
 
 then
  echo "0:0:3 is still in progress"
  
  else
    ./hdd3health.sh

fi