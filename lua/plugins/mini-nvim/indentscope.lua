return {
  "echasnovski/mini.indentscope",
  version = "*",
  lazy = false,
  config = function()
    require("mini.indentscope").setup({
      symbol = "▏",
      options = {
        border = "both",
      },
    })
  end,
}
