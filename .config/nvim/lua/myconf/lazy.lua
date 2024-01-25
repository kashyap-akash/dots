local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

local plugins = {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { { 'nvim-lua/plenary.nvim' } } --ASYNCHRONISM IN LUA
    },
    { 'HiPhish/rainbow-delimiters.nvim' },
    { 'theprimeagen/harpoon' },                                 --Fast A$$ Navigaton
    { 'nvim-tree/nvim-web-devicons' },
    { 'catppuccin/nvim',                 name = "catppuccin" }, --COLORSCHEME.....
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' }, --TS SYNTAX HIGHLIGHTING....
    { 'tpope/vim-fugitive' },                                   --GITHUB STATISTICS
    { 'norcalli/nvim-colorizer.lua' },                          --COLORIZE RGB AND OTHER COLOUR VALUES
    { 'numToStr/Comment.nvim' },                                -- Easily comment stuff
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' } --Cool Looking Bottom Line
    },
    { 'JoosepAlviste/nvim-ts-context-commentstring' }, {
    'nvim-tree/nvim-tree.lua',
    config = function()
        vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
    end,
},                                                                                  --FILE TREE
    { 'akinsho/toggleterm.nvim',                    version = "*", config = true }, --TOGGLE TERMINAL INSIDE NEOVIM
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
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
        },
    },
}

require("lazy").setup(plugins, opts)
