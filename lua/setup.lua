------------------------------------------------------------
--------                S E T U P                   --------
------------------------------------------------------------

-- Lazy Path
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Bootstrap Lazy
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

-- Lazy setup
require("lazy").setup({
  spec = {
    { import = "plugins" },
    -- { import = "plugins.config.lsp" },
  },
  defaults = {
    lazy = false,
    version = false, -- always use the latest git commit
  },
  install = { colorscheme = { "tokyonight" } },
  checker = { enabled = true },         -- automatically check for plugin updates
  change_detection = { notify = true }, -- notifies of config change
})

-- Plugin Keymaps
local keymap = vim.keymap.set

-- Neotree toggle shortcut
keymap("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc =  "Neotree Toggle" })

-- Toggleterm
keymap("n", "<leader>.", "<cmd> ToggleTerm<CR>", { desc = "Toggle Toggleterm" })

-- Launch Mason
keymap("n", "<leader>lm", "<cmd>Mason<CR>", { desc = "Launch Mason" })

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })                -- find files within current working directory, respects .gitignore
keymap("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })                  -- find previously opened files
keymap("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })                      -- find string in current working directory as you type
keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })       -- find string under cursor in current working directory
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Show open buffers" })                         -- list open buffers in current neovim instance
keymap("n", "<leader>hf", "<cmd>Telescope harpoon marks<cr>", { desc = "Show harpoon marks" })                  -- show harpoon marks
keymap("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "Show git commits" })                      -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>", { desc = "Show git commits for current buffer" }) -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Show git branches" })                    -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Show current git changes per file" })      -- list current changes per file with diff preview ["gs" for git status]
