#!/bin/sh

PS3='Please enter your choice: '
options=("Start Test" "HDD Progress" "Check Times" "Quit")
select opt in "${options[@]}"
do

      case $opt in
	    "Start Test")
		 ./deletescript.sh
		 ;;
		 "HDD Progress")
		 ./hdd2status.sh;
		 ./hdd3status.sh;
		 ./hdd4status.sh;
		 ./hdd5status.sh;
		 ./hdd6status.sh;
		 ./hdd7status.sh
		 ;;
		 
		 "Check Times")
          clear
		  cat wipelog.txt
		  ;;
		  
		 "Quit")
		  pkill -f dd
		  pkill -f badblocks
          clear
		  break
		  ;;
		 *) echo invalid option;;
		  esac
 done
