local util = require("formatter.util")

require("formatter").setup({
  logging = false,
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    javascript = {
      require("formatter.filetypes.javascript").prettier,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier,
    },
    javascriptreact = {
      require("formatter.filetypes.javascriptreact").prettier,
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").prettier,
    },
    html = {
      require("formatter.filetypes.html").prettier,
      function()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath",
            util.escape_path(util.get_current_buffer_file_path()),
            "--single-quote",
            "--print-width",
            "100",
          },
          stdin = true,
        }
      end,
    },
    svelte = {
      require("formatter.filetypes.svelte").prettier,
    },
    python = {
      require("formatter.filetypes.python").black,
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
})

-- Format on save
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    vim.cmd("FormatWrite")
  end,
}) 