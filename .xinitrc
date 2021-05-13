#!/bin/sh


# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# merge Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# remove pc beep for invalid key
xset b off

# choose which desktop environment to load
# default is i3
session=${1:-i3}

case $session in
	i3|i3wm    ) exec i3;;
	xfce|xfce4 ) exec startxfce4;;
	*          ) exec $1;;

esac
