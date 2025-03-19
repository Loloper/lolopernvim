return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {"nvim-tree/nvim-web-devicons"},
		config = function()
			require("nvim-tree").setup({
				sync_root_with_cwd = true,
				diagnostics = { enable = true },
				renderer = {
					indent_markers = { enable = true },
					icons = { web_devicons = { folder = { enable = true } } },
				},
				modified = { enable = true },
			})
		end,
	},
	{
	    "OXY2DEV/markview.nvim",
	    lazy = false,      -- Recommended
	    -- ft = "markdown" -- If you decide to lazy-load anyway

	    dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons"
	    }
	},
	{ "junegunn/fzf", build = "./install --bin" }
		
}
