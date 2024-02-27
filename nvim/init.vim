"Initial settings

syntax on
set relativenumber
set mouse=v
set nocompatible
set showmatch
set ignorecase
set hlsearch
set incsearch
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set wildmode=longest,list
filetype plugin indent on
set mouse=a
set clipboard=unnamedplus
filetype plugin on
set ttyfast
set smartindent

"Plugins

call plug#begin()

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', {'as':'dracula'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'dstein64/nvim-scrollview'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'alexm3133/codeshade'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-tree/nvim-web-devicons' 
Plug 'nvim-tree/nvim-tree.lua'

call plug#end()

"settings after plugin

colorscheme catppuccin-mocha
let g:scrollview_autozindex = 1

"Keymaps

nnoremap <C-s> :w<CR>
nnoremap <C-n> :NvimTreeOpen<CR>
nmap <C-c> <Plug>NERDCommenterToggle
vmap <C-c> <Plug>NERDCommenterTOggle
nnoremap <silent> gd :<C-u>call CocActionAsync('jumpDefinition')<CR>
nnoremap gb :bp<CR>
nnoremap gf :bn<CR>
nnoremap gx :bd<CR>
nnoremap <C-f> :Telescope find_files<CR>
nnoremap <C-g> :Telescope live_grep<CR>
lua << END
require('lualine').setup()
require('codeshade')
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
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
END

