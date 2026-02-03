vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

require("nvim-treesitter").setup({
	ensure_installed = { "markdown", "markdown_inline", "python" },
	highlight = { enable = true },
})
