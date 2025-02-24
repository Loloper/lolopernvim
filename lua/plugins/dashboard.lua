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
					'     6 9     ',
					'',
				}
			},
			project = { enable = false },
				

			hide = {
				statusline,   -- hide statusline default is true
				tabline,      -- hide the tabline
				winbar,        -- hide winbar
			},
		}
	end,
	dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
