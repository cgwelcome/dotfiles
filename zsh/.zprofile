eval "$(ssh-agent)"
if [[ "$(tty)" = "/dev/tty1" ]]; then
  exec startx
fi
