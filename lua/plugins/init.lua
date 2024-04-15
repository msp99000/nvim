---------------------------------------
------      P L U G I N S        ------
---------------------------------------

local plugins = {

	-- Dashboard
	{
		"goolord/alpha-nvim",
		event = "VimEnter",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("plugins.config.alpha")
		end,
	},

	-- Tokyonight colorscheme
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme tokyonight-night]]) -- load colorscheme
		end,
	},

	-- Nightfly colorscheme
	-- {
	-- 	"bluz71/vim-nightfly-colors",
	-- 	name = "nightfly",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd("colorscheme nightfly")
	-- 	end,
	-- },

	-- Barbecue
	{
		"utilyre/barbecue.nvim",
		name = "barbecue",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
		},
		opts = require("plugins.config.barbecue"),
	},

	-- Bufferline
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = require("plugins.config.bufferline"),
	},

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		version = false, -- last release is way too old and doesn't work on Windows
		build = ":TSUpdate",
		event = { "BufReadPost", "BufNewFile" },
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
			"windwp/nvim-ts-autotag",
		},
		config = function()
			require("plugins.config.treesitter")
		end,
	},

	-- Autopairs
	{
		"windwp/nvim-autopairs",
		event = { "InsertEnter" },
		dependencies = {
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require("plugins.config.autopairs")
		end,
	},

	-- Neotree
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		opts = require("plugins.config.neotree"),
	},

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			"nvim-telescope/telescope-ui-select.nvim",
			"nvim-tree/nvim-web-devicons",
			"ThePrimeagen/harpoon",
			"sharkdp/fd",
		},
		config = function()
			require("plugins.config.telescope")
		end,
	},

	-- Lualine
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("plugins.config.lualine")
		end,
	},

	-- Nvim-cmp
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-buffer", -- source for text in buffer
			"hrsh7th/cmp-path", -- source for file system paths
			"L3MON4D3/LuaSnip", -- snippet engine
			"saadparwaiz1/cmp_luasnip", -- for autocompletion
			"rafamadriz/friendly-snippets", -- useful snippets
			"onsails/lspkind.nvim", -- vs-code like pictograms
		},
		config = function()
			require("plugins.config.nvim-cmp")
		end,
	},

	-- Nvim-lspconfig
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			{ "antosha417/nvim-lsp-file-operations", config = true },
			{
				"folke/neoconf.nvim",
				cmd = "Neoconf",
				config = false,
				dependencies = { "nvim-lspconfig" },
			},
			{
				"folke/neodev.nvim",
				config = function()
					require("neodev").setup()
				end,
			},
		},
		config = function()
			require("plugins.config.lspconfig")
		end,
	},

	-- Mason
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"jayp0521/mason-null-ls.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			require("plugins.config.mason")
		end,
	},

	-- Mason Lspconfig
	-- {
	-- 	"williamboman/mason-lspconfig.nvim",
	-- 	lazy = false,
	-- 	opts = {
	-- 		auto_install = true,
	-- 	},
	-- },

	-- Null-ls
	{
		"jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("plugins.config.null-ls")
		end,
	},

	-- Codeium (Code completion)
	{
		"Exafunction/codeium.vim",
		event = "BufEnter",
	},

	-- Noice
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
			{ "rcarriga/nvim-notify", opts = { timeout = 500 } },
		},
	},

	-- Indentline
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		-- config = function()
		-- 	require("plugins.config.indentline")
		-- end,
		opts = require("plugins.config.ibl"),
	},

	-- Toggleterm
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
		event = { "BufReadPost", "BufNewFile" },
		opts = {
			size = 15,
			open_mapping = [[<S-\\>]],
			shade_filetypes = {},
			shade_terminals = true,
			shading_factor = "1",
			start_in_insert = false,
			persist_size = true,
			direction = "horizontal",
		},
	},

	-- Colorizer
	{
		"NvChad/nvim-colorizer.lua",
		config = function(_, opts)
			require("colorizer").setup(opts)
			-- execute colorizer as soon as possible
			vim.defer_fn(function()
				require("colorizer").attach_to_buffer(0)
			end, 0)
		end,
	},

	-- Mini Animate
	{
		"echasnovski/mini.animate",
		event = "VeryLazy",
	},

	-- Mini Comment
	{
		"echasnovski/mini.comment",
		version = "*",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("mini.comment").setup()
		end,
	},

	-- Indentscope
	{
		"echasnovski/mini.indentscope",
		version = "*",
		lazy = false,
		opts = {
			symbol = "▏",
			options = {
				border = "both",
			},
		},
		init = function()
			vim.api.nvim_create_autocmd("FileType", {
				pattern = {
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
				callback = function()
					vim.b.miniindentscope_disable = true
				end,
			})
		end,
	},

	-- Surround
	{
		"echasnovski/mini.surround",
		version = "*",
	},

	-- Dressing
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
	},

	-- Which Key
	{
		"folke/which-key.nvim",
		event = "VeryLazy",

		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 750
		end,

		opts = {},
	},

	-- TODO comments
	{
		"folke/todo-comments.nvim",
		events = { "BufReadPre", "BufNewFile" },
		dependencies = "nvim-lua/plenary.nvim",
		config = function()
			local todo_comments = require("todo-comments")

			-- Keymaps
			local keymap = vim.keymap.set
			keymap("n", "]t", function()
				todo_comments.jump_next()
			end, { desc = "Next todo comment" })

			keymap("n", "[t", function()
				todo_comments.jump_prev()
			end, { desc = "Previous todo comment" })

			keymap("n", "<leader>ft", ":TodoTelescope<CR>", { desc = "Todo comments" })

			todo_comments.setup()
		end,
	},

	-- Trouble
	{
		"folke/trouble.nvim",
		cmd = "Trouble",
		dependencies = { "kyazdani42/nvim-web-devicons", "folke/todo-comments.nvim" },
		keys = {
			{ "<leader>tt", "<cmd>TroubleToggle<cr>", desc = "Toggle trouble" },
			{ "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Trouble workspace" },
			{ "<leader>td", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Trouble document" },
			{ "<leader>tq", "<cmd>TroubleToggle quickfix<cr>", desc = "Trouble quickfix" },
			{ "<leader>tL", "<cmd>TroubleToggle loclist<cr>", desc = "Trouble loclist" },
			{ "<leader>tl", "<cmd>TroubleToggle lsp_references<cr>", desc = "Trouble LSP references" },
		},
	},

	-- Rust
	{
		"rust-lang/rust.vim",
		ft = "rust",
		init = function()
			vim.g.rustfmt_autosave = 1
		end,
	},

	-- Rust LSP
	{
		"mrcjkb/rustaceanvim",
		version = "^4", -- Recommended
		lazy = false, -- This plugin is already lazy
	},

	--Rust Tools
	-- {
	-- 	"simrat39/rust-tools.nvim",
	-- 	ft = "rust",
	-- 	dependencies = "neovim/nvim-lspconfig",
	-- 	opts = function()
	-- 		return require("plugins.config.rust-tools")
	-- 	end,
	-- 	config = function(_, opts)
	-- 		require("rust-tools").setup(opts)
	-- 	end,
	-- },
}

return plugins
