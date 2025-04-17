#!/bin/bash

notify_levels=(5 10 20)
BAT=$(ls /sys/class/power_supply | grep BAT | head -n 1)
last_notify=100

while true; do
  bat_lvl=$(cat /sys/class/power_supply/${BAT}/capacity)
  if [ $bat_lvl -gt $last_notify ]; then
    last_notify=$bat_lvl
  fi
  for notify_level in ${notify_levels[@]}; do
    if [ $bat_lvl -le $notify_level ]; then
      if [ $notify_level -lt $last_notify ]; then
        notify-send -i ~/.icons/Catppuccin-SE/32x32/status/dialog-warning.svg -u critical "Low Battery" "$bat_lvl% battery remaining."
        last_notify=$bat_lvl
      fi
    fi
  done
  sleep 60
done
