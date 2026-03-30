return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- VERY IMPORTANT (load before other UI plugins)

  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      background = {
        dark = "mocha",
      },
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      transparent_background = true,
      show_end_of_buffer = false,
      term_colors = false,

      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.50,
      },

      no_italic = false,
      no_bold = false,
      no_underline = false,

      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
      },

      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        rainbow_delimiters = true,
        mason = true,
        telescope = true,
      },
    })

    -- Apply colorscheme AFTER setup
    vim.cmd.colorscheme("catppuccin")
  end,
}
