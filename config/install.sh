#!/bin/bash

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 

# install ripgrep
sudo curl -LO https://github.com/BurntSushi/ripgrep/releases/download/14.1.0/ripgrep_14.1.0-1_amd64.deb; sudo dpkg -i ripgrep_14.1.0-1_amd64.deb

# install neovim
sudo curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
export PATH="$PATH:/opt/nvim-linux64/bin"

# install kickstart config
git clone https://github.com/adejolx/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim

# switch to the branch with my personal config
cd ~/.config/nvim
git fetch --all
git switch personal
cd ~/

# install npm
nvm install --lts
nvm use --lts

# display neovim version
nvim -v
