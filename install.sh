#!/usr/bin/env bash

OS=$(uname)

if [ "$OS" == "Darwin" ]; then
    echo "Detected macOS. Uninstalling Neovim via brew..."
    brew uninstall neovim && brew cleanup
    echo "Removing all Neovim files, swap files and cache..."
    rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim
    echo "Reinstalling Neovim via brew..."
    brew install neovim
elif [ "$OS" == "Linux" ]; then
    echo "Detected Linux. Uninstalling Neovim via apt-get..."
    sudo apt-get remove neovim -y
    sudo apt-get autoremove -y
    echo "Removing all Neovim files, swap files and cache..."
    rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim
    echo "Reinstalling Neovim via apt-get..."
    sudo apt-get update && sudo apt-get install neovim -y
else
    echo "Unsupported OS: $OS"
    exit 1
fi

echo "Cloning the repo..."
git clone https://github.com/msp99000/nvim.git ~/.config/nvim
