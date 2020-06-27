#!/bin/bash

/home/paulo/.pyenv/shims/bumblebee-status -m nic cpu memory publicip bluetooth date time battery taskwarrior -p nic.format='{ip} {ssid}' root.path=/ time.format="%H:%M" date.format="%a, %b %d %Y" nic.exclude=lo,docker,vboxnet,veth,br,ppp0,enp3s0 -t iceberg-dark-powerline
