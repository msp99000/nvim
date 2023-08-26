return {
  "jose-elias-alvarez/null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "mason.nvim" },
  opts = function(_, opts)
    local null_ls = require("null-ls")
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
    null_ls.setup({
      sources = {
        -- Lua
        null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.diagnostics.lua_ls,

        -- Javascript
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.prettier,

        -- Python
        null_ls.builtins.formatting.black,
        -- null_ls.builtins.diagnostics.pyright,
        null_ls.builtins.diagnostics.ruff,
      },
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({
            group = augroup,
            buffer = bufnr,
          })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ bufnr = bufnr })
            end,
          })
        end
      end,
    })
  end,
}
