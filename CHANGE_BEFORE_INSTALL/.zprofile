if [[ -z $DISPLAY ]] && [[ $(tty) == /dev/tty1 ]]; then
  sleep 1.5
  exec start-hyprland
fi
