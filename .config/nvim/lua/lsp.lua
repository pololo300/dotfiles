vim.pack.add({
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
})

require("mason").setup({})

vim.lsp.enable({
	"lua_ls",
	"pylsp",
})

vim.diagnostic.config({ virtual_text = true })

vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)
