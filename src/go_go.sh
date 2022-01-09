#!/usr/bin/env bash
clear
trap "echo oh;exit" SIGTERM SIGINT

echo -e "nameserver 103.86.96.100\nnameserver 103.86.99.100" >  /etc/resolv.conf
cd /root/SDA_ALL/
rm -rf site_5_cheap
git reset --hard
git pull
cd /root/SDA_ALL/site_5_cheap/ && cp /root/0nord_pass /root/SDA_ALL/site_5_cheap/0nord_pass
chmod +x *
pwd
while true
do
	echo "NEW ..............."
	cd /root/SDA_ALL/site_5_cheap/
	timeout 5m python3 48_ads.py
done
