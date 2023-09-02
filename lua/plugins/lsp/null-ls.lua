return {
  "jose-elias-alvarez/null-ls.nvim",
  dependencies = {
    "jay-babu/mason-null-ls.nvim",
  },
  event = { "BufReadPre", "BufNewFile" },
  lazy = false,
  config = function()
    local null_ls = require("null-ls")
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
    null_ls.setup({
      sources = {
        -- Lua
        null_ls.builtins.formatting.stylua,

        -- Javascript
        null_ls.builtins.formatting.prettier,
        -- null_ls.builtins.formatting.prettier.with({
        --   filetypes = {
        --     "javascript",
        --     "typescript",
        --     "css",
        --     "scss",
        --     "html",
        --     "json",
        --     "yaml",
        --     "markdown",
        --     "graphql",
        --     "md",
        --     "txt",
        --   },
        -- }),

        -- Python
        null_ls.builtins.formatting.black,
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
