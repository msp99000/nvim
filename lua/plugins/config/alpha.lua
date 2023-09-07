local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  "                                                                 ",
  "                                                                 ",
  "                                                                 ",
  "                                                                 ",
  "                                                                 ",
  "  ███╗   ██╗  ███████╗   ██████╗   ██╗   ██╗   ██╗   ███╗   ███╗ ",
  "  ████╗  ██║  ██╔════╝  ██╔═══██╗  ██║   ██║   ██║   ████╗ ████║ ",
  "  ██╔██╗ ██║  █████╗    ██║   ██║  ██║   ██║   ██║   ██╔████╔██║ ",
  "  ██║╚██╗██║  ██╔══╝    ██║   ██║  ╚██╗ ██╔╝   ██║   ██║╚██╔╝██║ ",
  "  ██║ ╚████║  ███████╗  ╚██████╔╝   ╚████╔╝    ██║   ██║ ╚═╝ ██║ ",
  "  ╚═╝  ╚═══╝  ╚══════╝   ╚═════╝     ╚═══╝     ╚═╝   ╚═╝     ╚═╝ ",
  "                                                                 ",
  "                                                                 ",
  "          [Github  @msp99000]      [Twitter  @msp99000]          ",
  "                                                                 ",
  "                                                                 ",
  "                                                                 ",
}

-- Set menu
dashboard.section.buttons.val = {
  dashboard.button("n", "   New File", "<cmd>enew<CR>"),
  dashboard.button("r", "󰈚   Recent Files", "<cmd>Telescope oldfiles<CR>"),
  dashboard.button("f", "   Find File", "<cmd>Telescope find_files<CR>"),
  dashboard.button("e", "   File Explorer", "<cmd>Neotree toggle<CR>"),
  dashboard.button("w", "󰈭   Find Word", "<cmd>Telescope live_grep<CR>"),
  dashboard.button("b", "   Bookmarks", "<cmd>Telescope marks<CR>"),
  -- dashboard.button("r", "󰁯   Restore Session", "<cmd>SessionRestore<CR>"),
  dashboard.button("q", "   Quit NVIM", "<cmd>qa<CR>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
