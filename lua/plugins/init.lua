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
	}
}
