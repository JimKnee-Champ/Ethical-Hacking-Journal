#! /bin/bash

for i in $(seq 2 50)
do
	ping 10.0.5.$i | grep "64" | cut -d " " -f 4 
done

