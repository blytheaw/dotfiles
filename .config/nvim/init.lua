-- Install Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Bind leader keys
vim.g.mapleader = " "
vim.g.localleader = ","

-- Install plugins
require("lazy").setup({
  "nvim-tree/nvim-web-devicons",
  "Mofiqul/dracula.nvim",
  { 
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { 
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    cond = vim.fn.executable 'make' == 1,
  }
})

-- Options
-- https://neovim.io/doc/user/quickref.html#Q_op
local options = {
  breakindent = true,
  clipboard = "unnamedplus",
  -- completeopt = { "menu", "menuone", "noselect" }, -- TODO: explore
  cursorline = true,
  expandtab = true,
  fillchars = "eob: ",
  -- formatoptions = vim.opt.formatoptions:remove({ "c", "r", "o" }), -- TODO: doesn't work as ftplugin overrides the value
  ignorecase = true,
  -- iskeyword = vim.opt.iskeyword:append("-"), -- TODO: explore
  -- guifont = "monospace:h17", -- TODO: explore
  hlsearch = true,
  laststatus = 3,
  linebreak = true,
  mouse = "a",
  number = true,
  numberwidth = 1,
  pumheight = 10,
  relativenumber = false,
  ruler = false,
  scrolloff = 8,
  shiftround = true,
  shiftwidth = 2,
  -- shortmess = vim.opt.shortmess:append "c", -- TODO: explore
  showcmd = true,
  showmode = true,
  showtabline = 1,
  sidescrolloff = 8,
  signcolumn = "yes",
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  tabstop = 2,
  termguicolors = true,
  undofile = true,
  updatetime = 250,
  whichwrap = vim.opt.whichwrap:append("<,>,[,],h,l"),
  wrap = true
}

for k, v in pairs(options) do
  vim.o[k] = v
end

vim.cmd("colorscheme dracula")


-- Mappings 
-- TODO: use description option instead of comments
local map = vim.keymap.set
local default_opts = { silent = true }

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


-- Configure Plugins

-- Telescope 
-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup()
-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- See `:help telescope.builtin`
map('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
map('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
map('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

map('n', '<leader>ff', require('telescope.builtin').find_files, { desc = '[F]ind [F]iles' })
map('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = '[F]ind [H]elp' })
map('n', '<leader>fw', require('telescope.builtin').grep_string, { desc = '[F]ind current [W]ord' })
map('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = '[F]ind by [G]rep' })
map('n', '<leader>fd', require('telescope.builtin').diagnostics, { desc = '[F]ind [D]iagnostics' })

