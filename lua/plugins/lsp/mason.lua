return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "jay-babu/mason-null-ls.nvim"
  },
  -- cmd = "Mason",
  -- build = ":MasonUpdate",
  opts = {
    ensure_installed = {
      "rust-analyzer",
      -- "tsserver",
      -- "html",
      -- "cssls",
      -- "tailwindcss",
      -- "svelte",
      -- "graphql",
      -- "emmet_ls",
      -- "prismals"
      "eslint_d",
      "prettier",
      "black",
      "mypy",
      "ruff",
    },
  },
}
