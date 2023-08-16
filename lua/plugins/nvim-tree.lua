-- Import nvim-tree plugin safely
local setup, nvimtree = pcall(require, "nvim-tree")

if not setup then
  return
end

-- Recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- Configure nvim-tree
nvimtree.setup({
  -- change folder arrow icons
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "", -- Arrow when folder is closed
          arrow_open = "", -- Arrow when folder is open
        },
      },
    },
  },
  -- Disable window_picker for
  -- Explorer to work well with
  -- Window splits
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
  -- 	git = {
  -- 		ignore = false,
  -- 	},
})

-- Open nvim-tree on setup

local function open_nvim_tree(data)
  -- Buffer is a [No Name]
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  -- Buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not no_name and not directory then
    return
  end

  -- Change to the directory
  if directory then
    vim.cmd.cd(data.file)
  end

  -- Open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
