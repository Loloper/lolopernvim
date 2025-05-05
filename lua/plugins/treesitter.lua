return {
	{
	'nvim-treesitter/nvim-treesitter',
	config = function()
		require("nvim-treesitter.configs").setup(
		{
			ensure_installed = { "c", "lua", "python", "javascript" }, -- add your languages
			auto_install = true,
			highlight = {
				enable = true,              -- Enable highlighting
				additional_vim_regex_highlighting = false,
			},
		})
	end
  },
}

