vim.api.nvim_create_user_command('Ps', require('packer').sync, {})
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- Existing mappings
map('n', '<C-s>', ':w<CR>', opts)
map('n', '<C-n>', ':NvimTreeOpen<CR>', opts)
map('n', '<C-c>', '<Plug>NERDCommenterToggle', opts)
map('v', '<C-c>', '<Plug>NERDCommenterToggle', opts)
map('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'gb', ':bp<CR>', opts)
map('n', 'gf', ':bn<CR>', opts)
map('n', '<C-f>', ':Telescope find_files<CR>', opts)
map('n', '<C-g>', ':Telescope live_grep<CR>', opts)
map('n', '<C-p>', ':Ps<CR>', opts)
map('n', 'gx', ':BufferClose<CR>', opts)
map('n', 'zz', ':UndotreeToggle<CR>', opts)
