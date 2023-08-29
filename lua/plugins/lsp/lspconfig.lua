return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { "folke/neoconf.nvim", cmd = "Neoconf", config = false, dependencies = { "nvim-lspconfig" } },
    { "folke/neodev.nvim", opts = {} },
  },
  opts = {
    autoformat = false,
  },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local lspconfig = require("lspconfig")
    -- Lua config
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }, -- Make language server recognize "vim" global
          },
          telemetry = { enable = false },
          workspace = {
            { checkThirdParty = false },
            -- make language server aware of runtime files
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    })

    -- Python config
    lspconfig.pyright.setup({
      capabilities = capabilities,
      filetypes = { "python" },
    })

    -- CSS config
    require("lspconfig").cssls.setup({
      capabilities = capabilities,
    })

    -- emmet_ls language server
    lspconfig.emmet_ls.setup({
      capabilities = capabilities,
      -- on_attach = on_attach,
      filetypes = {
        "astro",
        "css",
        "eruby",
        "html",
        "htmldjango",
        "javascriptreact",
        "less",
        "pug",
        "sass",
        "scss",
        "svelte",
        "typescriptreact",
        "vue",
      },
    })

    -- Typescript config
    require("lspconfig").tsserver.setup({
      capabilities = capabilities,
    })
  end,
}
