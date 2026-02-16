return {
  "GCBallesteros/jupytext.nvim",
  lazy = false,
  config = function()
    require("jupytext").setup({
      jupytext_command = "/home/trappedintesseract/.virtualenvs/nvim/bin/jupytext",

      -- 🔥 FIX: use a VALID format
      style = "percent", -- not "python"
      output_extension = "py",
      force_ft = "python",
    })
  end,
}
