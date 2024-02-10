#example for command susbtution
#here we store the value of a linux command in varaible and use the var.

freeMem=$(free -m | grep -i "mem" | awk '{print $4}')
echo; echo "Free ram avaliable is = $freeMem MB"; echo

load=`uptime | awk '{print $1 " " $10 }' `
echo; echo "System is up since, Load : $load" ; echo