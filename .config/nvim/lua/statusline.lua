vim.pack.add({
	{ src = "https://github.com/sschleemilch/slimline.nvim" },
	{ src = "https://github.com/j-hui/fidget.nvim" },
})

require("slimline").setup({
	style = "fg",
	bold = true,
	configs = {
		path = {
			hl = {
				primary = "Label",
			},
		},
		git = {
			hl = {
				primary = "Function",
			},
		},
		filetype_lsp = {
			hl = {
				primary = "String",
			},
		},
	},
})

require("fidget").setup()
