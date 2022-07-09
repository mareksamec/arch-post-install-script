!#/bin/bash
# Pacman packages installation
echo "Installing basic package set"
sudo pacman -S
alacritty alsa-utils ark avahi discord dkms dnsutils dolphin firefox freerdp fzf gimp git gvim gvim gwenview gzip highlight hexchat imagemagick jq kdeconnect kdialog keepassxc kolourpaint kolourpaint kwalletmanager lazygit libreoffice-fresh linux-headers network-manager-applet networkmanager-openvpn newsboat nmap ntfs-3g okular okular openssh otf-ipafont otf-ipamjfont p7zip packagekit-qt5 python python-pip qutebrowser ranger skanlite spectacle sshfs terminator unzip urxvt-perls vivaldi wget xclip xorg-xrandr zip aspell-cs libreoffice-fresh-cs oxygen-icons tela-icons

# AUR packages
echo "Installing YAY - AUR helper:"
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~

echo "Installing useful AUR only packages:"
# Remove noto-fonts-emoji to avodi noto font spam
yay -S fd lf megasync-bin nerd-fonts-hack noto-fonts-emoji nvim-packer-git ripgrep rxvt-unicode-pixbuf-patched slack-desktop spotify ttf-twemoji librewolf-bin vivaldi-snapshot vivaldi-widevine volctl

echo "That's all folks!"

