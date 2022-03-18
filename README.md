# Linux / WSL (Debian based)

<br>

- Install `Meslo Nerd Font`: [https://github.com/ryanoasis/nerd-fonts](https://github.com/ryanoasis/nerd-fonts)
- Download `Python`source: [https://www.python.org/downloads/source/](https://www.python.org/downloads/source/)
- **[OPTIONAL]** Download `Visual Studio Code` .deb package: [https://code.visualstudio.com/Download](https://code.visualstudio.com/Download)

<br>

1. Update system and Install ***prerequisite packages***
    
    ```bash
    sudo apt update && sudo apt upgrade -y && sudo apt install -y software-properties-common cargo make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev gcc ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip doxygen bc module-assistant dkms neofetch htop ranger
    ```
    
2. Install `fish shell`
    
    ```bash
    sudo apt-add-repository ppa:fish-shell/release-3 -y && sudo apt update && sudo apt install -y fish && chsh -s $(which fish)
    
    # if error starting up fish shell, add fish path to /etc/shells then change the shell to fish
    ```
    
3. Update `git` , `node.js` ,`yarn`and Install `gh cli`, `exa` ,`oh-my-posh` ,`neovim`,`astro vim`, `fisher`,`z` 
    
    ```bash
    sudo add-apt-repository ppa:git-core/ppa -y && sudo apt update && sudo apt install -y git && curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null && sudo apt update && sudo apt install -y gh && gh auth login && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh && gh repo clone ogham/exa ~/exa && cd exa && cargo build --release && cd ~/ && sudo cp -r ~/exa/target/release/exa /usr/local/bin/ && rm -rf ~/exa && sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh && sudo chmod +x /usr/local/bin/oh-my-posh && mkdir ~/.poshthemes && wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip && unzip ~/.poshthemes/themes.zip -d ~/.poshthemes && chmod u+rw ~/.poshthemes/*.json && rm ~/.poshthemes/themes.zip && gh repo clone neovim/neovim ~/neovim && cd ~/neovim && make && sudo make install && cd ~/ && rm -rf ~/neovim && gh repo clone kabinspace/AstroVim ~/.config/nvim && nvim +PackerSync && curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher && fisher install jethrokuan/z && sudo apt remove --purge nodejs -y && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash && fisher install FabioAntunes/fish-nvm edc/bass && nvm install node && corepack enable && yarn set version stable
    
    # copy config.fish file to ~/.config/fish/
    ```
    
4. Update `python`
    
    ```bash
    # Extract to home directory and Install Python
    tar xvf Python-<version_number>.tgz && cd Python-<version_number> && ./configure --enable-optimizations --with-ensurepip=install && sudo make -j 8 && sudo make altinstall && cd .. && sudo rm -rf Python-<version_number>.tgz Python-<version_number>
    
    # set default python version in ~/.config/fish/config.fish
    alias python "/usr/local/bin/python<version_number>"
    ```
    
5. **[OPTIONAL]** Install `Visual Studio Code`
    
    ```bash
    # Install package
    sudo dpkg -i <package_name>.deb
    ```
    
    <br>
    
    > might need to update fish shell and nvm version number in the future
    >
