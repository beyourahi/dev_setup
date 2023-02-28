#!/usr/bin/env bash

# Update system and Install prerequisite packages
sudo apt update
sudo apt upgrade
sudo apt install -y git software-properties-common cargo make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev gcc ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip doxygen bc module-assistant dkms neofetch htop fzf fontconfig
sudo apt remove --purge rustc nodejs -y

# Install exa
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.cargo/env
git clone https://github.com/ogham/exa.git ~/exa
cd ~/exa
cargo build --release
cd ~/
sudo cp -r ~/exa/target/release/exa /usr/local/bin/
rm -rf ~/exa

# Install node (current/latest)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="$([ -z "$XDG_CONFIG_HOME-" ] && printf %s "$HOME/.nvm" || printf %s "$XDG_CONFIG_HOME/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install --lts
curl -qL https://www.npmjs.com/install.sh | sh

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
