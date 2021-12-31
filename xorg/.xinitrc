#!/bin/sh

userresources=${HOME}/.Xresources
[ -f "$userresources" ] && xrdb -merge "$userresources"

eval "$(ssh-agent)"

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
exec fcitx &

exec i3
