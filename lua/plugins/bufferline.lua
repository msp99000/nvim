-- vim.cmd([[
-- augroup MyColors
-- autocmd!
-- autocmd ColorScheme * highlight BufferLineFill guibg=#191724
-- autocmd ColorScheme * highlight BufferLineSeparator guifg=#191724
-- autocmd ColorScheme * highlight BufferLineSeparatorSelected guifg=#191724
-- augroup END
-- ]])

return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      buffer_close_icon = "󰅖",
      modified_icon = "●",
      close_icon = "",
      left_trunc_marker = "",
      right_trunc_marker = "",
      close_command = function(n)
        require("mini.bufremove").delete(n, false)
      end,
      right_mouse_command = function(n)
        require("mini.bufremove").delete(n, false)
      end,
      diagnostics = "nvim_lsp",
      always_show_bufferline = false,
      diagnostics_indicator = function(_, _, diag)
        local icons = require("lazyvim.config").icons.diagnostics
        local ret = (diag.error and icons.Error .. diag.error .. " " or "")
          .. (diag.warning and icons.Warn .. diag.warning or "")
        return vim.trim(ret)
      end,
      offsets = {
        {
          filetype = "neo-tree",
          text = "File Explorer",
          text_align = "center",
          separator = true,
        },
      },
      separator_style = "slant",
      themable = true,
      hover = {
        enabled = false,
        delay = 200,
        reveal = { "close" },
      },
    },
  },
}
