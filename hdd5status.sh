#!/bin/sh

if
 ps | grep --silent hdd5.sh
 
 then
  echo "1:0:5 is still in progress"
  
  else
    ./hdd5health.sh

fi