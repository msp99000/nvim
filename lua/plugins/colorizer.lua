return {
  "NvChad/nvim-colorizer.lua",

  config = function(_, opts)
    require("colorizer").setup(opts)

    -- execute colorizer as soon as possible
    vim.defer_fn(function()
      require("colorizer").attach_to_buffer(0)
    end, 0)
  end,
}

-- Namespace = "󰌗",
-- Text = "󰉿",
-- Method = "󰆧",
-- Function = "󰆧",
-- Constructor = "",
-- Field = "󰜢",
-- Variable = "󰀫",
-- Class = "󰠱",
-- Interface = "",
-- Module = "",
-- Property = "󰜢",
-- Unit = "󰑭",
-- Value = "󰎠",
-- Enum = "",
-- Keyword = "󰌋",
-- Snippet = "",
-- Color = "󰏘",
-- File = "󰈚",
-- Reference = "󰈇",
-- Folder = "󰉋",
-- EnumMember = "",
-- Constant = "󰏿",
-- Struct = "󰙅",
-- Event = "",
-- Operator = "󰆕",
-- TypeParameter = "󰊄",
-- Table = "",
-- Object = "󰅩",
-- Tag = "",
-- Array = "[]",
-- Boolean = "",
-- Number = "",
-- Null = "󰟢",
-- String = "󰉿",
-- Calendar = "",
-- Watch = "󰥔",
-- Package = "",
-- Copilot = "",
-- Codeium = "",
-- TabNine = "",

