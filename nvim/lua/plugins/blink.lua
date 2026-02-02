return {
  {
    "saghen/blink.cmp",
    opts = {

      sources = {
        default = {
          "lsp", -- language symbols (STL, types, funcs)
          "snippets", -- LuaSnip
          "buffer",
        },

        providers = {
          buffer = {
            opts = {
              get_bufnrs = function()
                return { vim.api.nvim_get_current_buf() }
              end,
            },
          },
        },
      },

      snippets = {
        preset = "luasnip",
      },
    },
  },
}
