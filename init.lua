vim.opt.number	= true
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.o.autochdir = false
require("config.options")
require("config.keybinds")
require("config.lazy")

vim.cmd.colorscheme "catppuccin"
