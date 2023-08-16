-- Import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")

if not status then
  return
end

-- Configure treesitter
treesitter.setup({
  -- Enable syntax highlighting
  highlight = {
    enable = true,
  },

  -- Enable indentation
  indent = { enable = true },

  -- Enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },

  -- Ensure these language parsers are installed
  ensure_installed = {
    "json",
    "typescript",
    "tsx",
    "yaml",
    "html",
    "css",
    "markdown",
    "markdown_inline",
    "svelte",
    "graphql",
    "vim",
    "dockerfile",
    "gitignore",
    "python",
    "rust",
    "go",
  },

  -- Auto install above language parsers
  auto_install = true,
})
