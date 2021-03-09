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
