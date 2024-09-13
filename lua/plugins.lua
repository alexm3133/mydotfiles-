vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' 
    use 'preservim/nerdcommenter'
    use 'morhetz/gruvbox'
    use {'neoclide/coc.nvim', branch = 'release'}
    use 'octol/vim-cpp-enhanced-highlight'
    use 'neovim/nvim-lspconfig' 
    use 'hrsh7th/nvim-cmp'      
    use 'hrsh7th/cmp-nvim-lsp'  
    use 'dstein64/nvim-scrollview'
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'alexm3133/codeshade'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-tree/nvim-tree.lua'    
    use 'romgrk/barbar.nvim'
    use 'rebelot/kanagawa.nvim'
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
    
    -- Plugins para Java
    use 'artur-shaik/vim-javacomplete2' -- Autocompletado para Java
use {
    'mfussenegger/nvim-jdtls',
    ft = {'java'},
    config = function()
        local jdtls = require('jdtls')
        local home = os.getenv('HOME')
        local workspace_dir = home .. "/workspace/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
        local config = {
            cmd = {
                'java', '-Declipse.application=org.eclipse.jdt.ls.core.id1',
                '-Dosgi.bundles.defaultStartLevel=4', '-Declipse.product=org.eclipse.jdt.ls.core.product',
                '-Dlog.protocol=true', '-Dlog.level=ALL', '-Xms1g', '-Xmx2G',
                '-jar', home .. '/alexcode/gits/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/plugins/org.eclipse.equinox.launcher_1.6.900.v20240613-2009.jar',
                '-configuration', home .. '/alexcode/gits/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/config_linux',
                '-data', workspace_dir,
            },
            root_dir = require('jdtls.setup').find_root({'gradlew', 'mvnw', '.git'}),
        }
        jdtls.start_or_attach(config)
    end
}
    use 'mfussenegger/nvim-dap' -- Depuración en Java

    if packer_bootstrap then
        require('packer').sync()
    end
end)

