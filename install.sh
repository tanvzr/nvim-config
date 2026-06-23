#!/usr/bin/env bash

set -e

mkdir -p ~/.config

if [ -d ~/.config/nvim ]; then
    mv ~/.config/nvim ~/.config/nvim.backup.$(date +%Y%m%d_%H%M%S)
fi

mkdir -p ~/.config/nvim

cp init.lua ~/.config/nvim/
cp lazy-lock.json ~/.config/nvim/
cp -r lua ~/.config/nvim/

echo "Installed."
echo "Start Neovim and run :Lazy sync if needed."
