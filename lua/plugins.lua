vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Gestor de paquetes
    --use {'rose-pine/neovim', as = 'rose-pine', config = function() require('plugin-config/rose-pine') end}
    --use {'preservim/nerdtree', cmd = 'NERDTreeToggle'}
    use 'preservim/nerdcommenter'
    use 'morhetz/gruvbox'
    --use {'dracula/vim', as = 'dracula'}
    use {'neoclide/coc.nvim', branch = 'release'}
    use 'octol/vim-cpp-enhanced-highlight'
    use 'neovim/nvim-lspconfig' -- Configuración básica de LSP
    use 'hrsh7th/nvim-cmp'      -- Autocompletado
    use 'hrsh7th/cmp-nvim-lsp'  -- Completar con LSP
    use 'dstein64/nvim-scrollview'
    --use {'catppuccin/nvim', as = 'catppuccin'}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'alexm3133/codeshade'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-tree/nvim-tree.lua'    
    use 'romgrk/barbar.nvim'
    use 'savq/melange-nvim'
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
    use {
        'lewis6991/gitsigns.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('plugin-config/gitsigns') 
        end
    }
    if packer_bootstrap then
        require('packer').sync()
    end
end)

