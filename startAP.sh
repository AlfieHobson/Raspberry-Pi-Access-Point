#!bin/bash

sudo echo -e "interface wlan0\nstatic ip_address=192.168.0.10/24\nnohook wpa_supplicant" > /etc/dhcpcd.conf

sudo service dhcpcd restart

sudo systemctl start hostapd && sudo systemctl start dnsmasq
