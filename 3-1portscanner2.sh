#!/bin/bash

host=$1
port=$2
echo "host,port"
for i in $(seq 0 254); do
#removed the for port
    timeout .1 bash -c "echo >/dev/tcp/$host.$i/$port" 2>/dev/null &&
      echo "$host.$i,$port"
done
