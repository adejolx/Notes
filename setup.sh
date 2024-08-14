#!/bin/bash

cd $PWD/config
./install.sh
cat exports.txt >> "$HOME/.bashrc"
cat aliases.txt >> "$HOME/.bashrc"
cd
source "$HOME/.bashrc"
echo -e "\nShell sourced successfully"
