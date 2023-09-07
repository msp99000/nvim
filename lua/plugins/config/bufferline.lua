local opts = {
  options = {
    mode = "buffers",
    buffer_close_icon = " ",
    modified_icon = " ●",
    close_icon = " ",
    left_trunc_marker = " ",
    right_trunc_marker = " ",

    close_command = function(n)
      require("mini.bufremove").delete(n, false)
    end,

    right_mouse_command = function(n)
      require("mini.bufremove").delete(n, false)
    end,

    diagnostics = "nvim_lsp",

    always_show_bufferline = true,

    diagnostics_indicator = function(_, _, _, _, diag)
      local icons = {
        Error = " ",
        Warn = " ",
        Hint = " ",
        Info = " ",
      }
      local ret = (diag.error and icons.Error .. diag.error .. " " or "")
      .. (diag.warning and icons.Warn .. diag.warning .. "")
      return vim.trim(ret)
    end,

    offsets = {
      {
        filetype = "neo-tree",
        text = " ",
        text_align = "center",
        separator = false,
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
}

return opts
