-- base stuff
vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.o.expandtab = true
vim.o.smartindent = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.termguicolors = true

vim.o.scrolloff = 5

vim.o.updatetime = 75

vim.o.spell = true
vim.o.spelllang = "en_us"

vim.o.signcolumn = 'yes'

vim.o.mouse = "a"

vim.o.showmode = false

vim.o.breakindent = true

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.timeoutlen = 400

vim.o.cursorline = true

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.inccommand = 'split'

vim.o.list = true
vim.opt.listchars = {trail = '·'}

vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)
