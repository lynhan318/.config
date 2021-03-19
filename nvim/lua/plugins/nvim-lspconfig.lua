return function()
  local lspconfig = require "lspconfig"

  local map = function(mode, key, result, noremap, expr)
      if noremap == nil then
          noremap = true
      end
      if expr == nil then
          expr = false
      end
      vim.api.nvim_buf_set_keymap(0, mode, key, result, {noremap = noremap, silent = true, expr = expr})
  end

  -- Icons
  -- vim.lsp.protocol.CompletionItemKind = {
  --     " [text]",
  --     " [method]",
  --     " [function]",
  --     " [constructor]",
  --     "ﰠ [field]",
  --     " [variable]",
  --     " [class]",
  --     " [interface]",
  --     " [module]",
  --     " [property]",
  --     " [unit]",
  --     " [value]",
  --     " [enum]",
  --     " [key]",
  --     "﬌ [snippet]",
  --     " [color]",
  --     " [file]",
  --     " [reference]",
  --     " [folder]",
  --     " [enum member]",
  --     " [constant]",
  --     " [struct]",
  --     "⌘ [event]",
  --     " [operator]",
  --     "♛ [type]"
  -- }

  vim.lsp.handlers["textDocument/formatting"] = function(err, _, result, _, bufnr)
      if err ~= nil or result == nil then
          return
      end
      if not vim.api.nvim_buf_get_option(bufnr, "modified") then
          local view = vim.fn.winsaveview()
          vim.lsp.util.apply_text_edits(result, bufnr)
          vim.fn.winrestview(view)
          if bufnr == vim.api.nvim_get_current_buf() then
              vim.cmd [[noautocmd :update]]
              vim.cmd [[GitGutter]]
          end
      end
  end

  vim.lsp.handlers["textDocument/publishDiagnostics"] = function(...)
      vim.lsp.with(
          vim.lsp.diagnostic.on_publish_diagnostics,
          {
              underline = true,
              update_in_insert = false
          }
      )(...)
      pcall(vim.lsp.diagnostic.set_loclist, {open_loclist = false})
  end

  -- Prettier
  local format_options_prettier = {
      tabWidth = 2,
      singleQuote = true,
      trailingComma = "all",
      configPrecedence = "prefer-file"
  }
  vim.g.format_options_typescript = format_options_prettier
  vim.g.format_options_javascript = format_options_prettier
  vim.g.format_options_typescriptreact = format_options_prettier
  vim.g.format_options_javascriptreact = format_options_prettier
  vim.g.format_options_json = format_options_prettier
  vim.g.format_options_css = format_options_prettier
  vim.g.format_options_scss = format_options_prettier
  vim.g.format_options_html = format_options_prettier
  vim.g.format_options_yaml = format_options_prettier
  vim.g.format_options_markdown = format_options_prettier

  FormatToggle = function(value)
      vim.g[string.format("format_disabled_%s", vim.bo.filetype)] = value
  end
  vim.cmd [[command! FormatDisable lua FormatToggle(true)]]
  vim.cmd [[command! FormatEnable lua FormatToggle(false)]]

  _G.formatting = function()
      if not vim.g[string.format("format_disabled_%s", vim.bo.filetype)] then
          vim.lsp.buf.formatting(vim.g[string.format("format_options_%s", vim.bo.filetype)] or {})
      end
  end

  local on_attach = function(client)
      if client.resolved_capabilities.code_action then
          map('n', '<C-e>', '<Cmd>lua vim.lsp.buf.code_action()<CR>')
          vim.cmd [[augroup CodeAction]]
          vim.cmd [[autocmd! * <buffer>]]
          -- vim.cmd [[autocmd CursorHold * lua require'nvim-lightbulb'.update_lightbulb()]]
          vim.cmd [[augroup END]]
      end
      if client.resolved_capabilities.document_formatting then
          vim.cmd [[augroup Format]]
          vim.cmd [[autocmd! * <buffer>]]
          vim.cmd [[autocmd BufWritePost <buffer> lua formatting()]]
          vim.cmd [[augroup END]]
      end
      if client.resolved_capabilities.goto_definition then
          map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
      end
      if client.resolved_capabilities.hover then
          -- map("n", "<CR>", "<cmd>lua vim.lsp.buf.hover()<CR>")
          map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
      end
      -- if client.resolved_capabilities.find_references then
      --     map("n", "<Leader>*", ":call lists#ChangeActiveList('Quickfix')<CR>:lua vim.lsp.buf.references()<CR>")
      -- end
      if client.resolved_capabilities.rename then
          map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
      end

      map('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>')
      -- map('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>')
      -- map('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>')
      map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
    --   map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
      map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
      map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
      map('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
      map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
      -- map('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
      map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
      map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
      map('n', '<space>s', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
      map('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
      map('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
      map('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>')

  end


  -- https://github.com/theia-ide/typescript-language-server
  lspconfig.tsserver.setup {
      on_attach = function(client)
          client.resolved_capabilities.document_formatting = false
          on_attach(client)
      end
  }

  -- https://github.com/iamcco/vim-language-server
  lspconfig.vimls.setup {on_attach = on_attach}

  -- https://github.com/vscode-langservers/vscode-json-languageserver
  lspconfig.jsonls.setup {
      on_attach = on_attach,
      cmd = { "vscode-json-languageserver", "--stdio" }
  }

  -- https://github.com/vscode-langservers/vscode-css-languageserver-bin
  lspconfig.cssls.setup {on_attach = on_attach}

  lspconfig.rust_analyzer.setup {
      on_attach = on_attach,
  }
  -- https://github.com/vscode-langservers/vscode-html-languageserver-bin
  lspconfig.html.setup {on_attach = on_attach}

  -- https://github.com/bash-lsp/bash-language-server
  lspconfig.bashls.setup {on_attach = on_attach}


  local prettier = require "efm/prettier"
  local eslint = require "efm/eslint"
  local shellcheck = require "efm/shellcheck"
  local misspell = require "efm/misspell"

  -- https://github.com/mattn/efm-langserver
  lspconfig.efm.setup {
      on_attach = on_attach,
      init_options = {documentFormatting = true},
      -- set log not working
      -- cmd = {'efm-langserver', '-logfile', '~/Desktop/efm.log', '-loglevel', '10'},
      settings = {
          rootMarkers = {".git/"},
          languages = {
              ["="] = {misspell},
              typescript = {prettier, eslint},
              javascript = {prettier, eslint},
              typescriptreact = {prettier, eslint},
              javascriptreact = {prettier, eslint},
              yaml = {prettier},
              json = {prettier},
              html = {prettier},
              scss = {prettier},
              css = {prettier},
              markdown = {prettier},
              sh = {shellcheck},
          }
      }
  }
end
