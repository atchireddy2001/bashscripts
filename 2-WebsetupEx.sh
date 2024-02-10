#!/bin/bash

echo
echo "------- Installing Required packages for deployment of website-------------"
sudo yum install vim wget zip unzip httpd -y >> /dev/null

echo
echo "------- Starting and enabline the service -------"
sudo systemctl start httpd
sudo systemctl enable httpd

echo 
echo "-----creating a dir in Tmp folder & chnaging to Tmp folder -----"
sudo mkdir -p /tmp/webfiles/
cd /tmp/webfiles/

echo
echo "----- Gettign the source files ------- "
sudo wget "https://www.tooplate.com/zip-templates/2135_mini_finance.zip"

echo 
echo "------ Extracting the ZIP file ------"
sudo unzip 2135_mini_finance.zip

echo 
echo "---- copying the files to /var/www/html -------"
sudo cp -r /tmp/webfiles/2135_mini_finance/* /var/www/html/

echo
echo
sudo ip addr show
