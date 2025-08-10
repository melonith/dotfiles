#!/usr/bin/sh

selection=$(printf "logout\npoweroff\nrestart\nhibernate\nsuspend\n" | wmenu -f "pango:GoMono Nerd Fonts 15")

if [ -z $selection ] ; then
  exit 0
fi

echo "Your selection is: $selection"

case "$selection" in
  logout) swaymsg exit ;;
  poweroff) loginctl poweroff ;;
  restart) loginctl reboot ;;
  hibernate) loginctl hibernate ;;
  suspend) loginctl suspend ;;
esac
