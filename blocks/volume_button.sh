#!/bin/sh
case "$1" in
    1) exec pavucontrol-qt ;;
    2) pamixer --toggle-mute ;;
    3) pamixer --set-volume 60 ;;
esac
