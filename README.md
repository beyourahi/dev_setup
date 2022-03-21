<h1 align="center"> Linux / WSL (Debian based) </h1>

<br />
<br />

1. Install `Meslo Nerd Font (Meslo LGM)`: [https://github.com/ryanoasis/nerd-fonts](https://github.com/ryanoasis/nerd-fonts)
2. Set permission and run `install.sh` script to install all apps and packages:
    
    ```bash
    git clone https://github.com/beyourahi/dev_env_setup.git ~/dev_env_setup && cd ~/dev_env_setup && chmod +x install.sh && ./install.sh
    ```
3. Setup fish shell config:
   ```bash
   sudo cp -r ~/dev_env_setup/config.fish ~/.config/fish
   ```
