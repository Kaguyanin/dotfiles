#!/bin/bash

res=$(rofi -dmenu -i -lines 5 -width -9 -hide-scrollbar < ~/.i3/scripts/rofi-exit)

if [ $res = "lock" ]; then
    ~/.i3/scripts/i3lock.sh
fi
if [ $res = "suspend" ]; then
    ~/.i3/scripts/i3lock.sh && systemctl suspend
fi
if [ $res = "logout" ]; then
    i3-msg exit
fi
if [ $res = "restart" ]; then
    systemctl reboot
fi
if [ $res = "shutdown" ]; then
    systemctl poweroff
fi
exit 0
