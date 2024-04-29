xset b off
xrdb -merge .Xresources

lxsession &
numlockx &

umonitor --listen --quiet

exec i3
