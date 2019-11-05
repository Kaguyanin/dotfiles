#!/bin/bash

HDMI="HDMI-1"
LAPTOP="LVDS-1"

if [ ! -f "/tmp/toggle.dat" ] ; then
		toggle_mode="DISCONNECTED"
else
		toggle_mode=`cat /tmp/toggle.dat`
fi

if [ $toggle_mode = "DISCONNECTED" ]; then
        toggle_mode="CONNECTED"
        xrandr --output $LAPTOP --off --output $HDMI --auto
        pacmd set-card-profile 0 "output:hdmi-stereo+input:analog-stereo"
        feh --bg-fill ~/.i3/res/wallpaper.png
else
        toggle_mode="DISCONNECTED"
        xrandr --output $LAPTOP --auto --output $HDMI --off
        pacmd set-card-profile 0 "output:analog-stereo+input:analog-stereo"
        feh --bg-fill ~/.i3/res/wallpaper.png
fi
echo "${toggle_mode}" > /tmp/toggle.dat