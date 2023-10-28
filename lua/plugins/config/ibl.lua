-- local ibl = require("ibl")
--
-- ibl.setup({
-- 	char = "│",
-- 	filetype_exclude = {
-- 		"help",
-- 		"alpha",
-- 		"dashboard",
-- 		"neo-tree",
-- 		"Trouble",
-- 		"lazy",
-- 		"mason",
-- 		"notify",
-- 		"toggleterm",
-- 		"lazyterm",
-- 	},
-- 	show_trailing_blankline_indent = false,
-- 	show_current_context = false,
-- })

local opts = {
	indent = { char = "│" },
	exclude = {
		filetypes = {
			"help",
			"alpha",
			"dashboard",
			"neo-tree",
			"Trouble",
			"lazy",
			"mason",
			"notify",
			"toggleterm",
			"lazyterm",
		},
	},
	-- show_trailing_blankline_indent = false,
	-- show_current_context = false,
}

return opts
