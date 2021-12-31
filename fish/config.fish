if status --is-interactive
  set -gx EDITOR "nvim"
  set -gx theme_color_scheme "zenburn"
end

if status --is-login
  if test -z "$DISPLAY" -a (tty) = "/dev/ttyv0"
    exec startx -- -keeptty
  end
end
