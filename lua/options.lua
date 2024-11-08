vim.g.mapleader = " " 
vim.g.maplocalleader = " "

-- cancel the system paste key
-- vim.api.nvim_del_keymap('n', '<C-v>')

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
vim.cmd("syntax on")  
vim.cmd("set filetype=cpp")

-- 设置选项
vim.opt.clipboard    = "unnamedplus"
vim.opt.cmdheight    = 1
vim.opt.laststatus   = 2
vim.opt.showcmd      = true
vim.opt.splitbelow   = true
vim.opt.splitright   = true
vim.opt.cursorline   = true
vim.wo.wrap          = false
vim.o.backup         = false
vim.opt.swapfile     = false
vim.smartindent	     = true
vim.opt.hlsearch     = false
vim.opt.incsearch		 = true
vim.opt.nu					 = true  -- set line number option
vim.opt.signcolumn	 = "yes"   
vim.opt.incsearch    = true  -- search as characters are entered
vim.opt.hlsearch     = false  -- do not highlight matches
vim.opt.ignorecase   = true -- ignore case in searches by default
vim.opt.smartcase    = true  -- make it case sensitive if an uppercase is entered

vim.opt.shiftwidth   = 4
vim.opt.tabstop      = 2
vim.opt.softtabstop  = 4

-- 设置折叠方法
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

-- 启用折叠
vim.opt.foldenable = true

-- 可选设置
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldcolumn = '0'

-- 设置光标形状
-- 设置 Normal 模式光标为块状
-- vim.o.guicursor = "n:block"

-- 设置 Insert 模式光标为光线
-- vim.o.guicursor = "i:ver25"

-- 设置 guicursor 选项
vim.api.nvim_set_option('guicursor', 'n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,a:blinkon100')


