return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },

  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = { "clangd", "pyright" },

      handlers = {
        -- default handler for all servers
        function(server)
          local lspconfig = require("lspconfig")
          local capabilities = require("blink.cmp").get_lsp_capabilities()

          lspconfig[server].setup({
            capabilities = capabilities,
          })
        end,
      },
    },
  },
}
