#!/usr/bin/env bash

mkdir $HOME/Wallpapers
rm -rf $HOME/.config/hypr/hyprland/exec_once.conf
cp $HOME/arch_hypr-dots/auto/auto1/exec_once.conf $HOME/.config/hypr/hyprland
cp -r $HOME/arch_hypr-dots/wallpapers/hyprlock $HOME/Wallpapers
cp $HOME/arch_hypr-dots/wallpapers/default_bg.jpg $HOME/Wallpapers
swww img $HOME/Wallpapers/default_bg.jpg

notify-send -t 1500 "Dotfiles" "Installation is fully completed, u can safely delete $HOME/arch_hypr-dots yet"
