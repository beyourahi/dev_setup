<h1 align="center"> Linux / WSL (Debian based) 💻 </h1>

<br />

## Shell setup

-   [Fish Shell](https://github.com/fish-shell/fish-shell)
-   [Fisher](https://github.com/jorgebucaran/fisher) - Plugin manager
-   [Nerd fonts](https://github.com/ryanoasis/nerd-fonts) - Powerline-patched fonts. I use Meslo LGM
-   [z for fish](https://github.com/jethrokuan/z) - Directory jumping
-   [Exa](https://github.com/ogham/exa) - ls replacement

<br />

### Step 1: 🚀 Update system

```bash
sudo apt update && sudo apt upgrade -y
```

<br />

### Step 2: 🔽 Install [GitHub CLI](https://github.com/cli/cli/releases) and [VS Code](https://code.visualstudio.com/)

#### - set fish as default shell, authenticate github and reboot computer

```bash
chsh -s /usr/bin/fish && gh auth login && reboot
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
