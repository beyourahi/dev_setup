#!/usr/bin/env bash

# Update system and Install prerequisite packages
sudo apt update
sudo apt upgrade -y
sudo apt install -y git exa software-properties-common cargo make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev gcc ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip doxygen bc module-assistant dkms neofetch htop fzf fontconfig
sudo apt remove --purge rustc nodejs -y

# Install Oh My Fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
omf install nvm

# Install Node.js LTS
nvm install --lts

# Install NCU & Vercel CLI
npm i -g npm-check-updates vercel

# Install getnf - A better way to install NerdFonts
git clone https://github.com/ronniedroid/getnf.git ~/getnf
cd ~/getnf
./install.sh
./getnf
fc-cache -f -v
cd ~
rm -rf ~/getnf
