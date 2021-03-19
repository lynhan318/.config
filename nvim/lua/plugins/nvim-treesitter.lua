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
        "rust",
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
    }
  }  
end
