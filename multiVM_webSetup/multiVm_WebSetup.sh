#!/bin/bash

#declaring varables 
#PACKAGES="vim wget zip unzip httpd"
#SERVICE="httpd"

DIR="/tmp/webfiles/"
URL="https://www.tooplate.com/zip-templates/2135_mini_finance.zip"
FILE="2135_mini_finance"
HTMLPATH="/var/www/html/"


sudo yum --help  &> /dev/null           #just checking to see if the system is ubantu or centos, if ubantu when $? is performed it gives some random o/p

if [ $? -eq 0 ]; then

    echo "********************************* Setup will be done on CENTOS *****************************************"

    PACKAGES="vim wget zip unzip httpd"                                                        #declaring variables for centos
    SERVICE="httpd"
    
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
    sudo wget $URL

    echo 
    echo "------ Extracting the ZIP file ------"
    sudo unzip $FILE.zip

    echo 
    echo "---- copying the files to /var/www/html -------"
    sudo cp -r $DIR $FILE/* $HTMLPATH

    echo
    echo
    sudo ip addr show 

else 

    echo "##################################### Setup will be done for Ubantu Machine ############################################"

    PACKAGES="vim wget zip unzip apache2"                                                        #declaring variables for ubantu
    SERVICE="apache2"
    
    echo
    echo "------- Installing Required packages for deployment of website-------------"
    sudo apt update
    sudo apt install $PACKAGES -y >> /dev/null

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
    sudo wget $URL

    echo 
    echo "------ Extracting the ZIP file ------"
    sudo unzip $FILE.zip

    echo 
    echo "---- copying the files to /var/www/html -------"
    sudo cp -r $DIR $FILE/* $HTMLPATH

    echo
    echo
    sudo ip addr show 

fi