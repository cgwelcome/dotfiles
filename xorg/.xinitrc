[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
eval "$(ssh-agent)"
exec i3
