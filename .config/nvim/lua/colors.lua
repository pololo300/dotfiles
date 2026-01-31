vim.pack.add({
	"https://github.com/zenbones-theme/zenbones.nvim",
	"https://github.com/vague2k/vague.nvim",
	"https://github.com/tribela/transparent.nvim",
})

require("transparent").setup()
vim.cmd.colorscheme("vague")
