return {
  "akinsho/toggleterm.nvim",
  version = "*",
  cmd = { "ToggleTerm" },

  config = function()
    require("toggleterm").setup({
      size = 5,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = "float",
      close_on_exit = true,
      shell = vim.o.shell,

      float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    })
  end,
}
