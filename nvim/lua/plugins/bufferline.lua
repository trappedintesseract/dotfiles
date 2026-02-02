return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    opts.highlights = require("catppuccin.special.bufferline").get_theme()
  end,
}
