#!/usr/bin/env bash

# Install node (current/latest)
sudo apt remove --purge nodejs -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
fisher install FabioAntunes/fish-nvm edc/bass jethrokuan/z
nvm install node

# Update yarn
corepack enable
yarn set version stable

# Exit terminal
exit
