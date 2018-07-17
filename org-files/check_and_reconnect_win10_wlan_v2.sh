#!/bin/bash

# change windows commands' output in cmd to English for easy handling later
# 把wnidows的cmd里的命令的输出语言改为英语，方便后续处理
/c/Windows/System32/chcp.com 437

while true; do 
    date; 
    if netsh wlan show interfaces | grep "connected"; then
       echo "wlan is connected"
    else
       echo "wlan is NOT connected. Now reconnect."
       netsh wlan connect name="your_wifi_ssid"
    fi
    sleep 10; 
done
