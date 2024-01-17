vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' --MMM......
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }                --ASYNCHRONISM IN LUA
    }
    use { "catppuccin/nvim", as = "catppuccin" }                  --REALLYYY.....
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }) --DUHHH....
    use('tpope/vim-fugitive')                                     --GITHUB STATISTICS
    use('norcalli/nvim-colorizer.lua')                            --COLORIZE RGB AND OTHER COLOUR VALUES
    use("numToStr/Comment.nvim")                                  -- Easily comment stuff
    use('JoosepAlviste/nvim-ts-context-commentstring')
    use('nvim-tree/nvim-tree.lua')
    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'saadparwaiz1/cmp_luasnip' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
end)
