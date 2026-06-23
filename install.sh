#!/usr/bin/env bash

set -e

echo "Installing Neovim configuration..."

NVIM_CONFIG="$HOME/.config/nvim"

mkdir -p "$HOME/.config"

# Backup existing config
if [ -d "$NVIM_CONFIG" ]; then
    BACKUP="$HOME/.config/nvim.backup.$(date +%Y%m%d_%H%M%S)"
    mv "$NVIM_CONFIG" "$BACKUP"
    echo "Existing Neovim config backed up to:"
    echo "$BACKUP"
fi

# Create config directory
mkdir -p "$NVIM_CONFIG"

# Copy configuration
cp init.lua "$NVIM_CONFIG/"
cp lazy-lock.json "$NVIM_CONFIG/"

cp -r lua "$NVIM_CONFIG/"

echo "Neovim configuration installed."
echo "Open Neovim and run:"
echo ":Lazy sync"
