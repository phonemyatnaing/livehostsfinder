#!/bin/bash/
for ip in $(seq 1 200); do
ping -c 1 172.20.10.$ip |grep "bytes from" |cut -d " " -f4 | cut -d ":" -f1 &
done
