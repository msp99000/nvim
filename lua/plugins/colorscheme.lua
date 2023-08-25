return {
    "folke/tokyonight.nvim",
    config = function()
      -- Load colorscheme
      vim.cmd[[ colorscheme tokyonight ]]
      require("tokyonight").setup{
        style = "night"
      }
    end
}
