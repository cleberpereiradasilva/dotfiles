#!/bin/bash

echo '\n' >> ~/.bashrc

# Pyenv
echo 'export PATH="/home/paulo/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
echo 'pyenv global 2.7.7' >> ~/.bashrc

# Golang
echo '\n' > ~/.bashrc
echo 'gvm use go1.4' >> ~/.bashrc

# Node
echo '\n' > ~/.bashrc
echo 'nvm use v12.18.0' >> ~/.bashrc

# Sdkman
echo '\n' > ~/.bashrc
echo 'source "$HOME/.sdkman/bin/sdkman-init.sh"' >> ~/.bashrc
echo 'sdk use maven 3.6.3'
echo 'sdk use springboot 2.3.0.RELEASE'
