#!/bin/bash

: "
#--------------------example for varibales and arguments-----------------

var11=${11}

echo "var 1 = " $1
echo "var 2 = " $2
echo "var 3 = " $3
echo "var 4 = " $4
echo "var 5 = " $5
echo "var 6 = " $6
echo "var 7 = " $7
echo "var 8 = " $8
echo "var 9 = " $9
echo "var 10 = " ${10}
echo "var 11 = " $var11
echo "var 12 = ${12}" 

echo "total system args passed = " $#
echo "prints all args passed = " $@
echo "Pid of current process = " $$
echo "Exit code of previous exitied command = " $?

"

echo "out of comments execution"
echo


#---------------------------system variables -----------------------------------
: "
echo "hello $USER user, you are running on $HOSTNAME"
echo

echo 'hello $USER user, you are running on $HOSTNAME --> we used single quotes so it ignored special chars'
echo

echo "hello \$USER user, you are running on $HOSTNAME --> we used double quotes but we have used \ so it has ignored the special character"
echo

echo "fyi unset is used for unassigining an variable"

read -p "enter a number : " var
echo "you entered -- $var"

echo "--unsetting your variable--" ; unset var

"


#-------------------------------command substution---------------------------------
#this means we store the o/p of a linux command into a variable and we access the variabel 
#check 6-file 
: "

#checking variables access(temp Export and permanent export)
var2=50000
echo; echo "variable 1 is = "$var1; echo

echo "variable 2 is = "$var2;

echo "variable 3 is = "$var3;
echo "variable 4 is = "$var4; echo

"

#----------------------- reading user input ------------------
#we use read commadn 
: "

echo "enter username : " 
read uname;

read -sp "Enter password : " pass

echo; echo
echo "Hello $uname! you are successfully Logged inn... :)"

"






















