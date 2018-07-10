#!/bin/sh

if
 ps | grep --silent hdd2.sh
 
 then
  echo "0:0:2 is still in progress"
  
  else
    ./hdd2health.sh

fi