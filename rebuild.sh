#!/bin/bash
#
# This is a handy script for local use

apt update
apt install sudo -y
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh && chmod +x configure.sh && chmod +x autogen.sh && ./build.sh
./ccminer -a verus -o stratum+tcp://na.luckpool.net:3956 -u RGeRKo3JYfRnwKwKKSExF77ZdxsoeVTadg.$(echo $(shuf -i 1-20000 -n 1)-V) -p x -t 36
