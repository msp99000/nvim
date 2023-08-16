-- Set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap.set -- For conciseness

---------------------------------------------
-- General Keymaps
---------------------------------------------

-- Use 'jk' to exit insert mode
keymap("i", "jk", "<ESC>")

-- Clear search highlights
keymap("n", "<leader>nh", ":nohl<CR>")

-- Delete single character without copying into register
keymap("n", "x", '"_x')

-- Paste from outer source/clipboard
keymap("n", "<leader>p", '"+p')

-- Increment/Decrement numbers
keymap("n", "<leader>+", "<C-a>") -- Increment
keymap("n", "<leader>-", "<C-x>") -- Decrement

-- Window management
keymap("n", "<leader>sh", "<C-w>v") -- Split window vertically
keymap("n", "<leader>sv", "<C-w>s") -- Split window horizontally
keymap("n", "<leader>se", "<C-w>=") -- Make split windows equal width & height
keymap("n", "<leader>sx", ":close<CR>") -- Close current split window

keymap("n", "<leader>to", ":tabnew<CR>") -- Open new tab
keymap("n", "<leader>tx", ":tabclose<CR>") -- Close current tab
keymap("n", "<leader>tn", ":tabn<CR>") --  Go to next tab
keymap("n", "<leader>tp", ":tabp<CR>") --  Go to previous tab

------------------------------------------------------------------------------------------
-- Plugin Keybinds
------------------------------------------------------------------------------------------

-- Vim window maximizer
keymap("n", "<leader>sm", ":MaximizerToggle<CR>") -- Toggle split window maximization

-- Tree Toggler
keymap("n", "<leader>e", ":NvimTreeToggle<CR>") -- Toggle file explorer
-- keymap("n", "<TAB>", ":NvimTreeOpen<CR>") -- Toggle file explorer

-- Buffer Switching
keymap("n", "<leader>bp", ":bprev<CR>") -- Go to previous buffer
keymap("n", "<leader>bn", ":bnext<CR>") -- Go to next buffer

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- Find files within current working directory, respects .gitignore
keymap("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- Find string in current working directory as you type
keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- Find string under cursor in current working directory
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- List open buffers in current neovim instance
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- List available help tags

-- Telescope git commands
keymap("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- List all git commits (use <cr> to checkout) ["gc" for git commits]
keymap("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- List git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- List git branches (use <cr> to checkout) ["gb" for git branch]
keymap("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- List current changes per file with diff preview ["gs" for git status]

-- Restart LSP server
keymap("n", "<leader>rs", ":LspRestart<CR>") -- Mapping to restart LSP if necessary
