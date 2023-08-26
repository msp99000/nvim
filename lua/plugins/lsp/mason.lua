return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim"
  },
  opts = {
    ensure_installed = {
      "rust-analyzer",
      "tsserver",
      "html",
      "cssls",
      "tailwindcss",
      "svelte",
      "graphql",
      "emmet_ls",
      "prismals"
    },
  },
}
