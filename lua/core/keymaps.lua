-- Set <Space> as the 'leader' key
vim.g.mapleader = " "

local keymap = vim.keymap.set -- for conciseness

-- Change register to system clipboard
vim.opt.clipboard = "unnamedplus"

-- Function to delete buffer
local bufdel = function()
	local buffer_count = vim.fn.len(vim.fn.filter(vim.fn.range(1, vim.fn.bufnr("$")), "buflisted(v:val)"))

	if buffer_count == 1 then
		vim.cmd("bd | Alpha")
		vim.cmd("Neotree close")
	else
		vim.cmd("bp | bd#")
	end
end

-- Use "<ESC>" to clear search highlights
keymap("n", "<ESC>", ":noh<CR>")

-- Buffer Delete
keymap("n", "<leader>x", bufdel, { desc = "Delete current buffer" })

-- Buffer rename
keymap("n", "<leader>br", "<cmd>lua vim.lsp.buf.rename()<CR>", { desc = "Rename current buffer" })

-- Buffer format
keymap("n", "<leader>fm", "<cmd>lua vim.lsp.buf.format()<CR>")

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

-- Select all text in the buffer
keymap("n", "<leader>ss", "ggVG")

-- Indendations
keymap("v", "[", "<gv")
keymap("v", "]", ">gv")

-- Switch to Visual Line Mode
keymap("n", "vv", "<S-v>", { desc = "Switch to visual line mode" })

-- Navigate halfway to document
keymap("n", ",,", "50% zz", { desc = "Switch to visual line mode" })

-- Insert blank line without leaving normal mode
keymap("n", "<leader><CR>", "o<esc>")

-- Source File
keymap("n", "<leader>rr", "<cmd>source %<CR>", { desc = "Source File" })

-- Go to first character of line
keymap("n", "1", "^")

-- Go to end of line
keymap("n", "0", "$")

-- Go to last line of the buffer
keymap("n", "ll", "G")

-- Yank to system clipboard
keymap({ "n", "v" }, "y", [["+y]])

-- Paste from system clipboard
keymap({ "n", "v" }, "p", [["+p]])
