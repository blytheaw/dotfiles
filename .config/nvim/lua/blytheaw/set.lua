-- https://neovim.io/doc/user/quickref.html#Q_op
-- Sign column
vim.opt.signcolumn = 'yes'
vim.opt.fillchars = 'eob: '

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 1

-- Indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

-- Navigation
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Search
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Visuals
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.laststatus = 3
vim.opt.updatetime = 50

vim.opt.isfname:append("@-@")

vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true
