-- use {'kyazdani42/nvim-tree.lua'}
-- use {'kyazdani42/nvim-web-devicons'} -- opcional, para iconos de archivo

-- disable netrw at the very start
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require('nvim-web-devicons').setup {
   -- tu configuración para nvim-web-devicons aquí
}

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

