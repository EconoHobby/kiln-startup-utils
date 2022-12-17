#!/bin/sh

while :
  do
    if [ "${host_name}" = "" ]
    then
      sudo python /home/pi/kiln-startup-utils/wifi_LED_off.py
      sudo wpa_supplicant -B -c /etc/wpa_supplicant.conf -i wlan0
      sudo dhclient wlan0
    else
      sudo python /home/pi/kiln-startup-utils/wifi_LED_on.py
    fi

    sleep 1
  done