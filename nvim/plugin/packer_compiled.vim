" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
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

time("Luarocks path setup", true)
local package_path_str = "/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["base16-vim"] = {
    config = { "\27LJ\2\nƒ\3\0\0\4\0\v\0\0286\0\0\0009\0\1\0006\1\0\0009\1\2\1+\2\2\0=\2\3\1\18\1\0\0'\3\4\0B\1\2\1\18\1\0\0'\3\5\0B\1\2\1\18\1\0\0'\3\6\0B\1\2\1\18\1\0\0'\3\a\0B\1\2\1\18\1\0\0'\3\b\0B\1\2\1\18\1\0\0'\3\t\0B\1\2\1\18\1\0\0'\3\n\0B\1\2\1K\0\1\0 highlight LineNr guibg=NONE'highlight CursorLineNr  guibg=NONEFhi! CursorLineNr  ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE@hi! LineNr  ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE@hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE'hi! Normal ctermbg=NONE guibg=NONE\29colorscheme base16-ocean\18termguicolors\6o\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/base16-vim"
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
  fzf = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["lightline.vim"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/lightline.vim"
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
    config = { "\27LJ\2\nÉ\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\b\vrgb_fn\2\rRRGGBBAA\2\nnames\2\vRRGGBB\2\bRGB\2\bcss\2\vcss_fn\2\vhsl_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\nº\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vsource\1\0\t\rnvim_lua\2\tpath\2\vbuffer\2\18snippets_nvim\2\nspell\2\rnvim_lsp\2\nvsnip\2\tcalc\2\ttags\2\1\0\v\21incomplete_delay\3ê\3\19source_timeout\3»\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\fenabled\2\ndebug\1\19max_menu_width\3d\19max_kind_width\3d\19max_abbr_width\3d\nsetup\ncompe\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nÏ\1\0\2\a\0\r\0\0309\2\0\1\15\0\2\0X\3\26Ä5\2\6\0005\3\1\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\1\6B\4\2\2=\4\5\3=\3\a\0025\3\b\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\2\6B\4\2\2=\4\5\3=\3\t\0026\3\n\0'\5\v\0B\3\2\0029\3\f\3\18\5\0\0\18\6\2\0D\3\3\0K\0\1\0\rin_range\20lsp-status/util\frequire\bend\1\0\1\14character\3\0\nstart\1\0\0\tline\14byte2line\afn\bvim\1\0\1\14character\3\0\15valueRange∫\4\0\2\6\0\6\0\v9\2\0\0009\2\1\2\15\0\2\0X\3\6Ä6\2\2\0009\2\3\0029\2\4\2'\4\5\0+\5\1\0B\2\3\1K\0\1\0œ\3          hi LspReferenceRead cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceText cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceWrite cterm=bold ctermbg=red guibg=#34495e\n          augroup lsp_document_highlight\n            autocmd! * <buffer>\n            autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n            autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n          augroup END\n        \14nvim_exec\bapi\bvim\23document_highlight\26resolved_capabilities«\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14decorator\1\3\0\0\6`\6`\17handler_opts\1\0\1\vborder\tnone\1\0\5\tbind\2\16hint_scheme\vString\16hint_prefix\tÔ™∂ \16hint_enable\2\14doc_lines\3\n\14on_attach\18lsp_signature\frequireÏ\1\0\2\a\0\r\0\0309\2\0\1\15\0\2\0X\3\26Ä5\2\6\0005\3\1\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\1\6B\4\2\2=\4\5\3=\3\a\0025\3\b\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\2\6B\4\2\2=\4\5\3=\3\t\0026\3\n\0'\5\v\0B\3\2\0029\3\f\3\18\5\0\0\18\6\2\0D\3\3\0K\0\1\0\rin_range\20lsp-status/util\frequire\bend\1\0\1\14character\3\0\nstart\1\0\0\tline\14byte2line\afn\bvim\1\0\1\14character\3\0\15valueRangeã\1\1\1\5\1\a\0\r-\1\0\0009\1\0\1\18\3\0\0B\1\2\1-\1\0\0009\1\1\0015\3\2\0006\4\3\0=\4\4\0033\4\5\0=\4\6\3B\1\2\1K\0\1\0\0¿\18select_symbol\0\16kind_labels\17kind_symbols\1\0\1\21current_function\1\vconfig\14on_attachó\a\0\0\3\0\14\00016\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\0016\0\0\0009\0\1\0'\2\n\0B\0\2\0016\0\0\0009\0\1\0'\2\v\0B\0\2\0016\0\0\0009\0\1\0'\2\f\0B\0\2\0016\0\0\0009\0\1\0'\2\r\0B\0\2\1K\0\1\0Tcommand! -nargs=0 LspVirtualTextToggle lua require(\"lsp/virtual_text\").toggle();nnoremap <silent> g] :Lspsaga diagnostic_jump_next<CR>;nnoremap <silent> g[ :Lspsaga diagnostic_jump_prev<CR>Xnnoremap <silent> gS <cmd>lua require(\"lspsaga.signaturehelp\").signature_help()<CR>/nnoremap <silent> K :Lspsaga hover_doc<CR>-nnoremap <silent> rn :Lspsaga rename<CR>2nnoremap <silent> ca :Lspsaga code_action<CR>Cnnoremap <silent> rn <cmd>lua vim.lsp.buf.implementation()<CR>Cnnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>?nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>@nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>?nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>\bcmd\bvim?\0\2\6\4\0\0\f-\2\0\0\18\4\0\0\18\5\1\0B\2\3\1-\2\1\0\18\4\0\0B\2\2\1-\2\2\0B\2\1\1-\2\3\0B\2\1\1K\0\1\0\5¿\a¿\6¿\b¿∆\15\1\0\23\0J\0ä\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0026\4\0\0'\6\5\0B\4\2\0026\5\6\0009\5\a\0059\5\b\0055\6\n\0=\6\t\0056\5\6\0009\5\v\0059\5\f\5'\a\r\0005\b\14\0B\5\3\0016\5\6\0009\5\v\0059\5\f\5'\a\15\0005\b\16\0B\5\3\0016\5\6\0009\5\v\0059\5\f\5'\a\17\0005\b\18\0B\5\3\0016\5\6\0009\5\v\0059\5\f\5'\a\19\0005\b\20\0B\5\3\0019\5\21\0005\a\22\0006\b\23\0=\b\24\a3\b\25\0=\b\26\aB\5\2\0019\5\27\0B\5\1\0019\5\28\0045\a\29\0B\5\2\0019\5\30\2B\5\1\0016\5\6\0009\5\a\0059\5\31\0056\6\6\0009\6\a\0069\6!\0066\b\6\0009\b\a\b9\b\"\b9\b#\b5\t$\0B\6\3\2=\6 \0053\5%\0003\6&\0003\a'\0003\b(\0003\t)\0005\n2\0005\v+\0005\f*\0=\f,\v9\f-\0039\f.\f'\14/\0'\0150\0B\f\3\2=\f1\v=\v3\n4\v\0\0=\v4\n5\v6\0005\f5\0=\f7\v=\v8\n4\v\0\0=\v9\n4\v\0\0=\v:\n4\v\0\0=\v;\n5\vA\0005\f?\0005\r=\0005\14<\0=\14>\r=\r@\f=\fB\v6\fC\0\18\14\n\0B\f\2\4H\15\24Ä6\17D\0\18\19\16\0B\17\2\2\a\17E\0X\17\3Ä\18\17\16\0B\17\1\2\18\16\17\0=\tF\0166\17\6\0009\17H\17'\19I\0009\20G\16\14\0\20\0X\21\1Ä4\20\0\0009\21G\0\18\22\v\0B\17\5\2=\17G\0168\17\15\0039\17\30\17\18\19\16\0B\17\2\1F\15\3\3R\15Ê2\0\0ÄK\0\1\0\tkeep\20tbl_deep_extend\17capabilities\14on_attach\rfunction\ttype\npairs\17textDocument\1\0\0\15completion\1\0\0\19completionItem\1\0\0\1\0\1\19snippetSupport\2\nvimls\rtsserver\18rust_analyzer\vjsonls\bcmd\1\0\0\1\3\0\0\24json-languageserver\f--stdio\thtml\ncssls\1\0\0\rroot_dir\t.git\17package.json\17root_pattern\tutil\14filetypes\1\0\0\1\5\0\0\bcss\tscss\tless\tsass\0\0\0\0\0\1\0\4\21update_in_insert\1\nsigns\2\17virtual_text\1\14underline\2\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\nsetup\1\0\1\29use_saga_diagnostic_sign\1\18init_lsp_saga\22register_progress\18select_symbol\0\16kind_labels\17kind_symbols\1\0\1\21current_function\1\vconfig\1\0\3\ttext\bÔÅö\nnumhl\14WhiteSign\vtexthl\"LspDiagnosticsSignInformation\"LspDiagnosticsSignInformation\1\0\3\ttext\bÔÅ™\nnumhl\rBlueSign\vtexthl\27LspDiagnosticsSignHint\27LspDiagnosticsSignHint\1\0\3\ttext\bÔÅ±\nnumhl\15YellowSign\vtexthl\30LspDiagnosticsSignWarning\30LspDiagnosticsSignWarning\1\0\3\ttext\bÔÅó\nnumhl\fRedSign\vtexthl\28LspDiagnosticsSignError\28LspDiagnosticsSignError\16sign_define\afn\1\26\0\0\18 Ôíû  (Text) \19 Ôö¶  (Method)\21 Ôûî  (Function)\24 Ôê•  (Constructor)\18 Ô¥≤  (Field)\21[Óúñ] (Variable)\18 Ô†ñ  (Class)\22 Ô∞Æ  (Interface)\19 Ôô®  (Module)\20 Ô™∂ (Property)\17 Ôëµ  (Unit)\18 Ô¢ü  (Value)\16 Ô©ó (Enum)\20 Ô†ä  (Keyword)\20 ÔÉÑ  (Snippet)\18 Ô£ó  (Color)\17 Ôúì  (File)\22 Ôúú  (Reference)\19 Ôùä  (Folder)\23 ÔÖù  (EnumMember)\21 Ô≤Ä  (Constant)\19 Ô≥§  (Struct)\18 ÔÉß  (Event)\21 Ôó´  (Operator)\26 ÔûÉ  (TypeParameter)\23CompletionItemKind\rprotocol\blsp\bvim\flspsaga\14lspconfig\ftrouble\21vim.lsp.protocol\15lsp-status\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspfuzzy"] = {
    config = { "\27LJ\2\nÀ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\15fzf_action\1\0\3\vctrl-v\vvsplit\vctrl-x\nsplit\vctrl-t\ftabedit\16fzf_preview\1\2\0\0\18right:+{2}-/2\1\0\3\17fzf_modifier\t:~:.\rfzf_trim\2\fmethods\ball\nsetup\rlspfuzzy\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-lspfuzzy"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n›\2\0\0\5\0\15\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0004\4\0\0=\4\r\3=\3\14\2B\0\2\1K\0\1\0\15playground\fdisable\1\0\3\15updatetime\3\25\venable\2\20persist_queries\1\14highlight\1\0\2\venable\2\21use_languagetree\2\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\21ensure_installed\1\0\0\1\f\0\0\15javascript\15typescript\tjson\fgraphql\btsx\thtml\njsdoc\trust\bcss\tbash\blua\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\nô\5\0\0\5\0\30\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\28\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\29\2B\0\2\1K\0\1\0\roverride\1\0\0\tlock\1\0\3\tname\tlock\ticon\bÔ†Ω\ncolor\f#5c6370\bmp4\1\0\3\tname\bmp4\ticon\bÔÖÑ\ncolor\f#5c6370\bmp3\1\0\3\tname\bmp3\ticon\bÔ¢Ö\ncolor\f#566370\btxt\1\0\3\tname\ttext\ticon\bÔÖú\ncolor\f#61afef\bmap\1\0\3\tname\btxt\ticon\bÓòî\ncolor\f#566370\taxml\1\0\3\tname\taxml\ticon\bÔú≠\ncolor\f#f76c7c\ttxml\1\0\3\tname\ttxml\ticon\bÔú≠\ncolor\f#f76c7c\bxml\1\0\3\tname\bxml\ticon\bÔú≠\ncolor\f#f76c7c\tacss\1\0\3\tname\bcss\ticon\bÓùâ\ncolor\f#61afef\ttcss\1\0\3\tname\bcss\ticon\bÓùâ\ncolor\f#61afef\bcss\1\0\3\tname\bcss\ticon\bÓùâ\ncolor\f#61afef\thtml\1\0\0\1\0\3\tname\thtml\ticon\bÔÑª\ncolor\f#f76c7c\nsetup\22nvim-web-devicons\frequire\0" },
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
  tagbar = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/tagbar"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/trouble.nvim"
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
  ["vim-prettier"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-prettier"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-vsnip"] = {
    config = { "\27LJ\2\nK\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\28~/.config/nvim/snippets\22vsnip_snippet_dir\6g\bvim\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  }
}

time("Defining packer_plugins", false)
-- Config for: base16-vim
time("Config for base16-vim", true)
try_loadstring("\27LJ\2\nƒ\3\0\0\4\0\v\0\0286\0\0\0009\0\1\0006\1\0\0009\1\2\1+\2\2\0=\2\3\1\18\1\0\0'\3\4\0B\1\2\1\18\1\0\0'\3\5\0B\1\2\1\18\1\0\0'\3\6\0B\1\2\1\18\1\0\0'\3\a\0B\1\2\1\18\1\0\0'\3\b\0B\1\2\1\18\1\0\0'\3\t\0B\1\2\1\18\1\0\0'\3\n\0B\1\2\1K\0\1\0 highlight LineNr guibg=NONE'highlight CursorLineNr  guibg=NONEFhi! CursorLineNr  ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE@hi! LineNr  ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE@hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE'hi! Normal ctermbg=NONE guibg=NONE\29colorscheme base16-ocean\18termguicolors\6o\bcmd\bvim\0", "config", "base16-vim")
time("Config for base16-vim", false)
-- Config for: vim-vsnip
time("Config for vim-vsnip", true)
try_loadstring("\27LJ\2\nK\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\28~/.config/nvim/snippets\22vsnip_snippet_dir\6g\bvim\0", "config", "vim-vsnip")
time("Config for vim-vsnip", false)
-- Config for: nvim-autopairs
time("Config for nvim-autopairs", true)
try_loadstring("\27LJ\2\n9\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\t<cr>\18compe#confirm\afn\bvimí\2\1\0\4\1\f\2'6\0\0\0009\0\1\0009\0\2\0B\0\1\2\b\0\0\0X\0\27Ä6\0\0\0009\0\1\0009\0\3\0B\0\1\0029\0\4\0\b\0\1\0X\0\tÄ6\0\0\0009\0\1\0009\0\5\0B\0\1\1-\0\0\0009\0\6\0'\2\a\0002\0\17ÄX\0\15Ä6\0\0\0009\0\b\0003\2\t\0)\3\20\0B\0\3\1-\0\0\0009\0\6\0'\2\n\0002\0\0ÄD\0\2\0X\0\4Ä-\0\0\0009\0\v\0002\0\0ÄD\0\1\0K\0\1\0D\0\2\0\1¿\26check_break_line_char\n<c-n>\0\rdefer_fn\n<c-y>\besc\18compe#confirm\rselected\18complete_info\15pumvisible\afn\bvim\0˛ˇˇˇ\31€\2\1\0\b\0\20\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0006\1\0\0'\3\1\0B\1\2\0026\2\t\0004\3\0\0=\3\n\0026\2\6\0009\2\v\2'\3\r\0=\3\f\0026\2\n\0003\3\15\0=\3\14\2\18\2\0\0'\4\16\0'\5\17\0'\6\18\0005\a\19\0B\2\5\0012\0\0ÄK\0\1\0\1\0\2\fnoremap\2\texpr\2&v:lua.MUtils.completion_confirm()\t<CR>\6i\0\23completion_confirm\5\27completion_confirm_key\6g\vMUtils\a_G\20nvim_set_keymap\bapi\bvim\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time("Config for nvim-autopairs", false)
-- Config for: nvim-treesitter
time("Config for nvim-treesitter", true)
try_loadstring("\27LJ\2\n›\2\0\0\5\0\15\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0004\4\0\0=\4\r\3=\3\14\2B\0\2\1K\0\1\0\15playground\fdisable\1\0\3\15updatetime\3\25\venable\2\20persist_queries\1\14highlight\1\0\2\venable\2\21use_languagetree\2\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\21ensure_installed\1\0\0\1\f\0\0\15javascript\15typescript\tjson\fgraphql\btsx\thtml\njsdoc\trust\bcss\tbash\blua\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time("Config for nvim-treesitter", false)
-- Config for: nvim-lspfuzzy
time("Config for nvim-lspfuzzy", true)
try_loadstring("\27LJ\2\nÀ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\15fzf_action\1\0\3\vctrl-v\vvsplit\vctrl-x\nsplit\vctrl-t\ftabedit\16fzf_preview\1\2\0\0\18right:+{2}-/2\1\0\3\17fzf_modifier\t:~:.\rfzf_trim\2\fmethods\ball\nsetup\rlspfuzzy\frequire\0", "config", "nvim-lspfuzzy")
time("Config for nvim-lspfuzzy", false)
-- Config for: nvim-colorizer.lua
time("Config for nvim-colorizer.lua", true)
try_loadstring("\27LJ\2\nÉ\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\b\vrgb_fn\2\rRRGGBBAA\2\nnames\2\vRRGGBB\2\bRGB\2\bcss\2\vcss_fn\2\vhsl_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time("Config for nvim-colorizer.lua", false)
-- Config for: nvim-web-devicons
time("Config for nvim-web-devicons", true)
try_loadstring("\27LJ\2\nô\5\0\0\5\0\30\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\28\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\29\2B\0\2\1K\0\1\0\roverride\1\0\0\tlock\1\0\3\tname\tlock\ticon\bÔ†Ω\ncolor\f#5c6370\bmp4\1\0\3\tname\bmp4\ticon\bÔÖÑ\ncolor\f#5c6370\bmp3\1\0\3\tname\bmp3\ticon\bÔ¢Ö\ncolor\f#566370\btxt\1\0\3\tname\ttext\ticon\bÔÖú\ncolor\f#61afef\bmap\1\0\3\tname\btxt\ticon\bÓòî\ncolor\f#566370\taxml\1\0\3\tname\taxml\ticon\bÔú≠\ncolor\f#f76c7c\ttxml\1\0\3\tname\ttxml\ticon\bÔú≠\ncolor\f#f76c7c\bxml\1\0\3\tname\bxml\ticon\bÔú≠\ncolor\f#f76c7c\tacss\1\0\3\tname\bcss\ticon\bÓùâ\ncolor\f#61afef\ttcss\1\0\3\tname\bcss\ticon\bÓùâ\ncolor\f#61afef\bcss\1\0\3\tname\bcss\ticon\bÓùâ\ncolor\f#61afef\thtml\1\0\0\1\0\3\tname\thtml\ticon\bÔÑª\ncolor\f#f76c7c\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time("Config for nvim-web-devicons", false)
-- Config for: nvim-lspconfig
time("Config for nvim-lspconfig", true)
try_loadstring("\27LJ\2\nÏ\1\0\2\a\0\r\0\0309\2\0\1\15\0\2\0X\3\26Ä5\2\6\0005\3\1\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\1\6B\4\2\2=\4\5\3=\3\a\0025\3\b\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\2\6B\4\2\2=\4\5\3=\3\t\0026\3\n\0'\5\v\0B\3\2\0029\3\f\3\18\5\0\0\18\6\2\0D\3\3\0K\0\1\0\rin_range\20lsp-status/util\frequire\bend\1\0\1\14character\3\0\nstart\1\0\0\tline\14byte2line\afn\bvim\1\0\1\14character\3\0\15valueRange∫\4\0\2\6\0\6\0\v9\2\0\0009\2\1\2\15\0\2\0X\3\6Ä6\2\2\0009\2\3\0029\2\4\2'\4\5\0+\5\1\0B\2\3\1K\0\1\0œ\3          hi LspReferenceRead cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceText cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceWrite cterm=bold ctermbg=red guibg=#34495e\n          augroup lsp_document_highlight\n            autocmd! * <buffer>\n            autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n            autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n          augroup END\n        \14nvim_exec\bapi\bvim\23document_highlight\26resolved_capabilities«\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14decorator\1\3\0\0\6`\6`\17handler_opts\1\0\1\vborder\tnone\1\0\5\tbind\2\16hint_scheme\vString\16hint_prefix\tÔ™∂ \16hint_enable\2\14doc_lines\3\n\14on_attach\18lsp_signature\frequireÏ\1\0\2\a\0\r\0\0309\2\0\1\15\0\2\0X\3\26Ä5\2\6\0005\3\1\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\1\6B\4\2\2=\4\5\3=\3\a\0025\3\b\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\2\6B\4\2\2=\4\5\3=\3\t\0026\3\n\0'\5\v\0B\3\2\0029\3\f\3\18\5\0\0\18\6\2\0D\3\3\0K\0\1\0\rin_range\20lsp-status/util\frequire\bend\1\0\1\14character\3\0\nstart\1\0\0\tline\14byte2line\afn\bvim\1\0\1\14character\3\0\15valueRangeã\1\1\1\5\1\a\0\r-\1\0\0009\1\0\1\18\3\0\0B\1\2\1-\1\0\0009\1\1\0015\3\2\0006\4\3\0=\4\4\0033\4\5\0=\4\6\3B\1\2\1K\0\1\0\0¿\18select_symbol\0\16kind_labels\17kind_symbols\1\0\1\21current_function\1\vconfig\14on_attachó\a\0\0\3\0\14\00016\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\0016\0\0\0009\0\1\0'\2\n\0B\0\2\0016\0\0\0009\0\1\0'\2\v\0B\0\2\0016\0\0\0009\0\1\0'\2\f\0B\0\2\0016\0\0\0009\0\1\0'\2\r\0B\0\2\1K\0\1\0Tcommand! -nargs=0 LspVirtualTextToggle lua require(\"lsp/virtual_text\").toggle();nnoremap <silent> g] :Lspsaga diagnostic_jump_next<CR>;nnoremap <silent> g[ :Lspsaga diagnostic_jump_prev<CR>Xnnoremap <silent> gS <cmd>lua require(\"lspsaga.signaturehelp\").signature_help()<CR>/nnoremap <silent> K :Lspsaga hover_doc<CR>-nnoremap <silent> rn :Lspsaga rename<CR>2nnoremap <silent> ca :Lspsaga code_action<CR>Cnnoremap <silent> rn <cmd>lua vim.lsp.buf.implementation()<CR>Cnnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>?nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>@nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>?nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>\bcmd\bvim?\0\2\6\4\0\0\f-\2\0\0\18\4\0\0\18\5\1\0B\2\3\1-\2\1\0\18\4\0\0B\2\2\1-\2\2\0B\2\1\1-\2\3\0B\2\1\1K\0\1\0\5¿\a¿\6¿\b¿∆\15\1\0\23\0J\0ä\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0026\4\0\0'\6\5\0B\4\2\0026\5\6\0009\5\a\0059\5\b\0055\6\n\0=\6\t\0056\5\6\0009\5\v\0059\5\f\5'\a\r\0005\b\14\0B\5\3\0016\5\6\0009\5\v\0059\5\f\5'\a\15\0005\b\16\0B\5\3\0016\5\6\0009\5\v\0059\5\f\5'\a\17\0005\b\18\0B\5\3\0016\5\6\0009\5\v\0059\5\f\5'\a\19\0005\b\20\0B\5\3\0019\5\21\0005\a\22\0006\b\23\0=\b\24\a3\b\25\0=\b\26\aB\5\2\0019\5\27\0B\5\1\0019\5\28\0045\a\29\0B\5\2\0019\5\30\2B\5\1\0016\5\6\0009\5\a\0059\5\31\0056\6\6\0009\6\a\0069\6!\0066\b\6\0009\b\a\b9\b\"\b9\b#\b5\t$\0B\6\3\2=\6 \0053\5%\0003\6&\0003\a'\0003\b(\0003\t)\0005\n2\0005\v+\0005\f*\0=\f,\v9\f-\0039\f.\f'\14/\0'\0150\0B\f\3\2=\f1\v=\v3\n4\v\0\0=\v4\n5\v6\0005\f5\0=\f7\v=\v8\n4\v\0\0=\v9\n4\v\0\0=\v:\n4\v\0\0=\v;\n5\vA\0005\f?\0005\r=\0005\14<\0=\14>\r=\r@\f=\fB\v6\fC\0\18\14\n\0B\f\2\4H\15\24Ä6\17D\0\18\19\16\0B\17\2\2\a\17E\0X\17\3Ä\18\17\16\0B\17\1\2\18\16\17\0=\tF\0166\17\6\0009\17H\17'\19I\0009\20G\16\14\0\20\0X\21\1Ä4\20\0\0009\21G\0\18\22\v\0B\17\5\2=\17G\0168\17\15\0039\17\30\17\18\19\16\0B\17\2\1F\15\3\3R\15Ê2\0\0ÄK\0\1\0\tkeep\20tbl_deep_extend\17capabilities\14on_attach\rfunction\ttype\npairs\17textDocument\1\0\0\15completion\1\0\0\19completionItem\1\0\0\1\0\1\19snippetSupport\2\nvimls\rtsserver\18rust_analyzer\vjsonls\bcmd\1\0\0\1\3\0\0\24json-languageserver\f--stdio\thtml\ncssls\1\0\0\rroot_dir\t.git\17package.json\17root_pattern\tutil\14filetypes\1\0\0\1\5\0\0\bcss\tscss\tless\tsass\0\0\0\0\0\1\0\4\21update_in_insert\1\nsigns\2\17virtual_text\1\14underline\2\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\nsetup\1\0\1\29use_saga_diagnostic_sign\1\18init_lsp_saga\22register_progress\18select_symbol\0\16kind_labels\17kind_symbols\1\0\1\21current_function\1\vconfig\1\0\3\ttext\bÔÅö\nnumhl\14WhiteSign\vtexthl\"LspDiagnosticsSignInformation\"LspDiagnosticsSignInformation\1\0\3\ttext\bÔÅ™\nnumhl\rBlueSign\vtexthl\27LspDiagnosticsSignHint\27LspDiagnosticsSignHint\1\0\3\ttext\bÔÅ±\nnumhl\15YellowSign\vtexthl\30LspDiagnosticsSignWarning\30LspDiagnosticsSignWarning\1\0\3\ttext\bÔÅó\nnumhl\fRedSign\vtexthl\28LspDiagnosticsSignError\28LspDiagnosticsSignError\16sign_define\afn\1\26\0\0\18 Ôíû  (Text) \19 Ôö¶  (Method)\21 Ôûî  (Function)\24 Ôê•  (Constructor)\18 Ô¥≤  (Field)\21[Óúñ] (Variable)\18 Ô†ñ  (Class)\22 Ô∞Æ  (Interface)\19 Ôô®  (Module)\20 Ô™∂ (Property)\17 Ôëµ  (Unit)\18 Ô¢ü  (Value)\16 Ô©ó (Enum)\20 Ô†ä  (Keyword)\20 ÔÉÑ  (Snippet)\18 Ô£ó  (Color)\17 Ôúì  (File)\22 Ôúú  (Reference)\19 Ôùä  (Folder)\23 ÔÖù  (EnumMember)\21 Ô≤Ä  (Constant)\19 Ô≥§  (Struct)\18 ÔÉß  (Event)\21 Ôó´  (Operator)\26 ÔûÉ  (TypeParameter)\23CompletionItemKind\rprotocol\blsp\bvim\flspsaga\14lspconfig\ftrouble\21vim.lsp.protocol\15lsp-status\frequire\0", "config", "nvim-lspconfig")
time("Config for nvim-lspconfig", false)
-- Config for: nvim-compe
time("Config for nvim-compe", true)
try_loadstring("\27LJ\2\nº\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vsource\1\0\t\rnvim_lua\2\tpath\2\vbuffer\2\18snippets_nvim\2\nspell\2\rnvim_lsp\2\nvsnip\2\tcalc\2\ttags\2\1\0\v\21incomplete_delay\3ê\3\19source_timeout\3»\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\fenabled\2\ndebug\1\19max_menu_width\3d\19max_kind_width\3d\19max_abbr_width\3d\nsetup\ncompe\frequire\0", "config", "nvim-compe")
time("Config for nvim-compe", false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
