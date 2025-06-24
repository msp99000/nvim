local opt = vim.opt -- For conciseness

-- Line numbers
opt.relativenumber = true -- Show relative line numbers
opt.number = true -- Shows absolute line number on cursor line (when relative number is on)

-- Tabs & Indentation
opt.tabstop = 2 -- Two spaces for tabs (prettier default)
opt.shiftwidth = 2 -- Two spaces for indent width
opt.expandtab = true -- Expand tab to spaces
opt.autoindent = true -- Copy indent from current line when starting new one

-- Remove "~" in empty lines
vim.opt.fillchars = { eob = " " }

-- Line wrapping
opt.wrap = false -- Disable line wrapping

-- Search settings
opt.ignorecase = true -- Ignore case when searching
opt.smartcase = true -- If you include mixed case in your search, assumes you want case-sensitive

-- Cursor line
opt.cursorline = false -- Highlight the current cursor line

-- Formatter timeout
-- vim.lsp.buf.format({ timeout_ms = 5000 })

----------------------------------------------------------
-- Appearance
----------------------------------------------------------

-- Turn on termguicolors for tokyonight colorscheme to work
opt.termguicolors = true
opt.background = "dark" -- Colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- Show sign column so that text doesn't shift

-- Backspace
opt.backspace = "indent,eol,start" -- Allow backspace on indent, end of line or insert mode start position

-- Clipboard
opt.clipboard:append("unnamedplus") -- Use system clipboard as default register

-- Split windows
opt.splitright = true -- Split vertical window to the right
opt.splitbelow = true -- Split horizontal window to the bottom

-- Turn off swapfile
opt.swapfile = false

-- Cursor Fix
-- Disable Neovim's default cursor shape control
-- vim.opt.guicursor = ""

-- Force underline cursor always
-- vim.api.nvim_create_autocmd({ "VimEnter", "InsertEnter", "InsertLeave", "VimLeave" }, {
-- 	callback = function()
-- 		vim.fn.system("echo -ne '\\e[4 q'")
-- 	end,
-- })
