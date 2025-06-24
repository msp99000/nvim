local lualine = require("lualine")
local lazy_status = require("lazy.status") -- to configure lazy pending updates count
local lsp_status = function()
	if rawget(vim, "lsp") then
		for _, client in ipairs(vim.lsp.get_active_clients()) do
			if client.attached_buffers[vim.api.nvim_get_current_buf()] and client.name ~= "null-ls" then
				return (vim.o.columns > 100 and "%#St_LspStatus#" .. "   LSP ~ " .. client.name .. " ")
					or "   LSP "
			end
		end
	end
end

local colors = {
	blue = "#65D1FF",
	blue2 = "#154360",
	dark1 = "#283747",
	green = "#3EFFDC",
	green2 = "#0B5345",
	violet = "#FF61EF",
	yellow = "#FFDA7B",
	red = "#FF4A4A",
	fg = "#c3ccdc",
	bg = "#112638",
	inactive_bg = "#2c3043",
}

local my_lualine_theme = {
	normal = {
		a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
		b = { bg = colors.blue2, fg = colors.fg, gui = "bold" },
		c = { bg = colors.bg, fg = colors.fg, gui = "bold" },
		z = { bg = colors.blue, fg = colors.bg, gui = "bold" },
	},
	insert = {
		a = { bg = colors.green, fg = colors.bg, gui = "bold" },
		b = { bg = colors.green2, fg = colors.fg, gui = "bold" },
		c = { bg = colors.bg, fg = colors.fg, gui = "bold" },
		z = { bg = colors.green, fg = colors.bg, gui = "bold" },
	},
	visual = {
		a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
		b = { bg = colors.blue2, fg = colors.fg, gui = "bold" },
		c = { bg = colors.bg, fg = colors.fg, gui = "bold" },
		z = { bg = colors.violet, fg = colors.bg, gui = "bold" },
	},
	command = {
		a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
		b = { bg = colors.blue2, fg = colors.fg, gui = "bold" },
		c = { bg = colors.bg, fg = colors.fg, gui = "bold" },
		z = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
	},
	replace = {
		a = { bg = colors.red, fg = colors.bg, gui = "bold" },
		b = { bg = colors.bg, fg = colors.fg, gui = "bold" },
		c = { bg = colors.bg, fg = colors.fg, gui = "bold" },
		z = { bg = colors.red, fg = colors.bg, gui = "bold" },
	},
	inactive = {
		a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
		b = { bg = colors.inactive_bg, fg = colors.semilightgray },
		c = { bg = colors.inactive_bg, fg = colors.semilightgray },
		z = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
	},
}

-- configure lualine with modified theme
lualine.setup({
	options = {
		theme = my_lualine_theme,
		globalstatus = true,
		ignore_focus = { "neo-tree", "alpha.nvim" },
		disabled_filetypes = {
			winbar = {},
			statusline = { "neo-tree", "alpha" },
			finder = { "telescope" },
		},
	},
	sections = {
		lualine_a = {
			{ "mode", icon = { "  " } },
		},
		lualine_c = {
			{ "filetype", colored = false, icon_only = true, separator = "", padding = { left = 1, right = 0 } },
			{ "filename", path = 0, symbols = { modified = "●", readonly = "", unnamed = "" } },
			{
				"diff",
				colored = true,
				symbols = {
					added = "  ",
					modified = "  ",
					removed = "  ",
				},
			},
		},
		lualine_b = {
			{ "branch", icon = { "" } },
		},
		lualine_x = {
			{
				lazy_status.updates,
				cond = lazy_status.has_updates,
				color = { fg = "#ff9e64" },
			},
			{
				"diagnostics",
				symbols = {
					error = " ",
					warn = " ",
					hint = " ",
					info = " ",
				},
			},
			-- { "fileformat", symbols = {} },
			-- { "encoding" },
			{ "filetype" },
		},
		lualine_y = {
			{ "progress" },
		},
		lualine_z = {
			{ "location" },
		},
	},
})
