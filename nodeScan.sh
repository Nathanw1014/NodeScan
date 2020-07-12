#!/bin/bash
methodList=$1
hosts=$2
port=$3

exec 4<$methodList
exec 5<$hosts

while read -u5 host ; do
    while read -u4 method ; do
    	echo method being called $method
        jsonrpccall=$(curl -m 2 -s -X POST -H "Content-Type: application/json" -d '{"jsonrpc":"2.0","method":"'$method'", "params": [], "id":1}' $host:$port)
	echo "running : $jsonrpccall"
        echo $host:$port $method $jsonrpccall >> outfile.txt
    done
done
