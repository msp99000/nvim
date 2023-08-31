return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  opts = {
    sources = {
      "filesystem",
      "git_status"
    },
    source_selector = {
      winbar = false,
      statusline = false
    },
    window = {
      width = 30,
    },
    default_component_configs = {
      container = {
        enable_character_fade = false
      },
      indent = {
        with_expanders = true,
        expander_collapsed = "▶",
        expander_expanded = "◢",
      },
      git_status = {
        symbols = {
          -- Change type
          added = "✚", -- or "✚", but this is redundant info if you use git_status_colors on the name
          modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
          deleted = "✖", -- this can only be used in the git_status source
          renamed = "󰁕", -- this can only be used in the git_status source
          -- Status type
          untracked = "",
          ignored = "",
          unstaged = "󰄱",
          staged = "",
          conflict = "",
        },
      },
      modified = {
        symbol = "",
        highlight = "NeoTreeModified",
      },
    },
    filesystem = {
      filtered_items = {
        hide_gitignored = false,
      },
    },
  },
}
