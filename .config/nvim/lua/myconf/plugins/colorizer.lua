return {
  "norcalli/nvim-colorizer.lua",
  event = "VeryLazy",

  config = function()
    require("colorizer").setup({
      "*", -- apply to all filetypes
    }, {
      RGB      = true,
      RRGGBB   = true,
      names    = true,
      RRGGBBAA = false,
      rgb_fn   = false,
      hsl_fn   = false,
      css      = false,
      css_fn   = false,
      mode     = "background",
    })
  end,
}
