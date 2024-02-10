#!/bin/bash

value=`ip addr show | grep -vi "loopback" | grep -ic "mtu" `

if [ $value -eq 1 ]; then
    echo "1 active adapter found"
elif [ $value -gt 1 ]; then
    echo "more than 1 network adapters found"
elif [ $value -le 0 ]; then
    echo "How the F is that possible...."
else
    echo "No adapters found :<"
fi