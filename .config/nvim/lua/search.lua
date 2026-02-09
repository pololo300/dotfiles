vim.pack.add({
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope-ui-select.nvim" },
})

require("telescope").setup({
	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
		},
		["ui-select"] = {},
	},
})

local builtin = require("telescope.builtin")
require("telescope").load_extension("ui-select")

vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find Help" })
vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Find Keymaps" })
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>ft", builtin.colorscheme, { desc = "Find Themes" })
vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Find Word" })
vim.keymap.set("n", "<leader>fW", function()
	require("telescope.builtin").live_grep({
		additional_args = function(args)
			return vim.list_extend(args, { "--hidden", "--no-ignore" })
		end,
	})
end, { desc = "Find words in all files" })
vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Find Diagnostics" })
vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "Find Resume" })
vim.keymap.set("n", "<leader>f.", builtin.oldfiles, { desc = 'Find Recent Files ("." for repeat)' })
vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "Find existing buffers" })

vim.keymap.set("n", "gd", builtin.lsp_definitions, { desc = "Goto Definition" })
vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "Goto References" })
vim.keymap.set("n", "gI", builtin.lsp_implementations, { desc = "Goto Implementation" })
vim.keymap.set("n", "gt", builtin.lsp_type_definitions, { desc = "Goto Type Definition" })
vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, { desc = "Find Simbol (in file)" })
vim.keymap.set("n", "<leader>fS", builtin.lsp_workspace_symbols, { desc = "Find Simbol (in everywhere)" })
vim.keymap.set("n", "<leader>fr", builtin.lsp_references, { desc = "Find References" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
vim.keymap.set("n", "K", function()
	vim.lsp.buf.hover({
		border = "rounded",
	})
end, { desc = "Hover" })
