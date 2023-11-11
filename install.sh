!# bin/bash

# Installation for MacOS
brew uninstall neovim && brew cleanup

 Remove Neovim files, swap files and cache
echo("Removing all Neovim files, swap files and cache")
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim

# Reinstall Neovim
echo("Reinstalling Neovim")
brew install neovim

# Clone the repo
echo("Cloning the repo")
git clone https://github.com/meuralnetwork/nvim.git ~/.config/nvim
