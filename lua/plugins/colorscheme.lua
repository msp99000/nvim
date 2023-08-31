return {
  -- "folke/tokyonight.nvim",
  "bluz71/vim-nightfly-colors",
  priority = 1000,
  config = function()
    -- Load colorscheme
    vim.cmd("colorscheme nightfly")
    -- require("tokyonight").setup {
    --   style = "night",
    --   transparent = false,
    -- }
  end
}
