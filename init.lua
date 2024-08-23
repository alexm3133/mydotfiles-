require('settings')
require('keymaps')
require('plugins')
require('lsp')
require('/plugin-config/nvim-tree')
require'lspconfig'.pyright.setup{}
require'lspconfig'.html.setup{}
--require('/plugin-config/colors')
vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]]
