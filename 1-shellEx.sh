#!/bin/bash

echo "Hello this is 1st bash script"

echo
echo 
echo "--- RAM details below ---"
free -m

echo
echo '######################'
echo 
echo 'Installing Httpd package and starting it, the o/p is redirected to /dev/null ...'
sudo yum install httpd -y >> /dev/null
sudo systemctl start httpd 

echo
echo "######################"
echo "Unistalling Httpd..."
sudo systemctl stop httpd
sudo yum remove httpd
echo "----------------------------------------------- Good Byee -------------------------------------------"
