if [[ "$(tty)" = "/dev/tty1" ]]; then
  exec startx
fi
export GPG_TTY=$(tty)
