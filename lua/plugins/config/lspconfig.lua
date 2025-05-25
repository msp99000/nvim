local lspconfig = require("lspconfig")

-- import cmp-nvim-lsp plugin
local cmp_nvim_lsp = require("cmp_nvim_lsp")

local keymap = vim.keymap -- for conciseness

local opts = { noremap = true, silent = true }

local on_attach = function(client, bufnr) -- Include 'client' parameter
	-- Ensure buffer number is passed correctly
	local bufopts = { noremap = true, silent = true, buffer = bufnr }

	-- set keybinds
	bufopts.desc = "Show LSP references"
	keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", bufopts) -- show definition, references

	bufopts.desc = "Go to declaration"
	keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts) -- go to declaration

	bufopts.desc = "Show LSP definitions"
	keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", bufopts) -- show lsp definitions

	bufopts.desc = "Show LSP implementations"
	keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", bufopts) -- show lsp implementations

	bufopts.desc = "Show LSP type definitions"
	keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", bufopts) -- show lsp type definitions

	bufopts.desc = "See available code actions"
	keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, bufopts) -- see available code actions, in visual mode will apply to selection

	bufopts.desc = "Smart rename"
	keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts) -- smart rename

	bufopts.desc = "Show buffer diagnostics"
	keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", bufopts) -- show diagnostics for file

	bufopts.desc = "Show line diagnostics"
	keymap.set("n", "<leader>D", vim.diagnostic.open_float, bufopts) -- show diagnostics for line

	bufopts.desc = "Go to previous diagnostic"
	keymap.set("n", "[d", vim.diagnostic.goto_prev, bufopts) -- jump to previous diagnostic in buffer

	bufopts.desc = "Go to next diagnostic"
	keymap.set("n", "]d", vim.diagnostic.goto_next, bufopts) -- jump to next diagnostic in buffer

	bufopts.desc = "Show documentation for what is under cursor"
	keymap.set("n", "<leader>d", vim.lsp.buf.hover, bufopts) -- show documentation for what is under cursor

	bufopts.desc = "Restart LSP"
	keymap.set("n", "<leader>rs", ":LspRestart<CR>", bufopts) -- mapping to restart lsp if necessary
end

-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Change the Diagnostic symbols in the sign column (gutter)
-- (not in youtube nvim video)
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- Configure diagnostic display
vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = { border = "rounded" }
})

-- Configure servers
local servers = {
	html = {
		filetypes = { "html" },
		init_options = {
			configurationSection = { "html", "css", "javascript" },
			embeddedLanguages = { css = true, javascript = true },
			provideFormatter = true,
		},
	},
	ts_ls = {},
	cssls = {},
	tailwindcss = {
		filetypes = { "html", "css", "javascriptreact", "typescriptreact", "vue", "svelte" },
	},
	svelte = {},
	prismals = {},
	graphql = {
		filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
	},
	emmet_ls = {
		filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
		init_options = { html = { options = { ["bem.enabled"] = true } } },
	},
	pyright = { filetypes = { "python" } },
	lua_ls = {
		settings = {
			Lua = {
				diagnostics = { globals = { "vim" } },
				workspace = {
					library = {
						[vim.fn.expand("$VIMRUNTIME/lua")] = true,
						[vim.fn.stdpath("config") .. "/lua"] = true,
					},
				},
			},
		},
	},
}

for server, config in pairs(servers) do
	config.capabilities = capabilities
	config.on_attach = on_attach
	lspconfig[server].setup(config)
end
