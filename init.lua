print("CVIM: V0.5")

vim.opt.number	= true
-- Normal vim configs for normal vim settings
vim.opt.signcolumn = 'yes'
vim.opt.relativenumber= true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.wrap = false
vim.opt.scrolloff = 999
vim.opt.virtualedit = "block"
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.termguicolors = true
vim.g.mapleader = "  " -- double space for leader
vim.g.maplocalleader = "\\"
vim.opt.clipboard = "unnamedplus"
vim.o.autochdir = true
vim.o.updatetime = 300

-- other files
require("config.keybinds")
require("config.lazy")
vim.cmd.colorscheme("catppuccin")
