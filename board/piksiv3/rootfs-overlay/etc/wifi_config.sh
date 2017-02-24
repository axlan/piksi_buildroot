#!/bin/sh
ip link set wlan0 up
wpa_passphrase "$1" "$2" > your_SSID.conf
wpa_supplicant -B -i wlan0 -c your_SSID.conf
dhcpcd wlan0