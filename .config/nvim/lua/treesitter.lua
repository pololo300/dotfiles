vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

require("nvim-treesitter").setup({
	ensure_installed = { "markdown", "markdown_inline", "python" },
	highlight = {
		enable = true,
		-- Disable treesitter for specific injections that conflict with LSP
		disable = function(lang, buf)
			-- Keep treesitter enabled but allow LSP diagnostics to show
			return false
		end,
		additional_vim_regex_highlighting = false,
	},
})
