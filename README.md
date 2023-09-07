# 0 to PDE : Ultimate Neovim setup

## MacOS

Remove the existing neovim setups for a clean install

```
brew uninstall neovim && brew cleanup
```

Remove existing configurations and swap files if any

```
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim
```

#### Fresh Install Neovim

```
brew install neovim
```

#### Clone configurations to local

```
git clone https://github.com/msp99000/nvim.git ~/.config/nvim
```

Wait sometime till all the dependencies are loaded. Don't worry if it throws some errors as it's the first run.
