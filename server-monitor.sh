#!/bin/sh

while :
  do
    if [ "$(systemctl status kiln-controller) | grep active\ \(running\)" = "" ]
    then
      sudo python /home/pi/kiln-startup-utils/server_LED_off.py
    else
      sudo python /home/pi/kiln-startup-utils/server_LED_on.py
    fi

    sleep 1
  done