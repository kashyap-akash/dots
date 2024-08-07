vim.opt.guicursor = ""
vim.g.netrw_liststyle = "3"
vim.o.termguicolors = true
vim.cmd 'colorscheme catppuccin-mocha'
vim.opt.nu = true             --LINE NUMBERS
vim.opt.relativenumber = true --DUHH....

vim.opt.tabstop = 4
vim.opt.softtabstop = 4 --4 SPACE INDENTS
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.swapfile = true
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = false

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50



--vim.opt.colorcolumn = "80"
