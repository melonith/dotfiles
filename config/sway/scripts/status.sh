#!/usr/bin/sh

gip="$(curl -s ipv4.icanhazip.com)"
lip="$(ip -4 addr show dev wlo1 | grep inet | cut -d' ' -f6 | cut -d'/' -f1)"
vol="$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | tr -d '[:space:]')"
timd="$(date +"%FT%R")"
timu="$(date -u +"%FT%R")"

# The following is to determine our battery status
baticon="󰂄"
batper="$(cat /sys/class/power_supply/BAT1/capacity)"
if [ "$batper" -le 10 ] ; then
  baticon=""
elif [ "$batper" -le 20 ] ; then
  baticon=""
elif [ "$batper" -le 40 ] ; then
  baticon=""
elif [ "$batper" -le 60 ] ; then
  baticon=""
elif [ "$batper" -le 85 ] ; then
  baticon=""
else
  baticon=""
fi

stat="$(cat /sys/class/power_supply/BAT1/status)"
if [ "$stat" = "Charging" ] ; then
	baticon="󱐌$baticon"
fi

printf " $gip 󰩠 $lip 󰕾 $vol% $baticon %0.2d%% $timd|$timu\n" "$batper"

