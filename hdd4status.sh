#!/bin/sh

if
 ps | grep --silent hdd4.sh
 
 then
  echo "1:0:4 is still in progress"
  
  else
    ./hdd4health.sh

fi