local set = vim.opt

set.relativenumber = true
set.mouse = 'a'
set.showmatch = true
set.ignorecase = true
set.hlsearch = true
set.incsearch = true
set.tabstop = 4
set.expandtab = true
set.shiftwidth = 4
set.autoindent = true
set.wildmode = 'longest,list'
set.clipboard = 'unnamedplus'
set.ttyfast = true
set.smartindent = true
set.termguicolors = true

vim.cmd [[
    syntax on
    filetype plugin indent on
]]

