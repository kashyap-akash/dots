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
  require("myconf.plugins.treesitter"),
  require("myconf.plugins.telescope"),
  require("myconf.plugins.bufferline"),
  require("myconf.plugins.lualine"),
  require("myconf.plugins.nvimtree"),
  require("myconf.plugins.toggleterm"),
  require("myconf.plugins.cmp"),
  require("myconf.plugins.lsp"),
  require("myconf.plugins.comments"),
  require("myconf.plugins.colorizer"),
  require("myconf.plugins.rainbow"),
  require("myconf.plugins.catppuccin"),
  require("myconf.plugins.fugitive"),
}

require("lazy").setup(plugins)
