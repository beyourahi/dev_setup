<h1 align="center"> Linux / WSL (Debian based) 💻 </h1>

<br />

## Shell setup:
- [Fish Shell](https://github.com/fish-shell/fish-shell)
- [Fisher](https://github.com/jorgebucaran/fisher) - Plugin manager
- [Oh My Posh](https://ohmyposh.dev/) - prompt theme engine
- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts) - Powerline-patched fonts. I use Meslo LGM
- [z for fish](https://github.com/jethrokuan/z) - Directory jumping
- [Exa](https://github.com/ogham/exa) - ls replacement

## Vim setup:
- [Neovim](https://github.com/neovim/neovim) - Vim on steroids
    - [LunarVim](https://github.com/LunarVim/LunarVim) - Cool Neovim config

<br />

### Step 1: 📝 Install `Meslo Nerd Font (Meslo LGM)`: [github.com/ryanoasis/nerd-fonts](https://github.com/ryanoasis/nerd-fonts)

<br />

### Step 2: Install `gh cli` and 🐟 `fish shell`:
    sudo apt update && sudo apt upgrade -y && curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null && sudo apt update && sudo apt install gh && gh auth login && echo 'deb http://download.opensuse.org/repositories/shells:/fish/Debian_11/ /' | sudo tee /etc/apt/sources.list.d/shells:fish.list && curl -fsSL https://download.opensuse.org/repositories/shells:fish/Debian_11/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_fish.gpg > /dev/null && sudo apt update && sudo apt install -y fish && chsh -s /usr/bin/fish && exit

<br />

### Step 3 : 🦈 Install `fisher` and essential plugins:
    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher && fisher install FabioAntunes/fish-nvm edc/bass jethrokuan/z && fisher update && fisher list

<br />

### Step 4:  🔥 Hit this badboi:
    
    git clone https://github.com/beyourahi/dev_setup.git ~/dev_setup && cd ~/dev_setup && chmod +x install.sh && ./install.sh
