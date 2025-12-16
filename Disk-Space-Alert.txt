#!/bin/bash
#Disk Usage Alert
#Author Syed Talib

D_use=$(df -hT | egrep -vi "filesystem|tmpfs" | grep "sda1" | awk '{print $6}' | tr -d %)
FU=80
TO="syedtalib98634@gmail.com"
if [[ "$D_use" -ge "$TH" ]]
then
     echo "WARINING Disk is LOW - $FU %" | mail -s "Disk Space Alert !" $TO
else
     echo "All Good..."
fi
