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
