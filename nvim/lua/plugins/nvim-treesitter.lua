return function()
  require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "javascript",
        "typescript",
        "json",
        "graphql",
        "tsx",
        "html",
        "jsdoc",
        "css",
        "bash",
        "lua"
    },
    indent = {
      enable = true
    },
    highlight = {
      enable = true,
      use_languagetree = true
    },
    playground = {
      enable = true,
      disable = {},
      updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
      persist_queries = false -- Whether the query persists across vim sessions
    },
    refactor = {
      highlight_definitions = {
        enable = true
      },
      -- highlight_current_scope = {
      --   enable = true
      -- }
    },
    textobjects = {
      enable=true,
      select = {
        enable = true,
        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["aC"] = "@class.outer",
          ["iC"] = "@class.inner",
          ["ac"] = "@conditional.outer",
          ["ic"] = "@conditional.inner",
          ["is"] = "@statement.inner",
          ["as"] = "@statement.outer",
          ["ad"] = "@lhs.inner",
          ["id"] = "@rhs.inner",
          ["am"] = "@call.outer",
          ["im"] = "@call.inner",
          ["al"] = "@loop.outer",
          ["il"] = "@loop.inner",
          ["at"] = "@block.outer",
          ["it"] = "@block.inner",
        },
      },
      swap = {
        enable = true,
        swap_next = {
          ["<leader>al"] = "@parameter.inner",
        },
        swap_previous = {
          ["<leader>ah"] = "@parameter.inner",
        },
      },
      move = {
        enable = true,
        goto_next_start = {
          ["]m"] = "@function.outer",
          ["]]"] = "@class.outer",
        },
        goto_next_end = {
          ["]M"] = "@function.outer",
          ["]["] = "@class.outer",
        },
        goto_previous_start = {
          ["[m"] = "@function.outer",
          ["[["] = "@class.outer",
        },
        goto_previous_end = {
          ["[M"] = "@function.outer",
          ["[]"] = "@class.outer",
        },
      },
    },
  }  
end
