return {
	'nvimdev/dashboard-nvim',
	event = 'VimEnter',
	config = function()
		require('dashboard').setup {
			theme = 'hyper',
			shortcut_type = 'number',
			config = {
				header = {
					'',

					'     ###     ',
					'     ###     ',
					'#############',
					'     ###     ',
					'     ###     ',
					'     ###     ',
					'     ###     ',
					'',
				}
			},
			project = { enable = true, limit = 4, icon = '-> ', label = '', action = 'Telescope find_files cwd=' },


			hide = {
				statusline,   -- hide statusline default is true
				tabline,      -- hide the tabline
				winbar,        -- hide winbar
			},
		}
	end,
	dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
