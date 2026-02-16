return {
  { "ellisonleao/gruvbox.nvim", name = "gruvbox", lazy = false },
  { "sainnhe/everforest", name = "everforest", lazy = false },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    opts = {
      lsp_styles = {
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
    },
    auto_integrations = true,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
