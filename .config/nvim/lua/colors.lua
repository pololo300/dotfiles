vim.pack.add({
	"https://github.com/zenbones-theme/zenbones.nvim",
	"https://github.com/vague2k/vague.nvim",
	"https://github.com/tribela/transparent.nvim",
	"https://github.com/catppuccin/nvim",
	"https://github.com/ellisonleao/gruvbox.nvim",
	"https://github.com/projekt0n/github-nvim-theme",
})

require("transparent").setup()

vim.o.background = "light"
vim.cmd([[colorscheme github_light]])
