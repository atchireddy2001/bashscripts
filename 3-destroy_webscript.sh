#!/bin/bash
echo
echo "---- lets down the WEBSITE and DEL everything ---"

echo
sudo systemctl stop httpd; sudo systemctl disable httpd;
echo "---- disabled HTTPD services........."

echo "------ clean install Successful --------"
sudo rm -rf /tmp/webfiles

echo "-- Uninstalling remaining Pacakges --"
sudo yum remove httpd zip unzip vim -y

echo ; echo "------------------- Good Byee -----------------------"
