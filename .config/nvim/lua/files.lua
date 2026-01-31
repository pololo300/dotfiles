vim.pack.add({
	{ src = "https://github.com/nvim-neo-tree/neo-tree.nvim" },
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/MunifTanjim/nui.nvim",
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/mikavilpas/yazi.nvim",
})

require("neo-tree").setup({
	window = {
		mappings = {
			["h"] = "close_node",
			["l"] = "open",
		},
	},
	filesystem = {
		follow_current_file = {
			enabled = true,
			leave_dirs_open = false,
		},
	},
	buffers = {
		follow_current_file = {
			enabled = true,
			leave_dirs_open = false,
		},
	},
})
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Neotree" })

vim.keymap.set("n", "<leader>-", ":Yazi<cr>", { desc = "Open yazi at the current file" })
