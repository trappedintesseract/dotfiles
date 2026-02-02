return {
  "GCBallesteros/jupytext.nvim",
  lazy = false,
  config = function()
    require("jupytext").setup({
      jupytext_command = "/home/trappedintesseract/.virtualenvs/nvim/bin/jupytext",
      style = "markdown",
      output_extension = "md",
      force_ft = "markdown",
    })
  end,
}
