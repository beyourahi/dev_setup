# Linux (Debian)

1. Install package `add-apt-repository`
    
    ```bash
    sudo apt-get install software-properties-common -y && sudo apt update
    ```
    
2. Update `git`
    
    ```bash
    sudo add-apt-repository ppa:git-core/ppa -y && sudo apt update && sudo apt install git
    ```
    
3. Install `gh cli`
    
    ```bash
    curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
    sudo apt update && sudo apt install gh
    
    # setup gh
    gh auth login
    ```
    
4. Install `fish shell`
    
    ```bash
    sudo apt-add-repository ppa:fish-shell/release-3 -y && sudo apt update && sudo apt install fish
    
    # change shell to fish
    chsh -s $(which fish)
    
    # if error, add fish path to /etc/shells then change shell to fish
    ```
    
5. Install `fisher`
    
    ```bash
    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
    ```
    
6. Install `z`
    
    ```bash
    fisher install jethrokuan/z
    ```
    
7. Install `exa`
    
    ```bash
    #  Install pre-requisites
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    sudo apt install cargo
    
    # build and install exa
    gh repo clone ogham/exa && cd exa
    cargo build --release
    copy exa binary from target/release to /usr/local/bin
    ```
    
8. Install `oh-my-posh`
    
    ```bash
    # Download Oh My Posh
    sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
    sudo chmod +x /usr/local/bin/oh-my-posh
    
    # Download the themes
    mkdir ~/.poshthemes
    wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
    unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
    chmod u+rw ~/.poshthemes/*.json
    rm ~/.poshthemes/themes.zip
    
    # Initialize Oh My Posh in ~/.config/fish/config.fish
    oh-my-posh prompt init fish --config '~/.poshthemes/takuya.omp.json' | source
    
    # Once added, reload your config for the changes to take effect
    . ~/.config/fish/config.fish
    ```
    
9. Update`node.js`
    
    ```bash
    # Uninstall previous node version if exists
    sudo apt remove --purge nodejs -y
    
    # Install NVM
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
    
    # Install fisher
    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
    
    # fish-nvm
    fisher install FabioAntunes/fish-nvm edc/bass
    
    # Install node
    nvm install node
    ```
    
10. Update `yarn`
    
    ```bash
    corepack enable
    yarn policies set-version
    yarn set version stable
    ```
    
11. Install latest `python`
    
    ```bash
    # Install build pre-requisites
    sudo apt update && sudo apt upgrade -y && sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev
     
    # Download latest source
    [https://www.python.org/downloads/source/](https://www.python.org/downloads/source/)
    
    # Build Python
    tar xvf Python-<version_number>.tgz
    cd Python-<version_number>
    ./configure --enable-optimizations --with-ensurepip=install
    sudo make -j 8 && sudo make altinstall
    rm -rf Python-<version_number>.tgz Python-<version_number>
    
    # set default python version in ~/.config/fish/config.fish
    alias python "/usr/local/bin/python<version>"
    ```
    
12. Install `neovim`

    ```bash
    # Install build pre-requisites
    sudo apt install -y gcc ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen

    # Build neovim
    gh repo clone neovim/neovim && cd neovim && make && sudo make install
    rm -rf neovim
    ```

13. Install `astro vim`

    ```bash
    git clone https://github.com/kabinspace/AstroVim ~/.config/nvim
    nvim +PackerSync
    ```

14. Install `Visual Studio Code`
    
    ```bash
    # Download .deb package
    [https://code.visualstudio.com/Download](https://code.visualstudio.com/Download)
    
    # Install package
    sudo dpkg -i <package_name>.deb
    
    ```
