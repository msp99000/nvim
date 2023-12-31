local telescope = require("telescope")

-- import telescope actions safely
local actions = require("telescope.actions")

-- import telescope-ui-select safely
local themes = require("telescope.themes")

-- configure telescope
telescope.setup({
  defaults = {
    pickers = {
      find_files = {
        hidden = true
      }
    },
    ripgrep_arguments = {
      'rg',
      '--hidden',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = "  ",
    selection_caret = " ",
    path_display = { "truncate" },
    -- configure custom mappings
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous,                           -- move to prev result
        ["<C-j>"] = actions.move_selection_next,                               -- move to next result
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,     -- send selected to quickfixlist
      },
    },
  },
  extensions = {
    ["ui-select"] = {
      themes.get_dropdown({}),
    },
  },
})

telescope.load_extension("fzf")
telescope.load_extension("ui-select")
telescope.load_extension("harpoon")
