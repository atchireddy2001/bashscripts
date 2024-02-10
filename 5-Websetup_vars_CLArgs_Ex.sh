#!/bin/bash

#declaring varables 
PACKAGES="vim wget zip unzip httpd"
SERVICE="httpd"
DIR="/tmp/webfiles/"
# URL="https://www.tooplate.com/zip-templates/2135_mini_finance.zip"
# FILE="2135_mini_finance"
HTMLPATH="/var/www/html/"


echo
echo "------- Installing Required packages for deployment of website-------------"
sudo yum install $PACKAGES -y >> /dev/null

echo
echo "------- Starting and enabline the service -------"
sudo systemctl start $SERVICE
sudo systemctl enable $SERVICE

echo 
echo "-----creating a dir in Tmp folder & chnaging to Tmp folder -----"
sudo mkdir -p $DIR
cd $DIR

echo
echo "----- Gettign the source files ------- "
sudo wget $1

echo 
echo "------ Extracting the ZIP file ------"
sudo unzip $2.zip

echo 
echo "---- copying the files to /var/www/html -------"
sudo cp -r $DIR $2/* $HTMLPATH

echo
echo
sudo ip addr show 