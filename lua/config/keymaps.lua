-- Set leader key to <SPACE>
vim.g.mapleader = " "

local keymap = vim.keymap.set

-- Neotree toggle shortcut
keymap("n", "<leader>e", "<cmd>Neotree toggle<CR>")
