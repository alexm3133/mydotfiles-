require('settings')
require('keymaps')
require('plugins')
require('/plugin-config/nvim-tree')
vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]]
