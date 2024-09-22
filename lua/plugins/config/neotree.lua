local opts = {
	sources = {
		"filesystem",
		"git_status",
	},

	source_selector = {
		winbar = false,
		statusline = false,
	},

	window = {
		width = 30,
		{
			mappings = {
				["<space>"] = "none",
			},
		},
	},

	default_component_configs = {
		container = {
			enable_character_fade = false,
		},

		indent = {
			with_expanders = true,
			expander_collapsed = "",
			expander_expanded = " ",
		},

		icon = {
			folder_closed = "",
			folder_open = "",
			folder_empty = "",
			-- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
			-- then these will never be used.
			default = "*",
			highlight = "NeoTreeFileIcon",
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
			hide_dotfiles = false,
		},
	},
}

return opts
