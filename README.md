# Arch Hyprland Dotfiles

> ⚠️ This repository is made for a fresh Arch install.
> Not tested on Manjaro, EndeavourOS or other Arch-based distros.
> please be avare that right now this repository is made completely for my setup so before installing u have to change some things such as
changing monitors config some waybar's config lines and some more *this line will be removed after more common settings applied to this repo*

---

## 📦 Repository Structure

```
CHANGE_BEFORE_INSTALL/   # system overrides (auto-login(tty1))
auto/                    # hyprland exec_once config
config/                  # .config files
easyeffects/             # EasyEffects presets
themes/                  # GTK themes, icons, cursor
wallpapers/              # wallpapers
install.sh               # main installer
wset.sh                  # wallpaper setter
```

---

## ⚡ What This Setup Includes

* Hyprland (completely usable install with everything)
* PipeWire + WirePlumber (Audio)
* Thunar + GVFS (Trash, etc...)
* EasyEffects preset (tested on SteelSeries Arctis Nova 1)
* GTK themes + icons + cursor (Looks)
* Nerd Font (Also looks)
* Auto-login (tty1)
* Auto-login and auto-start of hyprland (so after rebooting u will appear in hyprlock)
* Oh My Zsh (Yes some more looks but i highly recomend to apply powerlevel10k theme to improve ur experience even more guide: https://github.com/romkatv/powerlevel10k)

---

# 🧱 Requirements

* Clean Arch Linux installation
* Internet connection
* User with sudo privileges

---

# 🚀 Installation

## 1️⃣ Install Arch Linux

Install Arch the usual way.

Make sure you:

* Create a user
* Install `sudo`
* Enable networking

---

## 2️⃣ Clone Repository

After logging into your user:

```bash
sudo pacman -S git --noconfirm

git clone https://github.com/uraderevaynko2010-cell/arch_hypr-dots
```

---

## 3️⃣ Edit Before Install

Change:

* auto-login settings
* username inside override.conf

Edit file inside:

```
CHANGE_BEFORE_INSTALL/
```

---

## 4️⃣ Run Installer

```bash
chmod +x arch_hypr-dots/install.sh
./install.sh
```

The script will:

* Update system
* Install required packages
* Install yay
* Install AUR packages
* Copy configs
* Install themes and icons
* Setup auto-login on tty1
* Setup Hyprland auto-start
* Install Oh My Zsh
* Reboot automatically

---

# 🔁 After Reboot

System will:

* Auto-login on tty1
* Automatically start Hyprland

If GTK theme is not applied correctly, use:

```bash
nwg-look
```

---

# ⚠️ Notes

* Script is intended to run once.
* Repository can be deleted after installation.
* Not guaranteed to be idempotent.
* Tested on Arch Linux only.

---

# 🧠 Why?

Because building your own Arch setup is better than using bloated spins.
