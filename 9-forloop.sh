#!/bin/bash

arr=(father mother child starnger)  #here we used array | we can also use anthing 

echo ${arr[@]}                      

for usr in ${arr[@]}            #since we used arrays we alled it like this else we directly say as     $arr
    do
        useradd $usr                                        #for user delete use    userdel -r $usr
        echo "user added successfully :) $usr"
        id $usr
        sleep 1
done
