-- Set <Space> as the 'leader' key
vim.g.mapleader = " "

local keymap = vim.keymap.set -- for conciseness

-- Function for buffer delete
local bufdel = function()
  local buffer_count = vim.fn.len(vim.fn.filter(vim.fn.range(1, vim.fn.bufnr('$')), 'buflisted(v:val)'))

  if buffer_count == 1 then
    vim.cmd('bd | Alpha')
    vim.cmd('Neotree close')
  else
    vim.cmd('bp | bd#')
  end
end

-- Use "<ESC>" to clear search highlights
keymap("n", "<ESC>", ":noh<CR>")

-- Window resize using Shift-arrow keys
keymap("n", "<Tab-k>", "<cmd>resize +5<cr>", { desc = "Increase window height" })
keymap("n", "<Tab-j>", "<cmd>resize -5<cr>", { desc = "Decrease window height" })
keymap("n", "<Tab-h>", "<cmd>vertical resize -5<cr>", { desc = "Decrease window width" })
keymap("n", "<Tab-l>", "<cmd>vertical resize +5<cr>", { desc = "Increase window width" })

-- Buffer Delete
keymap("n", "<leader>x", bufdel , { desc = "Delete current buffer" })

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

-- Insert blank line without leaving normal mode
keymap("n", "<leader><CR>", "o<esc>")

-- Source File
keymap("n", "<leader>rr", "<cmd>source %<CR>", { desc = "Source File" })

-- Line Navigation
keymap("n", "<S-j>", ":m .+1<CR>==")     -- move line up(n)
keymap("n", "<S-k>", ":m .-2<CR>==")     -- move line down(n)
keymap("v", "<S-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
keymap("v", "<S-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

-- Go to first character of line
keymap("n", "11", "^")

-- Go to end of line
keymap("n", "00", "$")
