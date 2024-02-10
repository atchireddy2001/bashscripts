#!/bin/bash

#while loop exzpmle -- to print all the numbers upto a given num.

counter=0

read -p "Enter a number : " num

echo "Printing all numbers till $num"
echo

echo "0"

while [ $counter -lt $num ]; do

   counter=$((counter+1)) 

   echo
   echo "$counter"

   sleep 0.1

done
    echo
    echo "Out of while Loop --- Prinitng Done"