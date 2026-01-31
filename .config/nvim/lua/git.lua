vim.pack.add({
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/kdheepak/lazygit.nvim" },
	{ src = "https://github.com/lewis6991/gitsigns.nvim" },
})

vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { desc = "LazyGit" })

local git = require("gitsigns")
git.setup()
vim.keymap.set("n", "<leader>gb", git.blame_line, { desc = "Git Blame" })
vim.keymap.set("n", "<leader>gB", function()
	git.blame_line({ full = true })
end, { desc = "Full Git Blame" })
vim.keymap.set("n", "<leader>gd", git.diffthis, { desc = "Git Blame" })

require("telescope").load_extension("lazygit")
