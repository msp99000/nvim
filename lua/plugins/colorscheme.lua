return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    -- Load colorscheme
    vim.cmd("colorscheme tokyonight")
    require("tokyonight").setup {
      style = "night",
      transparent = false,
      -- styles = {
      --   functions = {
      --     italics = true
      --   }
      -- },
      ---@param colors ColorScheme
      on_colors = function(colors)
        colors.bg = "#0d0e14"
        colors.bg_sidebar = "#151724"
      end
    }
  end
}
