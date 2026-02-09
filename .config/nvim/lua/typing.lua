vim.pack.add({
	{ src = "https://github.com/windwp/nvim-autopairs" },
	{ src = "https://github.com/numToStr/Comment.nvim" },
	{ src = "https://github.com/folke/todo-comments.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
	{ src = "https://github.com/Aasim-A/scrollEOF.nvim" },
	{ src = "https://github.com/lukas-reineke/indent-blankline.nvim" },
})

require("scrollEOF").setup({})
require("nvim-autopairs").setup()
require("render-markdown").setup()
require("ibl").setup()
require("todo-comments").setup()


require("Comment").setup()
vim.keymap.set("n", "<leader>7", function()
	vim.api.nvim_feedkeys("gcc", "x", true)
end, { desc = "Toggle Line Comment" })
vim.keymap.set("v", "<leader>7", function()
	vim.api.nvim_feedkeys("gc", "v", true)
end, { desc = "Toggle Line Comment" })



