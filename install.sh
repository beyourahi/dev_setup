#!/usr/bin/env bash

# Update system and Install prerequisite packages
sudo apt update
sudo apt upgrade
sudo apt install -y software-properties-common cargo make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev gcc ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip doxygen bc module-assistant dkms neofetch htop ranger fzf fontconfig

# Update git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update
sudo apt install -y git

# Install exa
sudo apt remove rustc
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.cargo/env
git clone https://github.com/ogham/exa.git ~/exa
cd ~/exa
cargo build --release
cd ~/
sudo cp -r ~/exa/target/release/exa /usr/local/bin/
rm -rf ~/exa

# Install oh-my-posh
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh
mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.json
rm ~/.poshthemes/themes.zip

# Install neovim
git clone https://github.com/neovim/neovim.git ~/neovim
cd ~/neovim
make
sudo make install
cd ~/
rm -rf ~/neovim

# Install Python (latest)
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install -y python3
sudo apt install -y pip

# Install node (current/latest)
sudo apt remove --purge nodejs -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install --lts
curl -qL https://www.npmjs.com/install.sh | sh

# Install pnpm
npm i -g pnpm

# Update yarn
corepack enable
yarn set version stable

# Install Vercel CLI globally
npm i -g vercel

# Re-install fish shell
git clone https://github.com/fish-shell/fish-shell.git ~/fish-shell && cd fish-shell && cmake . && make && sudo make install && chsh -s /usr/bin/fish

# Install getnf - A better way to install NerdFonts
git clone https://github.com/ronniedroid/getnf.git ~/getnf
cd ~/getnf
./install.sh
cd ~
rm -rf ~/getnf
getnf
fc-cache -f -v

