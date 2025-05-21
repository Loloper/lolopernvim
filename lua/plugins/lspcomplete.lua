
return {
	{
		--LSP package manager
		"mason-org/mason.nvim",
		opts = {
			automatic_installation = true,
			ui = {border = "shadow"}
		}

	},
	{
		--Configs for each LSP
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				lua_ls = {}, 
				clangd = {}, 
				html = {},
				harper_ls = {}, --C&C# lsp
				pyright = {} --Python
			}
		},
		dependencies = { 'saghen/blink.cmp' },
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
