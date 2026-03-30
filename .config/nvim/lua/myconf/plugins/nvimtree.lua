return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = { "NvimTreeToggle", "NvimTreeOpen" },

  init = function()
    -- runs BEFORE plugin loads (correct place)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,

  config = function()
    vim.opt.termguicolors = true

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

    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file tree" })
  end,
}
