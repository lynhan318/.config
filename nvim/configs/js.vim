lua <<EOF
require'lspconfig'.flow.setup{}
require'lspconfig'.vimls.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.rust_analyzer.setup{}

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  },
  rainbow = {
    enable = true,
    disable = {'bash'}
  }
}
EOF
