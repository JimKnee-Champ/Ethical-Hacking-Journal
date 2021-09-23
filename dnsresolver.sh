#!/bin/bash
host=$1
server=$2

echo "dns resolution for 10.0.5"
for i in $(seq 0 254); do
 nslookup $host.$i $server | grep "name"

done
