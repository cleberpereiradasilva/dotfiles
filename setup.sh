#!/bin/bash

echo "Installing dependencies os..."
sudo apt-get update
sudo apt -y install libdbus-glib-1-dev \
                    libdbus-1-dev \
                    make \
                    build-essential \
                    libssl-dev \
                    zlib1g-dev \
                    libbz2-dev \
                    libreadline-dev \
                    libsqlite3-dev \
                    wget \
                    curl \
                    llvm \
                    libncurses5-dev \
                    xz-utils \
                    tk-dev \
                    libxml2-dev \
                    libxmlsec1-dev \
                    libffi-dev \
                    liblzma-dev \
                    i3 \
                    i3-wm \
                    i3-wm-dbg \
                    i3blocks \
                    i3lock \
                    i3lock-fancy \
                    i3pystatus \
                    i3status \
                    rofi \
										feh \
										clangd \
										bison \
										docker.io \
										docker-compose \
										thunar \
										tmate \ 
										clipboard \
										xclip \
										xsel \
										neofetch \
										silversearcher-ag \
                    ctags \
										tor \
										proxychains \
										dunst \
										ruby-dev \
										ruby \
										ruby-bundler

# .XDEFAULTS
cp .Xdefaults ~/.Xdefaults

mkdir -p ~/.config/kitty
cp kitty.conf ~/.config/kitty/kitty.conf

mkdir -p ~/.config/kitty/themes
git clone https://github.com/0p4ul0/kitty-themes.git themes
cp ./themes/themes/* ~/.config/kitty/themes

# PYTHON
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

export PATH="/home/paulo/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

pyenv install 3.7.7
pyenv global 3.7.7

pip install neovim pylint flake8 pylama pydocstyle prospector mypy pyls-mypy yapf black

# NODEJS
echo "\n" >> ~/.bashrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install v12.18.0
nvm use v12.18.0
npm install neovim -g

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# GOLANG
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
[[ -s "/home/paulo/.gvm/scripts/gvm" ]] && source "/home/paulo/.gvm/scripts/gvm"
gvm install go1.4 -B
gvm use go1.4

# BUMBLEBEE-STATUS
pip install requests
pip install netifaces
pip install psutil
pip install bumblebee-status

# FONTES
git clone https://github.com/0p4ul0/fonts.git
mkdir -p ~/.local/share/fonts
cp fonts/* ~/.local/share/fonts

# I3WM
cp ./i3/config ~/.config/i3/
cp status.sh ~/.config/i3/

# NEOVIM 
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo snap install --edge nvim --classic
mkdir -p ~/.config/nvim/
cp vim/* ~/.config/nvim/
nvim -E -c PlugInstall -c q
cp ./vim/transparent.vim ~/.vim/plugged/vim-airline-themes/autoload/airline/themes/transparent.vim

# WALLPAPERS
cp -rf ./wallpaper ~/

# JAVA
curl -s "https://get.sdkman.io" | bash


