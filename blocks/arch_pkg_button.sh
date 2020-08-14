#!/bin/sh
case "$1" in
    1) st -e sh -c 'yay -Syyu; sigdwmblocks 2; printf "\nPress any button to exit."; read';;
    2) yay -Syy; sigdwmblocks 2;;
    3) st -e sh -c 'yay -Qu; sigdwmblocks 2; printf "\nPress any button to exit."; read';;
esac
