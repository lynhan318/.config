local cmd = vim.cmd
local g = vim.g

-- Load plugins
require "telescope".setup {
  defaults = {
    layout_strategy = "vertical",
    results_height = 15
  }
}

-- Fugitive
g.fugitive_pty = 0

-- Status line
local lualine = require('lualine')
lualine.options.theme = 'forest_night'
lualine.sections = {
  lualine_a = { 'mode' },
  lualine_b = { 'branch' },
  lualine_c = { 'filename' },
  lualine_x = { 'filetype' },
  lualine_y = {},
  lualine_z = { 'location'  },
}

lualine.inactive_sections = {
  lualine_a = {  },
  lualine_b = {  },
  lualine_c = { 'filename' },
  lualine_x = { 'location' },
  lualine_y = {  },
  lualine_z = {  }
}
lualine.status()

-- Treesitter
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false -- Whether the query persists across vim sessions
  }
}

require'colorizer'.setup(
  {'*';},
  {
  RGB      = true;         -- #RGB hex codes
  RRGGBB   = true;         -- #RRGGBB hex codes
  names    = false;         -- "Name" codes like Blue
  RRGGBBAA = true;         -- #RRGGBBAA hex codes
  rgb_fn   = true;         -- CSS rgb() and rgba() functions
  hsl_fn   = true;         -- CSS hsl() and hsla() functions
  css      = true;         -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
  css_fn   = true;         -- Enable all CSS *functions*: rgb_fn, hsl_fn
})

require 'lsp'
