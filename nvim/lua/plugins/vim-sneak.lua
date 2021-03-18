return function()
  -- mappings
  vim.api.nvim_set_keymap('', 'gS', '<Plug>Sneak_,', {})
  vim.api.nvim_set_keymap('', 'gs', '<Plug>Sneak_;', {})

  vim.g["sneak#label"] = 1
  vim.g["sneak#use_ic_scs"] = 1 -- case insensitive sneak
  vim.g["sneak#s_next"] = 1
  vim.g["sneak#prompt"] = '🔎 '
end
