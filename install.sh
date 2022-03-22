#!/usr/bin/env bash

# Update system and Install prerequisite packages
sudo apt update
sudo apt upgrade -y
sudo apt install -y software-properties-common cargo make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev gcc ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip doxygen bc module-assistant dkms neofetch htop ranger

# Update git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update
sudo apt install -y git

# Install exa
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
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

# Install VS Code
sudo apt install -y code

# Install Python (latest)
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install -y python3

# Install AstroVim
git clone https://github.com/kabinspace/AstroVim ~/.config/nvim
nvim +PackerSync

# Exit the terminal
exit
