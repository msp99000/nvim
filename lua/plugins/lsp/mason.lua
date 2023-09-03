return {

  -- Mason config
  {
    "williamboman/mason.nvim",
    dependencies = {
      -- "williamboman/mason-lspconfig.nvim",
      "jay-babu/mason-null-ls.nvim",
    },
    config = function()
      -- enable mason
      require("mason").setup()
    end
  },

  -- Mason lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      local mason_lspconfig = require("mason-lspconfig")

      mason_lspconfig.setup({
        -- list of servers for mason to install
        ensure_installed = {
          "tsserver",
          "html",
          "cssls",
          "tailwindcss",
          "svelte",
          "lua_ls",
          "graphql",
          "emmet_ls",
          "prismals",
          "pyright",
          "rust_analyzer",
        }
      })
    end
  },

  -- Mason null-ls
  {
    "jay-babu/mason-null-ls.nvim",

    config = function()
      local mason_null_ls = require("mason-null-ls")

      mason_null_ls.setup({
        -- list of formatters & linters for mason to install
        ensure_installed = {
          "prettier", -- ts/js formatter
          "stylua",   -- lua formatter
          "eslint_d", -- ts/js linter
          "black",    -- python formatter
        },
        -- auto-install configured servers (with lspconfig)
        automatic_installation = true,
      })
    end
  },

}
