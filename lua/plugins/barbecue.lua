local icons = {
  File = "󰈙 ",
  Module = " ",
  Namespace = "󰌗 ",
  Package = " ",
  Class = "󰌗 ",
  Method = "󰆧 ",
  Property = " ",
  Field = " ",
  Constructor = " ",
  Enum = "󰕘",
  Interface = "󰕘",
  Function = "󰊕 ",
  Variable = "󰆧 ",
  Constant = "󰏿 ",
  String = "󰀬 ",
  Number = "󰎠 ",
  Boolean = "◩ ",
  Array = "󰅪 ",
  Object = "󰅩 ",
  Key = "󰌋 ",
  Null = "󰟢 ",
  EnumMember = " ",
  Struct = "󰌗 ",
  Event = " ",
  Operator = "󰆕 ",
  TypeParameter = "󰊄 ",
}

return {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  opts = {
    -- configurations go here
    symbols = {
      ---Modification indicator.
      ---
      ---@type string
      modified = "●",

      ---Truncation indicator.
      ---
      ---@type string
      ellipsis = "…",

      ---Entry separator.
      ---
      ---@type string
      separator = "➤",
    },
    themes = {
      separator = { fg = "#EC4623" },
    },
    kinds = {
      File = " ",
      Module = " ",
      Namespace = "󰌗 ",
      Package = " ",
      Class = " ",
      Method = " ",
      Property = " ",
      Field = " ",
      Constructor = " ",
      Enum = " ",
      Interface = " ",
      Function = "󰊕 ",
      Variable = " ",
      Constant = "󰏿 ",
      String = " ",
      Number = " ",
      Boolean = " ",
      Array = " ",
      Object = " ",
      Key = "󰌋 ",
      Null = "󰟢 ",
      EnumMember = " ",
      Struct = " ",
      Event = " ",
      Operator = " ",
      TypeParameter = "󰊄 ",
    },
  },
}
