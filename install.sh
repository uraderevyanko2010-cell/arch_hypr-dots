#!/usr/bin/env bash

CONFIG_SRC="$HOME/arch_hypr-dots/config"
CONFIG_DST="$HOME/.config"

mkdir -p $HOME/.config

install_packages() {

    echo "installing basic packages"

    sudo pacman -S --needed hyprland \
    hyprlock \
    hypridle \
    kitty \
    waybar \
    rofi \
    dunst \
    cava \
    pipewire pipewire-pulse wireplumber pavucontrol \
    git base-devel \
    zsh \
    thunar \
    pacman-contrib \
    swww \
    nvidia-open nvidia-settings nvidia-utils

}

setup_yay() {

    echo "Setting up yay..."
    
    cd $HOME
    git clone https://aur.archlinux.org/yay.git
    cd $HOME/yay
    makepkg -si
    cd $HOME/arch_hypr-dots

}

installing_yay_packages() {

    echo "Installing yay packages..."

    yay -S vscodium-bin 
    yay -S ttf-jetbrains-mono-nerd

}

settingup_system_font() {

    fc-cache -fv
    fc-match monospace
    sleep 1 

}

copying_config() {

    echo "Clonning config files into .config..."
    
    for dir in "$CONFIG_SRC"/*; do
        name=$(basename "$dir")
        cp -r "$dir" "$CONFIG_DST/"
    done

}

gtk_themes() {

    echo "Copying gtk themes..."

    mkdir $HOME/.themes
    cp -r $HOME/arch_hypr-dots/themes/Colloid-Rice $HOME/.themes
    cp -r $HOME/arch_hypr-dots/themes/Colloid-Rice-hdpi $HOME/.themes
    cp -r $HOME/arch_hypr-dots/themes/Colloid-Rice-xhdpi $HOME/.themes

}

change_cursor() {

    echo "Unpacking archive with cursor to /usr/share/icons"

    sudo tar -xf $HOME/arch_hypr-dots/themes/Bibata-Modern-Classic.tar.xz -C /usr/share/icons

}

install_packages
setup_yay
installing_yay_packages
settingup_system_font
copying_config
gtk_themes
change_cursor

chmod +x $HOME/arch_hypr-dots/wset.sh

echo "Done, rebooting now... (this dotfiles dont create autostart of hyprland\nto start it pls use start-hyprland)"
echo "To set default wallpapers for hyprland and hyprlock completing the installation run arch_hypr-dots.sh/wset.sh in kitty terminal"

sleep 3

reboot
