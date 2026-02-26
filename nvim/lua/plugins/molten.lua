return {
  {
    "benlubas/molten-nvim",
    version = "^1.0.0",
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",

    init = function()
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_output_win_max_height = 20

      -- important for ipynb
      vim.g.molten_auto_init_behavior = "init"

      -- ⭐ KEY FIX: disable virtual text
      vim.g.molten_virt_text_output = false

      -- auto open output window
      vim.g.molten_auto_open_output = true

      -- nicer window
      vim.g.molten_output_win_border = "rounded"
    end,
  },
}
