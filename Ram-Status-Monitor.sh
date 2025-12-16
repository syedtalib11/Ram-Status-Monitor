#!/bin/bash
#Ram-Status-Monitor
#Author - Syed Talib

Total=$(free -mt | grep "Total" | awk '{print $4}')
TH=500
if [[ "$Total" -le "$TH" ]]
then
     echo "Warning RAM is low"
else
     echo "your space is sufficent: $Total:M"
fi

