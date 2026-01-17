-- sync clipboard with OS
vim.schedule(function()
	vim.opt.clipboard = 'unnamedplus'
end)


vim.opt.mouse = 'a'
vim.opt.termguicolors = true
vim.opt.swapfile = false
vim.opt.autoindent = true
vim.opt.colorcolumn = "88"

-- line options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.breakindent = true
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.tabstop = 4     -- Number of spaces for a tab
vim.opt.softtabstop = 4 -- Number of spaces for a tab when editing
vim.opt.shiftwidth = 4  -- Number of spaces for autoindent

-- rounded panels
vim.opt.winborder = "rounded"

vim.g.coneallevel = 1

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})
