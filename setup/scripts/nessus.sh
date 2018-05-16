#!/bin/bash

#This script will simplify starting and stopping the Nessus service
#(removing the need to use init.d) and print the URL to access it.

#define colors
ESC="\e["
RESET=$ESC"39m"
RED=$ESC"01;31m"
GREEN=$ESC"01;32m"
YELLOW=$ESC"01;33m"

function usage {
	echo "usage: $0 [start | stop | restart | status]"
	echo ""
	echo "	start	- starts the Nessus service"
	echo "	stop	- stops the Nessus service"
	echo "	restart	- restarts the Nessus service"
	echo "	status	- prints the status of the Nessus service"
	echo ""
}

function start {
	echo -e "${YELLOW}[-]${RESET} starting the Nessus service..."
	sudo /etc/init.d/nessusd start &> /dev/null
	echo ""
	sleep 2
}

function stop {
	echo -e "${YELLOW}[-]${RESET} stopping the Nessus service..."
	sudo /etc/init.d/nessusd stop &> /dev/null
	echo ""
	sleep 2
}

function status {
	ps aux | grep "nessusd -q" | grep -v "grep" &> /dev/null

	if [ $? -eq 0 ]; then
		#nessus is running
		echo -e "${GREEN}[+]${RESET} Nessus service is currently started"
		echo ""
		echo "USER    PID    %CPU  %MEM  VSZ    RSS   TTY   STAT  START   TIME  COMMAND"
		ps aux | grep -v "grep nessusd -q" | grep "nessusd -q"
		echo ""
		echo -e "${GREEN}[+]${RESET} Access Nessus by going to https://localhost:8834"
	else
		#nessus is not running
		echo -e "${RED}[!]${RESET} Nessus service is currently stopped"
	fi
}


#########################################################
#################          MAIN         #################
#########################################################

case "$1" in
	start)
		start
		status
		;;

	stop)
		stop
		status
		;;

	restart)
		stop
		start
		status
		;;

	status)
		status
		;;

	*)
		usage
		exit 1
		;;
esac
exit 0
