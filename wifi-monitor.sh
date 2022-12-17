#!/bin/sh

while :
  do
    if [ "$(iwconfig | grep Not-Associated)" = "" ]
    then
      sudo python /home/pi/kiln-startup-utils/wifi_LED_on.py
    else
      sudo python /home/pi/kiln-startup-utils/wifi_LED_off.py
    fi

    sleep 1
  done