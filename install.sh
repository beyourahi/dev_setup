#!/usr/bin/env bash

# Update system and Install prerequisite packages
sudo apt update
sudo apt upgrade -y
sudo apt install -y software-properties-common cargo make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev gcc ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip doxygen bc module-assistant dkms neofetch htop ranger

# Install Fish Shell
echo 'deb http://download.opensuse.org/repositories/shells:/fish/Debian_11/ /' | sudo tee /etc/apt/sources.list.d/shells:fish.list
curl -fsSL https://download.opensuse.org/repositories/shells:fish/Debian_11/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_fish.gpg > /dev/null
sudo apt update
sudo apt install -y fish
chsh -s /usr/bin/fish

# Update git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update
sudo apt install -y git

# Install gh cli
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install -y gh

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

# Setup fish config
sudo cp -r ~/dev_setup/config.fish ~/.config/fish/

# Install neovim
git clone https://github.com/neovim/neovim.git ~/neovim
cd ~/neovim
make
sudo make install -y
cd ~/
rm -rf ~/neovim

# Install fisher (plugin manager)
curl -sL https://git.io/fisher | source
fisher install jorgebucaran/fisher

# Install z plugin (directory jumper)
fisher install jethrokuan/z

# Install node (current/latest)
sudo apt remove --purge nodejs -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")" 
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
fisher install FabioAntunes/fish-nvm edc/bass
nvm install node

# Update yarn
corepack enable
yarn set version stable

# Install VS Code
sudo apt install -y code

# Install Python (latest)
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install -y python3

# Install AstroVim
git clone https://github.com/kabinspace/AstroVim ~/.config/nvim
nvim +PackerSync

# Authenticate with a GitHub host
gh auth login
