#!/bin/bash

echo "Installing i3wm configuration..."
cp ./i3/config ~/.config/i3/

echo "Installing polybar configuration..."
cp -rf polybar/* ~/.config/polybar

echo "Installing neovim plug manager..."
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing neovim configuration..."
cp ./vim/init.vim ./vim/coc-settings.json ~/.config/nvim/
nvim -E -c PlugInstall -c q

echo "Installing neovim transparent airline..."
cp ./vim/transparent.vim ~/.vim/plugged/vim-airline-themes/autoload/airline/themes/transparent.vim

echo "Copying wallpaper directory..."
cp -rf ./wallpaper ~/

echo "Copying font awesome..."
git clone https://github.com/FortAwesome/Font-Awesome.git

cp ./Font-Awesome/webfonts/fa-solid-900.ttf ~/.local/share/fonts
cp ./Font-Awesome/webfonts/fa-brands-400.ttf ~/.local/share/fonts
cp ./Font-Awesome/webfonts/fa-regular-400.ttf ~/.local/share/fonts

cp .Xdefaults ~

