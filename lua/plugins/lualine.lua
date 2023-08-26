-- Lualine configuration
local lualine_tokyonight = require("lualine.themes.tokyonight")
lualine_tokyonight.normal.a.gui = "bold"
lualine_tokyonight.insert.a.gui = "bold"
lualine_tokyonight.visual.a.gui = "bold"
lualine_tokyonight.command.a.gui = "bold"

return {
  "nvim-lualine/lualine.nvim",
  opts = {
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = { "file", "diff", "diagnostics" },
      lualine_x = { "searchcount", "encoding", "progress", "filetype" },
      lualine_y = { "location" },
      lualine_z = { "hostname" },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {},
      lualine_x = { "searchcount", "encoding", "progress" },
      lualine_y = {},
      lualine_z = {},
    },
    options = {
      theme = lualine_tokyonight,
      ignore_focus = { "neo-tree", "alpha-nvim" },
      disabled_filetypes = {},
    },
    extensions = { "neo-tree", "lazy" },
  },
}
