return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {'davidhalter/jedi'}, 
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
				"lua_ls",
				"clangd",
				"html", 
				"harper_ls", --C&C# lsp
				"pyright" --Python
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			--configs for each LSP
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.html.setup({})
			lspconfig.harper_ls.setup({})
			lspconfig.pyright.setup({})
			vim.keymap.set('n','K',vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	}
}
