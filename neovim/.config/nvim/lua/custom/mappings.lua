-- TODO: use description option instead of comments
local map = vim.keymap.set
local default_opts = { silent = true }

vim.g.mapleader = " "
vim.g.localleader = ","

-- Disable <Space> so it is only used for <leader>
map('', '<space>', '<nop>', default_opts)

-- Easier ESC
map('i', 'jk', '<esc>', default_opts)

-- Disable arrow keys
map('', '<up>', '<nop>', default_opts)
map('', '<down>', '<nop>', default_opts)
map('', '<left>', '<nop>', default_opts)
map('', '<right>', '<nop>', default_opts)

-- Easy save, write, quit
map('n', '<leader>s', '<cmd>w<cr>', default_opts)
map('n', '<leader>w', '<cmd>wq<cr>', default_opts)
map('n', '<leader>q', '<cmd>q<cr>', default_opts)

-- Delete text without changing registers
map({'n', 'x'}, 'x', '"_x', default_opts)

-- Select all
map('n', '<leader>a', ':keepjumps normal! ggVG<cr>', default_opts)

-- Clear search highlights
map('n', '<esc>', '<cmd>nohlsearch<cr>', default_opts)

-- Reload config
map('n', '<leader>r', '<cmd>so %<cr>', default_opts)
