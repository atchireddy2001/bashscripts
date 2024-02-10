#!/bin/bash
echo

: "
#--------------------------------------if and if else block -------------------
read -p "enter your age : " age
echo

if [ $age -ge 18 ];
then
    echo "Your are eligible to vote!!"
  else
    echo "Try in next Elections."
fi
    echo; echo "out of IF execution."

"

#------------------------ifelse -----------------

path="$1"
filename="$2"

sudo ls $path>>/dev/null

if [ $? == 0 ] ; 
then
    cd $path
    touch $filename
    echo; echo "file created :)"
else
    echo "file not created, check the path of directory inputted"
fi







