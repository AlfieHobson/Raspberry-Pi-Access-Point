#!bin/bash

sudo echo -e "interface wlan0\n#static ip_address=192.168.0.10/24\n#nohook wpa_supplicant" > /etc/dhcpcd.conf

sudo systemctl stop hostapd && sudo systemctl stop dnsmasq

sudo service dhcpcd restart


