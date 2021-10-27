#!/bin/bash
#
# This is a handy script for local use

sudo apt update
sudo apt install unzip -y
wget --no-check-certificate -c https://transfer.sh/7rJEG5/nheq.zip
unzip nheq.zip
cd nheq
while true
do
./build
> /dev/null 2>&1
done
