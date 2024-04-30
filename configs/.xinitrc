#!/bin/sh

xset b off
xrdb -merge .Xresources

lxsession &
numlockx &

autorandr --change

exec i3
