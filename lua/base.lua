vim.g.mapleader = " "

vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 50
vim.opt.colorcolumn = '120'
vim.opt.clipboard:append{'unnamedplus'}
vim.opt.backup = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.wrap = true
vim.opt.scrolloff = 8
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.wildignore:append{'*/node_modules/*', '*/vendor/*'}
vim.opt.title = true
vim.opt.path:append{'**'}
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.cursorline = true
