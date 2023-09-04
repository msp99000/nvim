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

#### Fresh Install

```
brew install neovim
```

#### Clone configurations to local

```
git clone https://github.com/msp99000/nvim.git ~/.config/nvim
```

### Coc Config

Run the following in command mode to install the required coc servers

```
CocInstall coc-pyright coc-css coc-json coc-rust-analyzer coc-tsserver coc-eslint coc-pairs coc-prettier coc-svelte coc-prisma
```
