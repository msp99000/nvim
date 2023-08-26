vim.cmd([[
augroup MyColors
autocmd!
autocmd ColorScheme * highlight BufferLineFill guibg=#191724
autocmd ColorScheme * highlight BufferLineSeparator guifg=#191724
autocmd ColorScheme * highlight BufferLineSeparatorSelected guifg=#191724
augroup END
]])

return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      buffer_close_icon = "󰅖",
      modified_icon = "●",
      close_icon = "",
      left_trunc_marker = "",
      right_trunc_marker = "",
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
      enabled = true,
      delay = 200,
      reveal = { "close" },
     }
    }
  }
}
