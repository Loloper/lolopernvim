return {
	{
	'nvim-treesitter/nvim-treesitter',
	config = function()
		require("nvim-treesitter.configs").setup(
		{
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query"}, -- essential parsers that have recommended
			auto_install = true,
			highlight = {
				enable = true,              -- Enable highlighting
				additional_vim_regex_highlighting = true,
			},
			incremental_selection = {
				enable= true,
				keymaps = {
					init_selection = "<Leader>v", --start smart selection
					node_incremental = "<Leader>vk", --increment smart selection
					scope_incremental = "<Leader>va",
					node_decremental = "<Leader>vj", 
				}
			}
		})
	end
  },
}

