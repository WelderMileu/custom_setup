#!/bin/bash

# Updating and Installing on nala
sudo apt update
sudo apt install -y nala

# Installing tools with nala program
sudo nala install -y lynx docker.io tig

# Installing ohmyzsh
sh -c "$(curl -fsSl https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
