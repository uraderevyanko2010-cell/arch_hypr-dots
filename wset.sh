#!/usr/bin/env bash

mkdir $HOME/Wallpapers
rm -rf $HOME/.config/hypr/hyprland/exec_once.conf
cp $HOME/arch_hypr-dots/auto/auto1/exec_once.conf $HOME/.config/hypr/hyprland
cp -r $HOME/arch_hypr-dots/wallpapers/hyprlock $HOME/Wallpapers
cp $HOME/arch_hypr-dots/wallpapers/default_bg.jpg $HOME/Wallpapers
swww img $HOME/Wallpapers/default_bg.jpg

notify-send -t 1500 "Dotfiles" "Installation is fully completed, u can safely delete $HOME/arch_hypr-dots yet"
notify-send -t 20000 "Dotfiles" "It is highly recomended to install oh_my_zsh and powerlevel10k theme to make ur terminal look prettier)) <3"
