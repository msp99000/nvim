----------------------------------------
-- Neovim Plugins Setup
----------------------------------------

-- Auto install 'packer' if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- Autocommand to reload Neovim and install/update/remove plugins when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- Import 'packer' safely
local status, packer = pcall(require, "packer")

if not status then
  return
end

-- Add list of plugins to install
return packer.startup(function(use)
  use("wbthomason/packer.nvim") -- packer to manage itself

  use("bluz71/vim-nightfly-guicolors") -- Nightfly colorscheme

  use("nvim-lua/plenary.nvim") -- Lua functions that many plugins use

  use("christoomey/vim-tmux-navigator") -- tmux & split window navigation

  use("szw/vim-maximizer") -- Maximizes and restores current window

  -- Essential plugins
  use("tpope/vim-surround") -- Add, Delete, Change surroundings (it's awesome)
  use("inkarkat/vim-ReplaceWithRegister") -- Replace with register contents using motion (gr + motion)

  -- Tabs
  use("romgrk/barbar.nvim") -- Buffer Windows

  -- Comments
  use("numToStr/Comment.nvim") -- Commenting with 'gcc'

  -- File Explorer
  use("nvim-tree/nvim-tree.lua")

  -- VSCode like icons
  use("nvim-tree/nvim-web-devicons")

  -- Statusline
  use("nvim-lualine/lualine.nvim")

  -- Fuzzy finding w/ telescope
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- Dependency for better sorting performance
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- Fuzzy finder

  -- CoC
  use({ "neoclide/coc.nvim", branch = "release" })

  -- Mason
  use("williamboman/mason.nvim") -- In charge of managing LSP Servers, Linters & Formatters
  use("williamboman/mason-lspconfig.nvim") -- Bridges gap b/w Mason & lspconfig

  -- Configuring LSP Servers
  use("neovim/nvim-lspconfig") -- Easily configure language servers
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  }) -- Enhanced LSP UIs

  use("jose-elias-alvarez/typescript.nvim") -- Additional functionality for typescript server (e.g. rename file & update imports)
  use("onsails/lspkind.nvim") -- VSCode like icons for autocompletion

  -- Formatting & Linting
  use("jose-elias-alvarez/null-ls.nvim") -- Configure formatters & linters
  use("jayp0521/mason-null-ls.nvim") -- Bridges gap b/w mason & null-ls

  -- Treesitter Configuration
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  })

  -- Autoclosing
  use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- Autoclose tags

  -- Git Integration
  use("lewis6991/gitsigns.nvim") -- Show line modifications on left hand side

  if packer_bootstrap then
    require("packer").sync()
  end
end)
