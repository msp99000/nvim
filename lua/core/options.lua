--------------------------------------
-- Neovim Options
--------------------------------------

local opt = vim.opt -- For conciseness

-- Line numbers
opt.relativenumber = true -- Show relative line numbers
opt.number = true -- Shows absolute line number on cursor line (when relative number is on)

-- Tabs & indentation
opt.tabstop = 2 -- 2 Spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 Spaces for indent width
opt.expandtab = true -- Expand tab to spaces
opt.autoindent = true -- Copy indent from current line when starting new one

-- Line wrapping
opt.wrap = false -- Disable line wrapping

-- Search settings
opt.ignorecase = true -- Ignore case when searching
opt.smartcase = true -- If you include mixed case in your search, assumes you want case-sensitive

-- Cursor line
opt.cursorline = true -- Highlight the current cursor line

----------------------- Appearance -----------------------

-- Turn on termguicolors for nightfly colorscheme to work
-- (Use 'iterm2' or any other true color Terminal)
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

opt.iskeyword:append("-") -- Consider string-string as whole word
