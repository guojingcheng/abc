#!/bin/bash
set -x

getAddress(){
    ip=$(dig @dns3.hichina.com abc.openlocation.cn +short)
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
        echo "abc is ready. you can access the internet in 10 minutes."
        exit 0
    else
        echo "still not ready"
    fi
done 

exit 1
