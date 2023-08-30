return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
      "                                                               ",
      "                                                               ",
      "                                                               ",
      "                                                               ",
      "                                                               ",
      "                                                               ",
      "  ███╗   ██╗  ███████╗   ██████╗   ██╗   ██╗  ██╗  ███╗   ███╗ ",
      "  ████╗  ██║  ██╔════╝  ██╔═══██╗  ██║   ██║  ██║  ████╗ ████║ ",
      "  ██╔██╗ ██║  █████╗    ██║   ██║  ██║   ██║  ██║  ██╔████╔██║ ",
      "  ██║╚██╗██║  ██╔══╝    ██║   ██║  ╚██╗ ██╔╝  ██║  ██║╚██╔╝██║ ",
      "  ██║ ╚████║  ███████╗  ╚██████╔╝   ╚████╔╝   ██║  ██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝  ╚══════╝   ╚═════╝     ╚═══╝    ╚═╝  ╚═╝     ╚═╝ ",
      "                                                               ",
      "                                                               ",
      "                                                               ",
      "                                                               ",
      "                                                               ",
      "                                                               ",
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("n", "   New File", "<cmd>ene<CR>"),
      dashboard.button("e", "   File Explorer", "<cmd>Neotree toggle<CR>"),
      dashboard.button("s", "󰱼   Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("w", "   Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("r", "󰁯   Restore Session", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", "   Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}




-- local dashboard = {
--
--   "                                                               ",
--   "                                                               ",
--   "                                                               ",
--   "                                                               ",
--   "                                                               ",
--   "                                                               ",
--   "  ███╗   ██╗  ███████╗   ██████╗   ██╗   ██╗  ██╗  ███╗   ███╗ ",
--   "  ████╗  ██║  ██╔════╝  ██╔═══██╗  ██║   ██║  ██║  ████╗ ████║ ",
--   "  ██╔██╗ ██║  █████╗    ██║   ██║  ██║   ██║  ██║  ██╔████╔██║ ",
--   "  ██║╚██╗██║  ██╔══╝    ██║   ██║  ╚██╗ ██╔╝  ██║  ██║╚██╔╝██║ ",
--   "  ██║ ╚████║  ███████╗  ╚██████╔╝   ╚████╔╝   ██║  ██║ ╚═╝ ██║ ",
--   "  ╚═╝  ╚═══╝  ╚══════╝   ╚═════╝     ╚═══╝    ╚═╝  ╚═╝     ╚═╝ ",
--   "                                                               ",
--   "                                                               ",
--   "                                                               ",
--   "                                                               ",
--   "                                                               ",
--   "                                                               ",
--
-- }









-- return {
--   "goolord/alpha-nvim",
--   optional = true,
--   opts = function(_, dashboard)
--     local logo = [[
-- 	  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- 	  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- 	  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- 	  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- 	  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- 	  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- 	                   [ @msp99000 ]
--     ]]
--     opts.section.header.val = vim.split(logo, "\n", { trimempty = true })
--     local button = dashboard.button("p", " " .. " Projects", ":Telescope projects <CR>")
--     button.opts.hl = "AlphaButtons"
--     button.opts.hl_shortcut = "AlphaShortcut"
--     table.insert(dashboard.section.buttons.val, 4, button)
--   end,
-- }
