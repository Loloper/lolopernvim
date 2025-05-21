
return {
	{
		"mason-org/mason.nvim",
		config = function(opts)
			require('mason').setup({
				ui = {border = "shadow"},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require('mason-lspconfig').setup({
				ensure_installed = { "lua_ls", "clangd", "html", "harper_ls", "pyright" },
				automatic_installation = true,
			})
		end,
	},
	{
		--Configs for each LSP
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
			"williamboman/mason-lspconfig",
		},
		opts = {
			servers = {
				lua_ls = {}, 
				clangd = {}, 
				html = {},
				harper_ls = {}, --C&C# lsp
				pyright = {} --Python
			}
		},
		config = function(_, opts)
			local lspconfig = require('lspconfig')
			for server, config in pairs(opts.servers) do
				-- passing config.capabilities to blink.cmp merges with the capabilities in your
				-- opts[server].capabilities, if you've defined it
				config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
				lspconfig[server].setup(config)
			end
		end
	},
}
