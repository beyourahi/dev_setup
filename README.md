<h1 align="center"> Linux / WSL (Debian based) 💻 </h1>

<br />

## Shell setup

-   [Fish Shell](https://github.com/fish-shell/fish-shell)
-   [Fisher](https://github.com/jorgebucaran/fisher) - Plugin manager
-   [Oh My Posh](https://ohmyposh.dev/) - prompt theme engine
-   [Nerd fonts](https://github.com/ryanoasis/nerd-fonts) - Powerline-patched fonts. I use Meslo LGM
-   [z for fish](https://github.com/jethrokuan/z) - Directory jumping
-   [Exa](https://github.com/ogham/exa) - ls replacement

## Vim setup

-   [LunarVim](https://github.com/LunarVim/LunarVim) - Cool [Neovim](https://github.com/neovim/neovim) config

<br />

### Step 1: 🚀 Update system

```bash
sudo apt update && sudo apt upgrade
```

<br />

### Step 2: 🔽 Install [gh cli](https://github.com/cli/cli/releases) and 🐟 fish shell

```bash
git clone https://github.com/fish-shell/fish-shell.git ~/fish-shell && cd fish-shell && cmake . && make && sudo make install && chsh -s /usr/bin/fish && gh auth login && exit
```

<br />

### Step 3 : 🦈 Install `fisher` and essential plugins

```bash
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher && fisher install FabioAntunes/fish-nvm edc/bass jethrokuan/z && fisher update && fisher list
```

<br />

### Step 4: 🔥 Run install script and setup `fish` config files

```bash
 git clone https://github.com/beyourahi/dev_setup.git ~/dev_setup && cd ~/dev_setup && chmod +x install.sh && ./install.sh && sudo cp -r ~/dev_setup/.config/fish/config.fish ~/.config/fish/ && . ~/.config/fish/config.fish && exit
```

<br />

### Step 5: 🖥️ Install Lunar Vim

```bash
bash (curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh | psub) && sudo cp -r ~/dev_setup/.config/lvim/config.lua ~/.config/lvim/
```

<br />

### Step 6: 📜 Setup Min browser userscripts

```bash
 sudo cp -r ~/dev_setup/.config/Min/userscripts/dark-mode.js ~/.config/Min/userscripts/ && sudo cp -r ~/dev_setup/.config/Min/userscripts/json-viewer.js ~/.config/Min/userscripts/ && sudo rm -rf ~/dev_setup
```
