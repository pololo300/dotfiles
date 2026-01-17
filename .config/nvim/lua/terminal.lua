vim.pack.add({
	{ src = 'https://github.com/akinsho/toggleterm.nvim' }

})

require("toggleterm").setup({
	config = true
})

vim.keymap.set("n", '<leader>tf', ':ToggleTerm direction=float<CR>', { desc = 'Floating Terminal' })
vim.keymap.set("n", '<leader>tv', ':ToggleTerm size=55 direction=vertical<CR>', { desc = 'Vertical Terminal' })
vim.keymap.set("n", '<leader>th', ':ToggleTerm size=10 direction=horizontal<CR>', { desc = 'Horitzontal Terminal' })
