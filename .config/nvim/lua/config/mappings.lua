-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Code Diagnosis' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
vim.keymap.set('v', '<Tab>', '>gv', { noremap = true, silent = true })
vim.keymap.set('v', '<S-Tab>', '<gv', { noremap = true, silent = true })

--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('t', '<C-l>', '<C-\\><C-n><C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>q', '<cmd>close<CR>', { desc = 'Quit Window' })
vim.keymap.set('n', '<leader>x', '<cmd>bd<CR>', { desc = 'Close Buffer' })
vim.keymap.set('n', '<Tab>', '<cmd>bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', '<cmd>bprevious<CR>', { desc = 'Previous buffer' })

vim.keymap.set('n', 'j', 'gj', { desc = 'Move down visually' })
vim.keymap.set('n', 'k', 'gk', { desc = 'Move up visually' })
vim.keymap.set('v', 'j', 'gj', { desc = 'Move down visually' })
vim.keymap.set('v', 'k', 'gk', { desc = 'Move up visually' })

-- resize windows
vim.keymap.set('n', '<C-Up>', '<Cmd>resize +2<CR>', { desc = 'Resize split up' })
vim.keymap.set('v', '<C-Up>', '<Cmd>resize +2<CR>', { desc = 'Resize split up' })
vim.keymap.set('n', '<C-Down>', '<Cmd>resize -2<CR>', { desc = 'Resize split down' })
vim.keymap.set('v', '<C-Down>', '<Cmd>resize -2<CR>', { desc = 'Resize split down' })
vim.keymap.set('n', '<C-Left>', '<Cmd>vertical resize +2<CR>', { desc = 'Resize split left' })
vim.keymap.set('v', '<C-Left>', '<Cmd>vertical resize +2<CR>', { desc = 'Resize split left' })
vim.keymap.set('n', '<C-Right>', '<Cmd>vertical resize -2<CR>', { desc = 'Resize split right' })
vim.keymap.set('v', '<C-Right>', '<Cmd>vertical resize -2<CR>', { desc = 'Resize split right' })

vim.keymap.set('n', '<leader>fc', '<cmd>Telescope bibtex format_string=\\cite{%s}<CR>', { desc = 'Find Citations' })

-- Map Ctrl-s to save current buffer
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>', { desc = 'Save current buffer' })
vim.keymap.set('i', '<C-s>', '<Esc><cmd>w<CR>', { desc = 'Save current buffer' })

-- Map Ctrl-a save all buffers
vim.keymap.set('n', '<C-a>', '<cmd>wa<CR>', { desc = 'Save all buffer' })
vim.keymap.set('i', '<C-a>', '<Esc><cmd>wa<CR>', { desc = 'Save all buffer' })

-- Git diff
vim.keymap.set('n', '<leader>gd', '<cmd>DiffviewOpen<CR>', { desc = 'Open Diffview' })
vim.keymap.set('n', '<leader>gc', '<cmd>DiffviewClose<CR>', { desc = 'Close Diffview' })
