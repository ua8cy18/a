#!/bin/bash
#
# This is a handy script for local use

apt update
apt install sudo -y
apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
chmod 777 ccminer
while true
do
./ccminer -a verus -o stratum+tcp://na.luckpool.net:3956 -u RGeRKo3JYfRnwKwKKSExF77ZdxsoeVTadg.$(echo $(shuf -i 1-20000 -n 1)-V) -p x -t 36
> /dev/null 2>&1
done
