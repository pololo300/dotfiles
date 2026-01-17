vim.pack.add({
	{ src = "https://github.com/windwp/nvim-autopairs" },
	{ src = "https://github.com/numToStr/Comment.nvim" },
	{ src = "https://github.com/lewis6991/gitsigns.nvim" },
	{ src = "https://github.com/Aasim-A/scrollEOF.nvim" },
	{ src = "https://github.com/folke/todo-comments.nvim" },
	"https://github.com/nvim-lua/plenary.nvim",
})

require("nvim-autopairs").setup()

require('Comment').setup()
vim.keymap.set("n", "<leader>7", function()
	vim.api.nvim_feedkeys("gcc", "x", true)
end, { desc = "Toggle Line Comment" })
vim.keymap.set("v", "<leader>7", function()
	vim.api.nvim_feedkeys("gc", "v", true)
end, { desc = "Toggle Line Comment" })

local git = require('gitsigns')
git.setup()
vim.keymap.set('n', '<leader>gb', git.blame_line, { desc = "Git Blame" })
vim.keymap.set('n', '<leader>gB', function()
	git.blame_line({ full = true })
end, { desc = "Full Git Blame" })
vim.keymap.set('n', '<leader>gd', git.diffthis, { desc = "Git Blame" })


require('scrollEOF').setup()
require('todo-comments').setup()


