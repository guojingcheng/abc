#!/bin/bash
set -x

getAddress(){
    ip=$(dig abc.openlocation.cn +short)
    echo $ip
}

abc=$(getAddress)
echo $abc

for((i=1;i<=10;i++));  
do   
    echo
    sleep 60
    tmp=$(getAddress)
    echo $tmp
    if [ $tmp != $abc ]; then 
        echo "abc"
        exit 0
    else
        echo "still not ready"
    fi
done 

exit 1
