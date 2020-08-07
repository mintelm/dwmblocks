#!/bin/sh

read -r temp </sys/class/thermal/thermal_zone0/temp
temp=${temp%???}

echo " ${temp}°C"
