return function()
  vim.g.closetag_filenames = "*.html,*.xml,*.txml,*.axml,*.jsx,*.tsx"
  vim.g.closetag_xhtml_filenames = "*.jsx,*.js,*.tsx"
  vim.g.closetag_emptyTags_caseSensitive = 1
  vim.g.closetag_shortcut = '>'
end
