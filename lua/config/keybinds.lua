vim.keymap.set("n", "<C-N>", "<cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>f", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>g', "<cmd>Telescope live_grep<CR>", { desc = 'Telescope live grep', noremap = true, silent = true  })
vim.keymap.set('n', '<leader>w', "<cmd>Telescope buffers<CR>", { desc = 'Telescope buffers', noremap = true, silent = true })
vim.keymap.set('n', '<leader>help', "<cmd>builtin.help_tag<CR>", { desc = 'Telescope help tags', noremap = true, silent = true })
