#!/bin/bash

# Copy new wallpaper to ~/.i3/res/wall-tmp/ ($TEMPLATE)
# Image format and file name doesn't matter
# $TEMPLATE will be deleted afterwards!

TEMPLATE=$HOME/.i3/res/wall-tmp/*.*
WALLPAPER=$HOME/.i3/res/wallpaper.png

convert $TEMPLATE $WALLPAPER
feh --bg-fill $WALLPAPER
rm -rf $TEMPLATE