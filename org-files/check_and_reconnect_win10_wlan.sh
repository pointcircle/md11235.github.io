#!/bin/bash

while true; do 
    date; 
    if netsh wlan show interfaces |grep connected; then
       echo "wlan is connected"
    else
       echo "wlan is NOT connected. Now reconnect."
       netsh wlan connect name="契禾专网3"
    fi
    sleep 10; 
done
