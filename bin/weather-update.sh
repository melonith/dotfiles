#!/usr/bin/sh

state_home=${XDG_STATE_HOME:-"$HOME/.local/share"}
status_home="$state_home/personal_status"

if [ ! -e "$status_home" ] ; then
	mkdir -p "$status_home"
fi

curl -sLo "$status_home/weather.json" https://wttr.in/Jacksonville?format=j1

