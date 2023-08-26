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

-- Buffer Switch
keymap("n", "<S-h>", "<cmd> BufferLineCyclePrev<CR>")
keymap("n", "<S-l>", "<cmd> BufferLineCycleNext<CR>")

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

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" }) -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" }) -- find previously opened files
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" }) -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" }) -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Show open buffers" }) -- list open buffers in current neovim instance
keymap.set("n", "<leader>hf", "<cmd>Telescope harpoon marks<cr>", { desc = "Show harpoon marks" }) -- show harpoon marks
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "Show git commits" }) -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>", { desc = "Show git commits for current buffer" }) -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Show git branches" }) -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Show current git changes per file" }) -- list current changes per file with diff preview ["gs" for git status]
