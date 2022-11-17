#!/bin/bash

echo "Configuring codespaces....."

rm -rf ~/.oh-my-zsh ~/.bashrc
sudo apt-get remove adwaita-icon-theme bash zsh vim python3.8 sound-theme-freedesktop \
	rsync perl llvm-10 \
	-y

sudo apt autoremove -y && sudo apt autoclean -y

wget https://github.com/neovim/neovim/releases/download/v0.8.1/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb

mkdir -p ~/.config/
git clone https://github.com/MrAdityaAlok/Editor ~/.config/nvim/

echo "Configuration done."
echo "-------------------------------------------------------"
