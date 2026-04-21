#!/bin/sh
while true; do
    status=$(cat /sys/class/power_supply/BAT0/status)
    capacity=$(cat /sys/class/power_supply/BAT0/capacity)
    date_time=$(date +'%Y-%m-%d %X')
    echo "$status $capacity% | $date_time"
    sleep 1
done
