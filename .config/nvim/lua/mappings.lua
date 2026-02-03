vim.pack.add({ "https://github.com/folke/which-key.nvim" })

require("which-key").setup({
	spec = {
		{ "<leader>f", group = "Find" },
		{ "<leader>c", group = "Code" },
		{ "<leader>t", group = "Terminal" },
		{ "<leader>g", group = "Git" },
		{ "<leader>p", group = "Plugin" },
	},
})
-- Speace as leader
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Move focus left" })
vim.keymap.set("n", "<leader>wa", ":wa<CR>", { desc = "Move focus left" })

-- Keybinds to make split navigation easier.
vim.keymap.set("v", "<Tab>", ">gv", { noremap = true, silent = true, desc = "Next Tab" })
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true, desc = "Previous Tab" })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus left" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus right" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus lower" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus upper" })

vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w><C-h>", { desc = "Move focus left " })
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w><C-l>", { desc = "Move focus right" })
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w><C-j>", { desc = "Move focus lower" })
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w><C-k>", { desc = "Move focus upper" })

vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>x", "<cmd>bd<CR>", { desc = "Close Buffer" })
vim.keymap.set("n", "<Tab>", "<cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })

vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Resize split up" })
vim.keymap.set("v", "<C-Up>", ":resize +2<CR>", { desc = "Resize split up" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Resize split down" })
vim.keymap.set("v", "<C-Down>", ":resize -2<CR>", { desc = "Resize split down" })
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>", { desc = "Resize split left" })
vim.keymap.set("v", "<C-Left>", ":vertical resize +2<CR>", { desc = "Resize split left" })
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>", { desc = "Resize split right" })
vim.keymap.set("v", "<C-Right>", ":vertical resize -2<CR>", { desc = "Resize split right" })

vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save current buffer" })
vim.keymap.set("i", "<C-s>", "<Esc><cmd>w<CR>", { desc = "Save current buffer" })

vim.keymap.set("n", "<C-a>", "<cmd>wa<CR>", { desc = "Save all buffer" })
vim.keymap.set("i", "<C-a>", "<Esc><cmd>wa<CR>", { desc = "Save all buffer" })

vim.keymap.set("n", "<leader>pu", vim.pack.update, { desc = "Plugin Update" })


vim.keymap.set("n", "<Esc>", ":noh<CR>", {desc = "Clear Search Hilight"})
