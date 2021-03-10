--https://sharksforarms.dev/posts/neovim-rust/
-- nvim_lsp object
local lsp = require'lspconfig'

local on_attach = function(client)
    require'completion'.on_attach(client)
end

vim.lsp.handlers["textDocument/publishDiagnostics"] =
  vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    underline = true,
    virtual_text = true,
    update_in_insert = false,
    signs = {
      priority = 20
    }
  }
)

lsp.vimls.setup{
    on_attach= on_attach
}
lsp.tsserver.setup {
    on_attach = on_attach,
}
lsp.rust_analyzer.setup {
    on_attach = on_attach,
}
-- https://github.com/iamcco/vim-language-server
lsp.vimls.setup {on_attach = on_attach}

-- https://github.com/vscode-langservers/vscode-json-languageserver
lsp.jsonls.setup {
    on_attach = on_attach,
    cmd = {"json-languageserver", "--stdio"}
}

-- https://github.com/vscode-langservers/vscode-css-languageserver-bin
lsp.cssls.setup {on_attach = on_attach}

-- https://github.com/vscode-langservers/vscode-html-languageserver-bin
lsp.html.setup {on_attach = on_attach}

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = {priority = 100},
    calc = true;
    vsnip = {priority = 300},
    nvim_lsp = true;
    nvim_lsp = {priority = 200},
    nvim_lua = true;
    spell = true;
    tags = true;
    snippets_nvim = true;
    treesitter = true;
  };
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
