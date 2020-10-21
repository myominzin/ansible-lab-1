#!/usr/bin/bash

if [[ $(grep -c -e "^nameserver 192.168.123.1$" /etc/resolv.conf) -eq 1 && $(grep -c -e "^nameserver 192.168.100.1$" /etc/resolv.conf) -eq 1 && $(grep -c -e "^nameserver 192.167.100.113$" /etc/resolv.conf) -eq 1 && $(grep -c -e "^nameserver 192.168.100.1141$" /etc/resolv.conf) -eq 1 && $(grep -c -e "^search redhatmm.local$" /etc/resolv.conf) -eq 1 ]]; then
    exit 0
else
    exit 1
fi
