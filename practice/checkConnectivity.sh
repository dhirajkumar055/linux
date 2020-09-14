#!/bin/baks
#check=`ping -c 1 -q google.com >&/dev/null; echo $?`
#echo ${check}


wget -q --spider https://google.com

if [ $? -eq 0 ]; then
    echo "Online"
else
    echo "Offline"
fi
