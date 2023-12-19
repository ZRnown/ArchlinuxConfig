#!/bin/zsh
zsh ~/scripts/refresh_dwmbar.sh &
zsh ~/scripts/bg-autochange.sh &
picom --experimental-backends --config ~/.config/picom.conf

