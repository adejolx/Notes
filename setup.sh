#!/bin/bash

cd $HOME/.dotfiles/config
./install.sh
cat readline.sh >> "$HOME/.inputrc"
cat exports.sh >> "$HOME/.bashrc"
cat aliases.sh >> "$HOME/.bashrc"
cd
source "$HOME/.bashrc"
echo -e "\nShell sourced successfully"
