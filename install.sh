!# bin/bash

# MacOS installation
brew uninstall neovim && brew cleanup

echo("Removing the Neovim files, swap files and cache")

rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim

echo("Reinstalling Neovim")

brew install neovim

echo("Cloning the repo")

git clone https://github.com/meuralnetwork/nvim.git ~/.config/nvim
