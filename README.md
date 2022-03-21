<h1 align="center"> Linux / WSL (Debian based) 💻 </h1>

<br />
<br />

1. 📝 Install `Meslo Nerd Font (Meslo LGM)`: [https://github.com/ryanoasis/nerd-fonts](https://github.com/ryanoasis/nerd-fonts)
2. 🔥 Hit this badboi:
    
    ```bash
    git clone https://github.com/beyourahi/dev_setup.git ~/dev_setup && cd ~/dev_setup && chmod +x install.sh && ./install.sh
    ```
    
<br />

## 💩 On Windows hit this first:
    curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null && sudo apt update && sudo apt install gh && gh auth login
