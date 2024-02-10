#!/bin/bash

echo; echo "------------------------- Monitoring Tool for Httpd --------------------------"

date=$(date)
echo $date 

sleep 1

ls /var/run/httpd/httpd.pid >> /dev/null

if [ $? -eq 0 ]; then
    
    echo; echo "Httpd is already runnning"; echo
  else 
    echo; echo "Httpd is not running"; echo
    echo; echo "Starting Httpd ...."; echo

    sudo systemctl start httpd

    if [ $? -eq 0 ]; then

    echo; echo "Httpd started Successfully :>"; 
    echo "on Date and Time : " $date ; echo
  else 
    echo; echo "Contact your System Admin for Installation/ Troubleshooting"; echo

    fi

fi

