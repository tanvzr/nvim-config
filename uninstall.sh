#!/usr/bin/env bash

set -e

echo "Removing Neovim configuration..."

NVIM_CONFIG="$HOME/.config/nvim"

if [ -d "$NVIM_CONFIG" ]; then
    rm -rf "$NVIM_CONFIG"
    echo "Removed:"
    echo "$NVIM_CONFIG"
else
    echo "No Neovim config found."
fi

echo "Done."
