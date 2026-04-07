#!/bin/bash

service=nginx
LOGFILE="/var/log/watch.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if systemctl is-active $service > /dev/null 2>&1
then
       echo  "[$TIMESTAMP] System is UP"
else
        echo "[$TIMESTAMP]System is DOWN---Restarting the Service"
	systemctl restart $service
	echo "[$TIMESTAMP]$service Restarted successfully" | tee -a $LOGFILE
fi
