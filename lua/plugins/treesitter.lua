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
		})
	end
  },
}

