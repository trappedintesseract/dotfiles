return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "default",

        -- Enter = newline
        ["<CR>"] = { "fallback" },

        -- Tab = accept completion
        ["<Tab>"] = { "accept", "fallback" },

        -- Proper navigation inside menu
        ["<C-n>"] = { "select_next", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback" },

        -- Arrow keys ALSO navigate suggestions
        ["<Down>"] = { "select_next", "fallback" },
        ["<Up>"] = { "select_prev", "fallback" },
      },

      sources = {
        default = {
          "snippets",
          "path",
          "lsp",
          -- buffer intentionally last
          "buffer",
        },

        providers = {
          -- ↓↓↓ Make buffer almost silent
          buffer = {
            max_items = 3, -- very few suggestions
            score_offset = -100, -- extremely low priority
            opts = {
              get_bufnrs = function()
                return { vim.api.nvim_get_current_buf() }
              end,
            },
          },

          -- ↑↑ Give snippets highest priority
          snippets = {
            score_offset = 100, -- keep snippets below LSP/path

            should_show_items = function(ctx)
              local prefix = ctx.get_keyword()

              -- show snippets only if user typed >=2 chars
              return prefix and #prefix >= 2
            end,
          },

          -- path slightly below snippets
          path = {
            score_offset = 80,
          },

          -- LSP normal
          lsp = {
            score_offset = 50,
          },
        },
      },

      snippets = {
        preset = "luasnip",
      },

      completion = {
        menu = {
          auto_show = true,
        },
      },
    },
  },
}
