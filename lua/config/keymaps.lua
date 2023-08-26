-- Set leader key to <SPACE>
vim.g.mapleader = " "

local keymap = vim.keymap.set

-- Neotree toggle shortcut
keymap("n", "<leader>e", "<cmd>Neotree toggle<CR>")

-- Window resize using Shift-arrow keys
keymap("n", "<S-Up>", "<cmd>resize +5<cr>", { desc = "Increase window height" })
keymap("n", "<S-Down>", "<cmd>resize -5<cr>", { desc = "Decrease window height" })
keymap("n", "<S-Left>", "<cmd>vertical resize -5<cr>", { desc = "Decrease window width" })
keymap("n", "<S-Right>", "<cmd>vertical resize +5<cr>", { desc = "Increase window width" })

-- Lazy
keymap("n", "<leader>q", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- Terminal Mappings
keymap("t", "<esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
keymap("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to left window" })
keymap("t", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Go to lower window" })
keymap("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Go to upper window" })
keymap("t", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Go to right window" })
keymap("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })
keymap("t", "<c-_>", "<cmd>close<cr>", { desc = "which_key_ignore" })

-- Windows: Move to window using the <ctrl> hjkl keys
keymap("n", "<leader><Left>", "<C-w>h", { desc = "Go to left window", remap = true })
keymap("n", "<leader><Down>", "<C-w>j", { desc = "Go to lower window", remap = true })
keymap("n", "<leader><Up>", "<C-w>k", { desc = "Go to upper window", remap = true })
keymap("n", "<leader><Right>", "<C-w>l", { desc = "Go to right window", remap = true })
keymap("n", "<leader>ww", "<C-W>p", { desc = "Other window", remap = true })
keymap("n", "<leader>wd", "<C-W>c", { desc = "Delete window", remap = true })
keymap("n", "<leader>-", "<C-W>s", { desc = "Split window below", remap = true })
keymap("n", "<leader>\\", "<C-W>v", { desc = "Split window right", remap = true })

-- Delete single character without copying into register
keymap("n", "x", '"_x')

-- Delete all text in the buffer
keymap("n", "<leader>dd", "<cmd>%d<CR>")

-- Indendations
keymap("v", "[", "<gv")
keymap("v", "]", ">gv")

-- Switch to Visual Line Mode
keymap("n", "vv", "<S-v>", { desc = "Switch to visual line mode" })

-- Insert blank line without leaving normal mode
keymap("n", "<leader><CR>", "o<esc>")

-- Go to first character of line
keymap("n", "00", "^")

-- Line Navigation
keymap("n", "<S-j>", ":m .+1<CR>==") -- move line up(n)
keymap("n", "<S-k>", ":m .-2<CR>==") -- move line down(n)
keymap("v", "<S-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
keymap("v", "<S-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

-- Go to end of line
keymap("n", "11", "$")
