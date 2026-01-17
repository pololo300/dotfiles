-- Speace as leader
vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>r', ":restart<CR>")

-- open NTree
vim.keymap.set('n', '<leader>e', ":Ntree<CR>")

-- Keybinds to make split navigation easier.
vim.keymap.set('v', '<Tab>', '>gv', { noremap = true, silent = true })
vim.keymap.set('v', '<S-Tab>', '<gv', { noremap = true, silent = true })


vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus left' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus right' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus lower' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus upper' })

vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-w><C-h>', { desc = 'Move focus left ' })
vim.keymap.set('t', '<C-l>', '<C-\\><C-n><C-w><C-l>', { desc = 'Move focus right' })
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-w><C-j>', { desc = 'Move focus lower' })
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-w><C-k>', { desc = 'Move focus upper' })

vim.keymap.set('n', '<leader>q', '<cmd>close<CR>', { desc = 'Quit Window' })
vim.keymap.set('n', '<leader>x', '<cmd>bd<CR>', { desc = 'Close Buffer' })
vim.keymap.set('n', '<Tab>', '<cmd>bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', '<cmd>bprevious<CR>', { desc = 'Previous buffer' })


vim.keymap.set('n', 'j', 'gj', { desc = 'Move down visually' })
vim.keymap.set('n', 'k', 'gk', { desc = 'Move up visually' })
vim.keymap.set('v', 'j', 'gj', { desc = 'Move down visually' })
vim.keymap.set('v', 'k', 'gk', { desc = 'Move up visually' })

vim.keymap.set('n', '<C-Up>', '<Cmd>resize +2<CR>', { desc = 'Resize split up' })
vim.keymap.set('v', '<C-Up>', '<Cmd>resize +2<CR>', { desc = 'Resize split up' })
vim.keymap.set('n', '<C-Down>', '<Cmd>resize -2<CR>', { desc = 'Resize split down' })
vim.keymap.set('v', '<C-Down>', '<Cmd>resize -2<CR>', { desc = 'Resize split down' })
vim.keymap.set('n', '<C-Left>', '<Cmd>vertical resize +2<CR>', { desc = 'Resize split left' })
vim.keymap.set('v', '<C-Left>', '<Cmd>vertical resize +2<CR>', { desc = 'Resize split left' })
vim.keymap.set('n', '<C-Right>', '<Cmd>vertical resize -2<CR>', { desc = 'Resize split right' })
vim.keymap.set('v', '<C-Right>', '<Cmd>vertical resize -2<CR>', { desc = 'Resize split right' })

vim.keymap.set('n', '<C-s>', '<cmd>w<CR>', { desc = 'Save current buffer' })
vim.keymap.set('i', '<C-s>', '<Esc><cmd>w<CR>', { desc = 'Save current buffer' })


vim.keymap.set('n', '<C-a>', '<cmd>wa<CR>', { desc = 'Save all buffer' })
vim.keymap.set('i', '<C-a>', '<Esc><cmd>wa<CR>', { desc = 'Save all buffer' })
