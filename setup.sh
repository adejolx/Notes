#!/bin/bash

./config/install.sh
cat ./config/exports.txt.txt >> "$HOME/.bashrc"
cat ./config/aliases.txt >> "$HOME/.bashrc"

source '$HOME/.bashrc'

echo -e "\nShell sourced successfully"
