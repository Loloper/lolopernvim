return {
	"catppuccin/nvim", 
	name = "catppuccin", priority = 1000,
	config = function()
		require('catppuccin').setup({

			color_overrides = {
				all = {
					text = "#ff1100",
					base = "#000000",
					blue = "#ff1100",
					sky = "#e35349",
					lavender = "#b03a5f",
					green = "#d98600",
				},
			}
		})

	end,
}
