#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

ssh-agent &
ibus-daemon -d
VBoxClient-all &

xset s off         # don't activate screensaver
xset -dpms         # disable DPMS (Energy Star) features.
xset s noblank     # don't blank the video device

xrdb ~/.Xresources &
exec i3

# exec ~/dwm-6.0/dwm
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
