#!/bin/sh
read -r capacity </sys/class/power_supply/BAT0/capacity
read -r batstatus < /sys/class/power_supply/BAT0/status

if [ "$batstatus" = "Charging" ]; then
        charging="ﮣ "
fi

if [ "$capacity" -gt 90 ]; then
        echo "${charging} ${capacity}%"
elif [ "$capacity" -gt 65 ]; then
        echo "${charging} ${capacity}%"
elif [ "$capacity" -gt 40 ]; then
        echo "${charging} ${capacity}%"
elif [ "$capacity" -gt 10 ]; then
        echo "${charging} ${capacity}%"
else
        echo "${charging} ${capacity}%"
fi
