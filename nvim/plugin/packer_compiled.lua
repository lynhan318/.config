-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["defx-git"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/defx-git"
  },
  ["defx-icons"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/defx-icons"
  },
  ["defx.nvim"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/defx.nvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\nÄ\1\0\0\5\0\6\1\n5\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0B\2\2\0?\2\0\0=\1\5\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\2\0\0\21--stdin-filepath\1\0\2\nstdin\2\bexe\rprettier\5ÄÄ¿ô\4D\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\2\0\0\18--emit=stdout\1\0\2\nstdin\2\bexe\frustfmt(\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\2\nstdin\2\bexe\15lua-formatœ\4\1\0\b\0\25\00066\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\2'\4\6\0+\5\2\0B\2\3\0019\2\a\0005\4\b\0005\5\t\0004\6\3\0>\1\1\6=\6\n\0054\6\3\0>\1\1\6=\6\v\0054\6\3\0>\1\1\6=\6\f\0054\6\3\0>\1\1\6=\6\r\0054\6\3\0>\1\1\6=\6\14\0054\6\3\0>\1\1\6=\6\15\0054\6\3\0>\1\1\6=\6\16\0054\6\3\0>\1\1\6=\6\17\0054\6\3\0>\1\1\6=\6\18\0054\6\3\0>\1\1\6=\6\19\0054\6\3\0003\a\20\0>\a\1\6=\6\21\0054\6\3\0003\a\22\0>\a\1\6=\6\23\5=\5\24\4B\2\2\1K\0\1\0\rfiletype\blua\0\trust\0\rmarkdown\tyaml\tscss\tjson\bcss\thtml\15javascript\15typescript\20typescriptreact\20javascriptreact\1\0\0\1\0\1\flogging\1\nsetupŒ\1        augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.js,*.mjs,*.ts,*.rs,*.lua,*.jsx,*.tsx,*.md,*.mdx,*.yml,*.json,*.css,*.scss,*.html FormatWrite\n        augroup END\n    \14nvim_exec\bapi\bvim\0\14formatter\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/formatter.nvim"
  },
  fzf = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["lsp_extensions.nvim"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/lsp_extensions.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n9\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\t<cr>\18compe#confirm\afn\bvimí\2\1\0\4\1\f\2'6\0\0\0009\0\1\0009\0\2\0B\0\1\2\b\0\0\0X\0\27Ä6\0\0\0009\0\1\0009\0\3\0B\0\1\0029\0\4\0\b\0\1\0X\0\tÄ6\0\0\0009\0\1\0009\0\5\0B\0\1\1-\0\0\0009\0\6\0'\2\a\0002\0\17ÄX\0\15Ä6\0\0\0009\0\b\0003\2\t\0)\3\20\0B\0\3\1-\0\0\0009\0\6\0'\2\n\0002\0\0ÄD\0\2\0X\0\4Ä-\0\0\0009\0\v\0002\0\0ÄD\0\1\0K\0\1\0D\0\2\0\1¿\26check_break_line_char\n<c-n>\0\rdefer_fn\n<c-y>\besc\18compe#confirm\rselected\18complete_info\15pumvisible\afn\bvim\0˛ˇˇˇ\31€\2\1\0\b\0\20\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0006\1\0\0'\3\1\0B\1\2\0026\2\t\0004\3\0\0=\3\n\0026\2\6\0009\2\v\2'\3\r\0=\3\f\0026\2\n\0003\3\15\0=\3\14\2\18\2\0\0'\4\16\0'\5\17\0'\6\18\0005\a\19\0B\2\5\0012\0\0ÄK\0\1\0\1\0\2\fnoremap\2\texpr\2&v:lua.MUtils.completion_confirm()\t<CR>\6i\0\23completion_confirm\5\27completion_confirm_key\6g\vMUtils\a_G\20nvim_set_keymap\bapi\bvim\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\nÉ\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\b\vrgb_fn\2\rRRGGBBAA\2\nnames\1\vRRGGBB\2\bRGB\2\bcss\2\vcss_fn\2\vhsl_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\n«\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vsource\1\0\n\nspell\1\vbuffer\2\tpath\1\18snippets_nvim\2\14ultisnips\2\rnvim_lua\2\rnvim_lsp\2\nvsnip\2\tcalc\2\ttags\1\1\0\v\21incomplete_delay\3ê\3\19source_timeout\3»\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\fenabled\2\ndebug\1\19max_menu_width\3d\19max_kind_width\3d\19max_abbr_width\3d\nsetup\ncompe\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n∫\4\0\2\6\0\6\0\v9\2\0\0009\2\1\2\15\0\2\0X\3\6Ä6\2\2\0009\2\3\0029\2\4\2'\4\5\0+\5\1\0B\2\3\1K\0\1\0œ\3          hi LspReferenceRead cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceText cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceWrite cterm=bold ctermbg=red guibg=#34495e\n          augroup lsp_document_highlight\n            autocmd! * <buffer>\n            autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n            autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n          augroup END\n        \14nvim_exec\bapi\bvim\23document_highlight\26resolved_capabilities~\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\2\14doc_lines\3\2\tbind\2\14on_attach\18lsp_signature\frequireÏ\1\0\2\a\0\r\0\0309\2\0\1\15\0\2\0X\3\26Ä5\2\6\0005\3\1\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\1\6B\4\2\2=\4\5\3=\3\a\0025\3\b\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\2\6B\4\2\2=\4\5\3=\3\t\0026\3\n\0'\5\v\0B\3\2\0029\3\f\3\18\5\0\0\18\6\2\0D\3\3\0K\0\1\0\rin_range\20lsp-status/util\frequire\bend\1\0\1\14character\3\0\nstart\1\0\0\tline\14byte2line\afn\bvim\1\0\1\14character\3\0\15valueRangeã\1\1\1\5\1\a\0\r-\1\0\0009\1\0\0015\3\1\0006\4\2\0=\4\3\0033\4\4\0=\4\5\3B\1\2\1-\1\0\0009\1\6\1\18\3\0\0B\1\2\1K\0\1\0\0¿\14on_attach\18select_symbol\0\16kind_labels\17kind_symbols\1\0\1\21current_function\1\vconfigß\6\0\0\3\0\r\0-6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\0016\0\0\0009\0\1\0'\2\n\0B\0\2\0016\0\0\0009\0\1\0'\2\v\0B\0\2\0016\0\0\0009\0\1\0'\2\f\0B\0\2\1K\0\1\0Tcommand! -nargs=0 LspVirtualTextToggle lua require(\"lsp/virtual_text\").toggle();nnoremap <silent> g] :Lspsaga diagnostic_jump_next<CR>>nnoremap <silent> g[ :Lspsaga show_cursor_diagnostics<CR>1nnoremap <silent> gh :Lspsaga lsp_finder<CR>5nnoremap <silent> gs :Lspsaga signature_help<CR>2nnoremap <silent> ca :Lspsaga code_action<CR>/nnoremap <silent> K :Lspsaga hover_doc<CR>;nnoremap <silent> rn <cmd>lua vim.lsp.buf.rename()<CR>Cnnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>?nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>?nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>\bcmd\bvim5\0\2\6\3\0\0\n-\2\0\0\18\4\0\0\18\5\1\0B\2\3\1-\2\1\0\18\4\0\0B\2\2\1-\2\2\0B\2\1\1K\0\1\0\4¿\6¿\a¿ò\14\1\0\22\0>\0w6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0025\4\6\0=\4\5\0016\4\a\0009\4\b\0049\4\t\4'\6\n\0005\a\v\0B\4\3\0016\4\a\0009\4\b\0049\4\t\4'\6\f\0005\a\r\0B\4\3\0016\4\a\0009\4\b\0049\4\t\4'\6\14\0005\a\15\0B\4\3\0016\4\a\0009\4\b\0049\4\t\4'\6\16\0005\a\17\0B\4\3\0019\4\18\0B\4\1\0019\4\19\0035\6\20\0B\4\2\0016\4\a\0009\4\21\0049\4\22\0046\5\a\0009\5\21\0059\5\24\0056\a\a\0009\a\21\a9\a\25\a9\a\26\a5\b\27\0B\5\3\2=\5\23\0043\4\28\0003\5\29\0003\6\30\0003\a\31\0003\b \0005\t$\0005\n\"\0005\v!\0=\v#\n=\n%\t5\n'\0005\v&\0=\v#\n=\n(\t5\n*\0005\v)\0=\v#\n=\n+\t4\n\0\0=\n,\t4\n\0\0=\n-\t4\n\0\0=\n.\t5\n4\0005\v2\0005\f0\0005\r/\0=\r1\f=\f3\v=\v5\n6\v6\0\18\r\t\0B\v\2\4H\14\24Ä6\0167\0\18\18\15\0B\16\2\2\a\0168\0X\16\3Ä\18\16\15\0B\16\1\2\18\15\16\0=\b9\0156\16\a\0009\16;\16'\18<\0009\19:\15\14\0\19\0X\20\1Ä4\19\0\0009\20:\0\18\21\n\0B\16\5\2=\16:\0158\16\14\0029\16=\16\18\18\15\0B\16\2\1F\14\3\3R\14Ê2\0\0ÄK\0\1\0\nsetup\tkeep\20tbl_deep_extend\17capabilities\14on_attach\rfunction\ttype\npairs\17textDocument\1\0\0\15completion\1\0\0\19completionItem\1\0\0\1\0\1\19snippetSupport\2\nvimls\rtsserver\18rust_analyzer\vjsonls\1\0\0\1\3\0\0\24json-languageserver\f--stdio\thtml\1\0\0\1\3\0\0\24html-languageserver\f--stdio\ncssls\1\0\0\bcmd\1\0\0\1\3\0\0\23css-languageserver\f--stdio\0\0\0\0\0\1\0\4\nsigns\2\17virtual_text\1\14underline\2\21update_in_insert\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\blsp\1\0\1\29use_saga_diagnostic_sign\1\18init_lsp_saga\22register_progress\1\0\3\nnumhl\14WhiteSign\vtexthl\"LspDiagnosticsSignInformation\ttext\bÔÅö\"LspDiagnosticsSignInformation\1\0\3\nnumhl\rBlueSign\vtexthl\27LspDiagnosticsSignHint\ttext\bÔÅ™\27LspDiagnosticsSignHint\1\0\3\nnumhl\15YellowSign\vtexthl\30LspDiagnosticsSignWarning\ttext\bÔÅ±\30LspDiagnosticsSignWarning\1\0\3\nnumhl\fRedSign\vtexthl\28LspDiagnosticsSignError\ttext\bÔÅó\28LspDiagnosticsSignError\16sign_define\afn\bvim\1\26\0\0\18 Ôíû  (Text) \19 Ôö¶  (Method)\21 Ôûî  (Function)\24 Ôê•  (Constructor)\18 Ô¥≤  (Field)\21[Óúñ] (Variable)\18 Ô†ñ  (Class)\22 Ô∞Æ  (Interface)\19 Ôô®  (Module)\20 Ô™∂ (Property)\17 Ôëµ  (Unit)\18 Ô¢ü  (Value)\16 Ô©ó (Enum)\20 Ô†ä  (Keyword)\20 ÔÉÑ  (Snippet)\18 Ô£ó  (Color)\17 Ôúì  (File)\22 Ôúú  (Reference)\19 Ôùä  (Folder)\23 ÔÖù  (EnumMember)\21 Ô≤Ä  (Constant)\19 Ô≥§  (Struct)\18 ÔÉß  (Event)\21 Ôó´  (Operator)\26 ÔûÉ  (TypeParameter)\23CompletionItemKind\flspsaga\14lspconfig\21vim.lsp.protocol\15lsp-status\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspfuzzy"] = {
    config = { "\27LJ\2\nÀ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\15fzf_action\1\0\3\vctrl-x\nsplit\vctrl-t\ftabedit\vctrl-v\vvsplit\16fzf_preview\1\2\0\0\18right:+{2}-/2\1\0\3\rfzf_trim\2\17fzf_modifier\t:~:.\fmethods\ball\nsetup\rlspfuzzy\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-lspfuzzy"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-transparent"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-transparent"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÜ\3\0\0\5\0\17\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0004\4\0\0=\4\15\3=\3\16\2B\0\2\1K\0\1\0\15playground\fdisable\1\0\3\15updatetime\3\25\20persist_queries\1\venable\2\26context_commentstring\1\0\1\venable\2\14highlight\1\0\2\21use_languagetree\2\venable\2\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\21ensure_installed\1\0\0\1\f\0\0\15javascript\15typescript\tjson\fgraphql\btsx\thtml\njsdoc\trust\bcss\tbash\blua\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\nô\5\0\0\5\0\30\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\28\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\29\2B\0\2\1K\0\1\0\roverride\1\0\0\tlock\1\0\3\tname\tlock\ncolor\f#5c6370\ticon\bÔ†Ω\bmp4\1\0\3\tname\bmp4\ncolor\f#5c6370\ticon\bÔÖÑ\bmp3\1\0\3\tname\bmp3\ncolor\f#566370\ticon\bÔ¢Ö\btxt\1\0\3\tname\ttext\ncolor\f#61afef\ticon\bÔÖú\bmap\1\0\3\tname\btxt\ncolor\f#566370\ticon\bÓòî\taxml\1\0\3\tname\taxml\ncolor\f#f76c7c\ticon\bÔú≠\ttxml\1\0\3\tname\ttxml\ncolor\f#f76c7c\ticon\bÔú≠\bxml\1\0\3\tname\bxml\ncolor\f#f76c7c\ticon\bÔú≠\tacss\1\0\3\tname\bcss\ncolor\f#61afef\ticon\bÓùâ\ttcss\1\0\3\tname\bcss\ncolor\f#61afef\ticon\bÓùâ\bcss\1\0\3\tname\bcss\ncolor\f#61afef\ticon\bÓùâ\thtml\1\0\0\1\0\3\tname\thtml\ncolor\f#f76c7c\ticon\bÔÑª\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/rust.vim"
  },
  sonokai = {
    config = { "\27LJ\2\nˆ\1\0\0\4\0\n\0\0266\0\0\0009\0\1\0006\1\0\0009\1\1\1'\3\2\0B\1\2\0016\1\0\0009\1\1\1'\3\3\0B\1\2\0016\1\0\0009\1\4\1'\2\6\0=\2\5\0016\1\0\0009\1\4\1)\2\1\0=\2\a\0016\1\0\0009\1\4\1)\2\1\0=\2\b\1\18\1\0\0'\3\t\0B\1\2\1K\0\1\0\24colorscheme sonokai#sonokai_disable_italic_comment\26sonokai_enable_italic\14andromeda\18sonokai_style\6g\22set termguicolors\14syntax on\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/sonokai"
  },
  tagbar = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/tagbar"
  },
  ultisnips = {
    config = { "\27LJ\2\nØ\1\0\0\3\0\t\0\0156\0\0\0009\0\1\0006\1\0\0009\1\2\1'\2\4\0=\2\3\0016\1\0\0009\1\2\1'\2\6\0=\2\5\0016\1\0\0009\1\2\1'\2\b\0=\2\a\1K\0\1\0\n<c-p>!UltiSnipsJumpBackwardTrigger\n<c-n> UltiSnipsJumpForwardTrigger\n<c-i>\27UltiSnipsExpandTrigger\6g\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-surround"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\nÄ\1\0\0\5\0\6\1\n5\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0B\2\2\0?\2\0\0=\1\5\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\2\0\0\21--stdin-filepath\1\0\2\nstdin\2\bexe\rprettier\5ÄÄ¿ô\4D\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\2\0\0\18--emit=stdout\1\0\2\nstdin\2\bexe\frustfmt(\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\2\nstdin\2\bexe\15lua-formatœ\4\1\0\b\0\25\00066\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\2'\4\6\0+\5\2\0B\2\3\0019\2\a\0005\4\b\0005\5\t\0004\6\3\0>\1\1\6=\6\n\0054\6\3\0>\1\1\6=\6\v\0054\6\3\0>\1\1\6=\6\f\0054\6\3\0>\1\1\6=\6\r\0054\6\3\0>\1\1\6=\6\14\0054\6\3\0>\1\1\6=\6\15\0054\6\3\0>\1\1\6=\6\16\0054\6\3\0>\1\1\6=\6\17\0054\6\3\0>\1\1\6=\6\18\0054\6\3\0>\1\1\6=\6\19\0054\6\3\0003\a\20\0>\a\1\6=\6\21\0054\6\3\0003\a\22\0>\a\1\6=\6\23\5=\5\24\4B\2\2\1K\0\1\0\rfiletype\blua\0\trust\0\rmarkdown\tyaml\tscss\tjson\bcss\thtml\15javascript\15typescript\20typescriptreact\20javascriptreact\1\0\0\1\0\1\flogging\1\nsetupŒ\1        augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.js,*.mjs,*.ts,*.rs,*.lua,*.jsx,*.tsx,*.md,*.mdx,*.yml,*.json,*.css,*.scss,*.html FormatWrite\n        augroup END\n    \14nvim_exec\bapi\bvim\0\14formatter\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÜ\3\0\0\5\0\17\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0004\4\0\0=\4\15\3=\3\16\2B\0\2\1K\0\1\0\15playground\fdisable\1\0\3\15updatetime\3\25\20persist_queries\1\venable\2\26context_commentstring\1\0\1\venable\2\14highlight\1\0\2\21use_languagetree\2\venable\2\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\21ensure_installed\1\0\0\1\f\0\0\15javascript\15typescript\tjson\fgraphql\btsx\thtml\njsdoc\trust\bcss\tbash\blua\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
try_loadstring("\27LJ\2\n«\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vsource\1\0\n\nspell\1\vbuffer\2\tpath\1\18snippets_nvim\2\14ultisnips\2\rnvim_lua\2\rnvim_lsp\2\nvsnip\2\tcalc\2\ttags\1\1\0\v\21incomplete_delay\3ê\3\19source_timeout\3»\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\fenabled\2\ndebug\1\19max_menu_width\3d\19max_kind_width\3d\19max_abbr_width\3d\nsetup\ncompe\frequire\0", "config", "nvim-compe")
time([[Config for nvim-compe]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
try_loadstring("\27LJ\2\nØ\1\0\0\3\0\t\0\0156\0\0\0009\0\1\0006\1\0\0009\1\2\1'\2\4\0=\2\3\0016\1\0\0009\1\2\1'\2\6\0=\2\5\0016\1\0\0009\1\2\1'\2\b\0=\2\a\1K\0\1\0\n<c-p>!UltiSnipsJumpBackwardTrigger\n<c-n> UltiSnipsJumpForwardTrigger\n<c-i>\27UltiSnipsExpandTrigger\6g\bcmd\bvim\0", "config", "ultisnips")
time([[Config for ultisnips]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\nô\5\0\0\5\0\30\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\28\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\29\2B\0\2\1K\0\1\0\roverride\1\0\0\tlock\1\0\3\tname\tlock\ncolor\f#5c6370\ticon\bÔ†Ω\bmp4\1\0\3\tname\bmp4\ncolor\f#5c6370\ticon\bÔÖÑ\bmp3\1\0\3\tname\bmp3\ncolor\f#566370\ticon\bÔ¢Ö\btxt\1\0\3\tname\ttext\ncolor\f#61afef\ticon\bÔÖú\bmap\1\0\3\tname\btxt\ncolor\f#566370\ticon\bÓòî\taxml\1\0\3\tname\taxml\ncolor\f#f76c7c\ticon\bÔú≠\ttxml\1\0\3\tname\ttxml\ncolor\f#f76c7c\ticon\bÔú≠\bxml\1\0\3\tname\bxml\ncolor\f#f76c7c\ticon\bÔú≠\tacss\1\0\3\tname\bcss\ncolor\f#61afef\ticon\bÓùâ\ttcss\1\0\3\tname\bcss\ncolor\f#61afef\ticon\bÓùâ\bcss\1\0\3\tname\bcss\ncolor\f#61afef\ticon\bÓùâ\thtml\1\0\0\1\0\3\tname\thtml\ncolor\f#f76c7c\ticon\bÔÑª\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: nvim-lspfuzzy
time([[Config for nvim-lspfuzzy]], true)
try_loadstring("\27LJ\2\nÀ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\15fzf_action\1\0\3\vctrl-x\nsplit\vctrl-t\ftabedit\vctrl-v\vvsplit\16fzf_preview\1\2\0\0\18right:+{2}-/2\1\0\3\rfzf_trim\2\17fzf_modifier\t:~:.\fmethods\ball\nsetup\rlspfuzzy\frequire\0", "config", "nvim-lspfuzzy")
time([[Config for nvim-lspfuzzy]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n∫\4\0\2\6\0\6\0\v9\2\0\0009\2\1\2\15\0\2\0X\3\6Ä6\2\2\0009\2\3\0029\2\4\2'\4\5\0+\5\1\0B\2\3\1K\0\1\0œ\3          hi LspReferenceRead cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceText cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceWrite cterm=bold ctermbg=red guibg=#34495e\n          augroup lsp_document_highlight\n            autocmd! * <buffer>\n            autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n            autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n          augroup END\n        \14nvim_exec\bapi\bvim\23document_highlight\26resolved_capabilities~\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\2\14doc_lines\3\2\tbind\2\14on_attach\18lsp_signature\frequireÏ\1\0\2\a\0\r\0\0309\2\0\1\15\0\2\0X\3\26Ä5\2\6\0005\3\1\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\1\6B\4\2\2=\4\5\3=\3\a\0025\3\b\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\2\6B\4\2\2=\4\5\3=\3\t\0026\3\n\0'\5\v\0B\3\2\0029\3\f\3\18\5\0\0\18\6\2\0D\3\3\0K\0\1\0\rin_range\20lsp-status/util\frequire\bend\1\0\1\14character\3\0\nstart\1\0\0\tline\14byte2line\afn\bvim\1\0\1\14character\3\0\15valueRangeã\1\1\1\5\1\a\0\r-\1\0\0009\1\0\0015\3\1\0006\4\2\0=\4\3\0033\4\4\0=\4\5\3B\1\2\1-\1\0\0009\1\6\1\18\3\0\0B\1\2\1K\0\1\0\0¿\14on_attach\18select_symbol\0\16kind_labels\17kind_symbols\1\0\1\21current_function\1\vconfigß\6\0\0\3\0\r\0-6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\0016\0\0\0009\0\1\0'\2\n\0B\0\2\0016\0\0\0009\0\1\0'\2\v\0B\0\2\0016\0\0\0009\0\1\0'\2\f\0B\0\2\1K\0\1\0Tcommand! -nargs=0 LspVirtualTextToggle lua require(\"lsp/virtual_text\").toggle();nnoremap <silent> g] :Lspsaga diagnostic_jump_next<CR>>nnoremap <silent> g[ :Lspsaga show_cursor_diagnostics<CR>1nnoremap <silent> gh :Lspsaga lsp_finder<CR>5nnoremap <silent> gs :Lspsaga signature_help<CR>2nnoremap <silent> ca :Lspsaga code_action<CR>/nnoremap <silent> K :Lspsaga hover_doc<CR>;nnoremap <silent> rn <cmd>lua vim.lsp.buf.rename()<CR>Cnnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>?nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>?nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>\bcmd\bvim5\0\2\6\3\0\0\n-\2\0\0\18\4\0\0\18\5\1\0B\2\3\1-\2\1\0\18\4\0\0B\2\2\1-\2\2\0B\2\1\1K\0\1\0\4¿\6¿\a¿ò\14\1\0\22\0>\0w6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0025\4\6\0=\4\5\0016\4\a\0009\4\b\0049\4\t\4'\6\n\0005\a\v\0B\4\3\0016\4\a\0009\4\b\0049\4\t\4'\6\f\0005\a\r\0B\4\3\0016\4\a\0009\4\b\0049\4\t\4'\6\14\0005\a\15\0B\4\3\0016\4\a\0009\4\b\0049\4\t\4'\6\16\0005\a\17\0B\4\3\0019\4\18\0B\4\1\0019\4\19\0035\6\20\0B\4\2\0016\4\a\0009\4\21\0049\4\22\0046\5\a\0009\5\21\0059\5\24\0056\a\a\0009\a\21\a9\a\25\a9\a\26\a5\b\27\0B\5\3\2=\5\23\0043\4\28\0003\5\29\0003\6\30\0003\a\31\0003\b \0005\t$\0005\n\"\0005\v!\0=\v#\n=\n%\t5\n'\0005\v&\0=\v#\n=\n(\t5\n*\0005\v)\0=\v#\n=\n+\t4\n\0\0=\n,\t4\n\0\0=\n-\t4\n\0\0=\n.\t5\n4\0005\v2\0005\f0\0005\r/\0=\r1\f=\f3\v=\v5\n6\v6\0\18\r\t\0B\v\2\4H\14\24Ä6\0167\0\18\18\15\0B\16\2\2\a\0168\0X\16\3Ä\18\16\15\0B\16\1\2\18\15\16\0=\b9\0156\16\a\0009\16;\16'\18<\0009\19:\15\14\0\19\0X\20\1Ä4\19\0\0009\20:\0\18\21\n\0B\16\5\2=\16:\0158\16\14\0029\16=\16\18\18\15\0B\16\2\1F\14\3\3R\14Ê2\0\0ÄK\0\1\0\nsetup\tkeep\20tbl_deep_extend\17capabilities\14on_attach\rfunction\ttype\npairs\17textDocument\1\0\0\15completion\1\0\0\19completionItem\1\0\0\1\0\1\19snippetSupport\2\nvimls\rtsserver\18rust_analyzer\vjsonls\1\0\0\1\3\0\0\24json-languageserver\f--stdio\thtml\1\0\0\1\3\0\0\24html-languageserver\f--stdio\ncssls\1\0\0\bcmd\1\0\0\1\3\0\0\23css-languageserver\f--stdio\0\0\0\0\0\1\0\4\nsigns\2\17virtual_text\1\14underline\2\21update_in_insert\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\blsp\1\0\1\29use_saga_diagnostic_sign\1\18init_lsp_saga\22register_progress\1\0\3\nnumhl\14WhiteSign\vtexthl\"LspDiagnosticsSignInformation\ttext\bÔÅö\"LspDiagnosticsSignInformation\1\0\3\nnumhl\rBlueSign\vtexthl\27LspDiagnosticsSignHint\ttext\bÔÅ™\27LspDiagnosticsSignHint\1\0\3\nnumhl\15YellowSign\vtexthl\30LspDiagnosticsSignWarning\ttext\bÔÅ±\30LspDiagnosticsSignWarning\1\0\3\nnumhl\fRedSign\vtexthl\28LspDiagnosticsSignError\ttext\bÔÅó\28LspDiagnosticsSignError\16sign_define\afn\bvim\1\26\0\0\18 Ôíû  (Text) \19 Ôö¶  (Method)\21 Ôûî  (Function)\24 Ôê•  (Constructor)\18 Ô¥≤  (Field)\21[Óúñ] (Variable)\18 Ô†ñ  (Class)\22 Ô∞Æ  (Interface)\19 Ôô®  (Module)\20 Ô™∂ (Property)\17 Ôëµ  (Unit)\18 Ô¢ü  (Value)\16 Ô©ó (Enum)\20 Ô†ä  (Keyword)\20 ÔÉÑ  (Snippet)\18 Ô£ó  (Color)\17 Ôúì  (File)\22 Ôúú  (Reference)\19 Ôùä  (Folder)\23 ÔÖù  (EnumMember)\21 Ô≤Ä  (Constant)\19 Ô≥§  (Struct)\18 ÔÉß  (Event)\21 Ôó´  (Operator)\26 ÔûÉ  (TypeParameter)\23CompletionItemKind\flspsaga\14lspconfig\21vim.lsp.protocol\15lsp-status\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\t<cr>\18compe#confirm\afn\bvimí\2\1\0\4\1\f\2'6\0\0\0009\0\1\0009\0\2\0B\0\1\2\b\0\0\0X\0\27Ä6\0\0\0009\0\1\0009\0\3\0B\0\1\0029\0\4\0\b\0\1\0X\0\tÄ6\0\0\0009\0\1\0009\0\5\0B\0\1\1-\0\0\0009\0\6\0'\2\a\0002\0\17ÄX\0\15Ä6\0\0\0009\0\b\0003\2\t\0)\3\20\0B\0\3\1-\0\0\0009\0\6\0'\2\n\0002\0\0ÄD\0\2\0X\0\4Ä-\0\0\0009\0\v\0002\0\0ÄD\0\1\0K\0\1\0D\0\2\0\1¿\26check_break_line_char\n<c-n>\0\rdefer_fn\n<c-y>\besc\18compe#confirm\rselected\18complete_info\15pumvisible\afn\bvim\0˛ˇˇˇ\31€\2\1\0\b\0\20\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0006\1\0\0'\3\1\0B\1\2\0026\2\t\0004\3\0\0=\3\n\0026\2\6\0009\2\v\2'\3\r\0=\3\f\0026\2\n\0003\3\15\0=\3\14\2\18\2\0\0'\4\16\0'\5\17\0'\6\18\0005\a\19\0B\2\5\0012\0\0ÄK\0\1\0\1\0\2\fnoremap\2\texpr\2&v:lua.MUtils.completion_confirm()\t<CR>\6i\0\23completion_confirm\5\27completion_confirm_key\6g\vMUtils\a_G\20nvim_set_keymap\bapi\bvim\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\nÉ\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\b\vrgb_fn\2\rRRGGBBAA\2\nnames\1\vRRGGBB\2\bRGB\2\bcss\2\vcss_fn\2\vhsl_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: sonokai
time([[Config for sonokai]], true)
try_loadstring("\27LJ\2\nˆ\1\0\0\4\0\n\0\0266\0\0\0009\0\1\0006\1\0\0009\1\1\1'\3\2\0B\1\2\0016\1\0\0009\1\1\1'\3\3\0B\1\2\0016\1\0\0009\1\4\1'\2\6\0=\2\5\0016\1\0\0009\1\4\1)\2\1\0=\2\a\0016\1\0\0009\1\4\1)\2\1\0=\2\b\1\18\1\0\0'\3\t\0B\1\2\1K\0\1\0\24colorscheme sonokai#sonokai_disable_italic_comment\26sonokai_enable_italic\14andromeda\18sonokai_style\6g\22set termguicolors\14syntax on\bcmd\bvim\0", "config", "sonokai")
time([[Config for sonokai]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
