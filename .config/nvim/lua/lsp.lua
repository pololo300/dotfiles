vim.pack.add({
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/stevearc/conform.nvim" },
})

require("mason").setup({})
require("mason-lspconfig").setup()

vim.lsp.enable({
	"lua_ls",
	"pyright",
	-- "basedpyright",
	"prettier",
	"ruff",
	"stylua ",
})

vim.diagnostic.config({ virtual_text = true })

require("conform").setup({
	formatters_by_ft = {
		python = { "isort", "ruff_format" },
		json = { "prettier" },
		lua = { "stylua " },
	},
})

vim.keymap.set("n", "<leader>f", function()
	require("conform").format({ lsp_fallback = true })
end, { desc = "Format Buffer" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Hover Diagnosis" })
