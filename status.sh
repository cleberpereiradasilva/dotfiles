#!/bin/bash

export PATH="/home/paulo/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

bumblebee-status -m nic cpu memory publicip bluetooth date time battery -p root.path=/ time.format="%H:%M" date.format="%a, %b %d %Y" -t onedark-powerline