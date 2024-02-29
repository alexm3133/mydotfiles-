require('settings')
require('keymaps')
require('plugins')

vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]]

