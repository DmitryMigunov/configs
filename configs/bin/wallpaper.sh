#!/bin/bash

[ -f "$HOME/wallpaper.jpg" ]  && DISPLAY=:0.0 feh --bg-fill "$HOME/wallpaper.jpg"
