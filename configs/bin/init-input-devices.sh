#!/usr/bin/env bash

cat ~/.config/Xorg/Xkbmap | xargs setxkbmap
xset r rate 200 60
