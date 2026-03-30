return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },

  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "java",
        "javascript",
        "rust",
      },

      sync_install = false,
      auto_install = true,

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    })
  end,
}
