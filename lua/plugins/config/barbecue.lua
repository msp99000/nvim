local opts = {
  -- attach navic
  attach_navic = true,

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
    separator = " ",
  },

  theme = {
    -- base
    normal = { fg = "#96c5f7" },

    -- these highlights correspond to symbols table from config
    ellipsis = { fg = "#737aa2" },
    separator = { fg = "#98E2C6" },
    modified = { fg = "#737aa2" },

    -- these highlights represent the _text_ of three main parts of barbecue
    dirname = { fg = "#96c5f7" },
    basename = { bold = true },
    context = {},

    -- these highlights are used for context/navic icons
    context_file = { fg = "#ac8fe4" },
    context_module = { fg = "#e0af68" },
    context_namespace = { fg = "#e0af68" },
    context_package = { fg = "#7aa2f7" },
    context_class = { fg = "#1EFFBC" },
    context_method = { fg = "#7aa2f7" },
    context_property = { fg = "#1EFFBC" },
    context_field = { fg = "#1EFFBC" },
    context_constructor = { fg = "#ac8fe4" },
    context_enum = { fg = "#ac8fe4" },
    context_interface = { fg = "#ac8fe4" },
    context_function = { fg = "#7aa2f7" },
    context_variable = { fg = "#ac8fe4" },
    context_constant = { fg = "#ff007c" },
    context_string = { fg = "#73daca" },
    context_number = { fg = "#9ece6a" },
    context_boolean = { fg = "#ff9e64" },
    context_array = { fg = "#ac8fe4" },
    context_object = { fg = "#e0af68" },
    context_key = { fg = "#9ece6a" },
    context_null = { fg = "#2ac3de" },
    context_enum_member = { fg = "#ac8fe4" },
    context_struct = { fg = "#ff9e64" },
    context_event = { fg = "#ff9e64" },
    context_operator = { fg = "#73daca" },
    context_type_parameter = { fg = "#73daca" },
  },

  kinds = {
    File = " ",
    Module = " ",
    Namespace = "󰌗 ",
    Package = " ",
    Class = " ",
    Method = " ",
    Property = " ",
    Field = " ",
    Constructor = " ",
    Enum = " ",
    Interface = " ",
    Function = "󰡱 ",
    Variable = " ",
    Constant = "󰏿 ",
    String = " ",
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
}


return opts
