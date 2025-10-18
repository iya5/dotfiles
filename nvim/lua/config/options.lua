local o = vim.opt

vim.cmd("let g:netrw_banner = 0")

-- o.guicursor = ""
o.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"

-- line numbers
o.number = true
o.relativenumber = true

-- tabs
o.shiftwidth = 4
o.softtabstop = 4
o.tabstop = 4
o.expandtab = true
o.autoindent = true
o.smartindent = true
o.wrap = false

o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true
o.hlsearch = false
o.incsearch = true

o.smartcase = true
o.ignorecase = true

o.termguicolors = true
o.background = "dark"

o.scrolloff = 8

o.updatetime = 50
o.colorcolumn = "80"

-- Set the default border for all floating windows
-- https://neovim.io/doc/user/options.html#'winborder'
o.winborder = 'rounded'
