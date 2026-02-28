#!/usr/bin/env bash

sudo -v

CONFIG_SRC="$HOME/arch_hypr-dots/config"
CONFIG_DST="$HOME/.config"

mkdir -p $HOME/.config

install_packages() {

    echo "
    #################################
    ### installing basic packages ###
    #################################"

    sudo pacman -Syu
    sudo pacman -S --needed --noconfirm hyprland \
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
    fastfetch \
    firefox \
    xdg-desktop-portal xdg-desktop-portal-hyprland \
    easyeffects \
    telegram-desktop \
    grim slurp \
    nvidia-open nvidia-settings nvidia-utils \
    gvfs gvfs-mtp gvfs-smb \
    nwg-look \
    rsync \
    lsp-plugins \


}

setup_yay() {

    echo "
    #########################
    ### Setting up yay... ###
    #########################"
    
    cd $HOME
    git clone https://aur.archlinux.org/yay.git
    cd $HOME/yay
    makepkg -si
    cd $HOME/arch_hypr-dots

}

installing_yay_packages() {

    echo "
    ##################################
    ### Installing yay packages... ###
    ##################################"

    yay -S --noconfirm vscodium-bin \
           ttf-jetbrains-mono-nerd \
           hydra-launcher \

}

settingup_system_font() {

    fc-cache -fv
    fc-match monospace
    sleep 1 

}

copying_config() {

    echo "
    #############################################
    ### Clonning config files into .config... ###
    #############################################"

    for dir in "$CONFIG_SRC"/*; do
        name=$(basename "$dir")
        cp -r "$dir" "$CONFIG_DST/"
    done

}

gtk_themes() {

    echo "
    #############################
    ### Copying gtk themes... ###
    #############################"

    mkdir -p $HOME/.themes
    cp -r $HOME/arch_hypr-dots/themes/Colloid-Rice $HOME/.themes
    cp -r $HOME/arch_hypr-dots/themes/Colloid-Rice-hdpi $HOME/.themes
    cp -r $HOME/arch_hypr-dots/themes/Colloid-Rice-xhdpi $HOME/.themes

}

change_cursor() {

    echo "
    #########################################################
    ### Unpacking archive with cursor to /usr/share/icons ###
    #########################################################"

    sudo tar -xf $HOME/arch_hypr-dots/themes/Bibata-Modern-Classic.tar.xz -C /usr/share/icons

}

mk_icons() {

    echo "
    ########################################################
    ### Unpacking archive with icons to /usr/share/icons ###
    ########################################################"

    sudo tar -xf $HOME/arch_hypr-dots/themes/candy-icons.tar.xz -C /usr/share/icons
}

auto_wset() {

    rm -rf $HOME/.config/hypr/hyprland/exec_once.conf
    cp $HOME/arch_hypr-dots/auto/exec_once.conf $HOME/.config/hypr/hyprland

}

easyeffects() {

    rm -rf $HOME/.config/easyeffects/db/easyeffectsrc
    cp $HOME/arch_hypr-dots/easyeffects/nigger_soundEE.json $HOME/.local/share/easyeffects/output/
    cp $HOME/arch_hypr-dots/easyeffects/easyeffectsrc $HOME/.config/easyeffects/db/

}

oh_my_zsh_setup() {

    yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 

}

auto_hyprland() {

    cp $HOME/arch_hypr-dots/CHANGE_BEFORE_INSTALL/.zprofile $HOME

}

auto_login() {

    sudo mkdir -p /etc/systemd/system/getty@tty1.service.d
    sudo cp $HOME/arch_hypr-dots/CHANGE_BEFORE_INSTALL/override.conf /etc/systemd/system/getty@tty1.service.d/

    sudo systemctl daemon-reload

}

install_packages
setup_yay
installing_yay_packages
settingup_system_font
copying_config
gtk_themes
change_cursor
mk_icons
auto_wset
easyeffects
oh_my_zsh_setup
auto_hyprland
auto_login

chmod +x $HOME/arch_hypr-dots/wset.sh


echo "###########################################################################"
echo "###########################################################################"
echo "###########################################################################"
echo "###########################################################################"
echo "###########################################################################"


echo "Done, rebooting in 10 seconds... " 
echo "gtk-theme might not apply correctly but "
echo "these dotfiles install nwg-look so u can change it once u are in hyprland"

sleep 10

reboot
