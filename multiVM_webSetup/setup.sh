#!/bin/bash

file=("web01" "web02" "web03")    #       file=$(cat remotehost)       

usr="devops"

for host in ${file[@]}; do                 #     for host in `cat remotehost`

    echo "=================== connecting to Hosts ======================="
    
    echo "Transfering Script to $host"

    scp multiVm_WebSetup.sh $usr@$host:/home/devops/project/

    echo "Executing the script on host $host"

    ssh $usr@$host /home/devops/project/multiVm_WebSetup.sh             #this path is in remote Vm's

done

