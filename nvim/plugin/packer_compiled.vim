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
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
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
  ["feline.nvim"] = {
    config = { "\27LJ\2\nX\0\1\b\0\2\2\17)\1\1\0006\2\0\0009\2\1\2\21\4\0\0\25\4\0\4B\2\2\2)\3\1\0M\1\bÄ\21\5\0\0!\5\4\5\22\5\1\0058\6\5\0008\a\4\0<\a\5\0<\6\4\0O\1¯K\0\1\0\nfloor\tmath\4\0025\0\1\5\0\4\0\0066\1\0\0009\1\1\0019\1\2\1\18\3\0\0'\4\3\0D\1\3\0\a:t\16fnamemodify\afn\bvimä\1\0\1\n\0\6\0\0224\1\0\0006\2\0\0009\2\1\2\18\4\0\0'\5\2\0B\2\3\4X\5\5Ä6\6\3\0009\6\4\6\18\b\1\0\18\t\5\0B\6\3\1E\5\3\2R\5˘6\2\3\0009\2\4\2\18\4\1\0006\5\5\0\18\a\0\0B\5\2\0A\2\1\1L\1\2\0\rget_tail\vinsert\ntable\v[^/]+/\vgmatch\vstring4\0\1\5\1\1\0\a6\1\0\0\18\3\0\0B\1\2\2-\2\0\0\18\4\1\0B\2\2\1L\1\2\0\1¿\19split_filename7\0\2\b\0\0\0\f)\2\1\0\21\3\0\0)\4\1\0M\2\6Ä8\6\5\0008\a\5\1\4\6\a\0X\6\1ÄL\5\2\0O\2˙)\2\1\0L\2\2\0\27\0\1\5\2\0\0\4-\1\0\0-\3\1\0\18\4\0\0D\1\3\0\0\0\4¿∑\1\1\2\14\1\6\0\"'\2\0\0006\3\1\0009\3\2\0036\5\3\0\18\6\1\0B\3\3\0026\4\3\0\18\6\0\0B\4\2\0026\5\1\0009\5\2\0053\a\4\0\18\b\3\0B\5\3\2)\6\0\0006\a\5\0\18\t\5\0B\a\2\4X\n\3Ä\1\6\v\0X\f\1Ä\18\6\v\0E\n\3\3R\n˚\18\a\6\0)\b\1\0)\tˇˇM\a\4Ä\18\v\2\0008\f\n\4&\2\f\vO\a¸2\0\0ÄL\2\2\0\2¿\vipairs\0\21reverse_filename\ftbl_map\bvim\5+\0\1\2\0\1\1\a9\1\0\0\b\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\vlisted\2\20\0\1\2\0\1\0\0029\1\0\0L\1\2\0\tname´\1\1\0\b\0\n\0\0246\0\0\0009\0\1\0009\0\2\0B\0\1\0026\1\0\0009\1\3\0013\3\4\0\18\4\0\0B\1\3\0026\2\0\0009\2\5\0023\4\6\0\18\5\1\0B\2\3\0026\3\0\0009\3\1\0039\3\a\3'\5\b\0B\3\2\0026\4\t\0\18\6\3\0\18\a\2\0002\0\0ÄD\4\3\0\24get_unique_filename\6%\vexpand\0\ftbl_map\0\15tbl_filter\15getbufinfo\afn\bvimá\1\0\0\4\0\t\0\0206\0\0\0009\0\1\0009\0\2\0\18\2\0\0009\0\3\0B\0\2\2+\1\0\0\a\0\4\0X\2\2Ä'\1\5\0X\2\5Ä\a\0\6\0X\2\2Ä'\1\a\0X\2\1Ä'\1\b\0\18\2\1\0\18\3\0\0&\2\3\2L\2\2\0\tÔÖ∫ \tÔÖπ \bMAC\tÔÖº \tUNIX\nupper\15fileformat\abo\bvim‡\2\0\2\f\0\20\00056\2\0\0009\2\1\2\18\4\1\0'\5\2\0B\2\3\0026\3\3\0009\3\4\0039\3\5\3'\5\6\0\18\6\2\0&\5\6\5B\3\2\0026\4\3\0009\4\4\0049\4\5\4'\6\a\0B\4\2\2+\5\0\0009\6\b\0\14\0\6\0X\a\bÄ6\6\t\0'\b\n\0B\6\2\0029\6\v\6\18\b\3\0\18\t\4\0005\n\f\0B\6\4\2\a\3\r\0X\a\1Ä'\3\14\0006\a\3\0009\a\15\a9\a\16\a\15\0\a\0X\b\bÄ9\a\17\0\14\0\a\0X\b\1Ä'\a\18\0\18\b\a\0'\t\19\0&\5\t\bX\a\1Ä'\5\r\0\18\a\6\0'\b\19\0\18\t\3\0'\n\19\0\18\v\5\0&\a\v\aL\a\2\0\6 \b‚óè\23file_modified_icon\rmodified\abo\funnamed\5\1\0\1\fdefault\2\rget_icon\22nvim-web-devicons\frequire\ticon\b%:e\6%\vexpand\afn\bvim\6:\vconcat\ntable?\0\0\4\1\4\0\n'\0\0\0-\1\0\0006\2\1\0009\2\2\0029\2\3\2B\2\1\0028\1\2\1'\2\0\0&\0\2\0L\0\2\0\4¿\tmode\afn\bvim\6 \0\0\3\2\6\0\r5\0\1\0-\1\0\0009\1\0\1B\1\1\2=\1\2\0-\1\1\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1B\1\1\2=\1\3\0L\0\2\0\b¿\0¿\19get_mode_color\afg\abg\tname\1\0\1\nstyle\tbold\28get_mode_highlight_namec\0\0\3\1\5\0\n5\0\1\0-\1\0\0009\1\0\1B\1\1\2=\1\2\0-\1\0\0009\1\3\1B\1\1\2=\1\4\0L\0\2\0\b¿\afg\19get_mode_color\tname\1\0\0\28get_mode_highlight_name<\0\0\3\1\3\0\t-\0\0\0009\0\0\0B\0\1\0027\0\1\0'\0\2\0006\1\1\0'\2\2\0&\0\2\0L\0\2\0\t¿\6 \bpos\rposition\0\0\3\2\6\0\r5\0\1\0-\1\0\0009\1\0\1B\1\1\2=\1\2\0-\1\1\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1B\1\1\2=\1\3\0L\0\2\0\b¿\0¿\19get_mode_color\afg\abg\tname\1\0\1\nstyle\tbold\28get_mode_highlight_name1\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\a¿\nError\22diagnostics_exist3\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\a¿\fWarning\22diagnostics_exist0\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\a¿\tHint\22diagnostics_exist7\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\a¿\16Information\22diagnostics_existÔ\21\1\0\17\0å\1\0ã\0025\0\0\0003\1\1\0003\2\2\0007\2\3\0003\2\4\0007\2\5\0003\2\6\0007\2\a\0003\2\b\0003\3\t\0007\3\n\0003\3\v\0007\3\f\0005\3\14\0009\4\r\0=\4\15\0039\4\16\0=\4\17\0039\4\18\0=\4\19\0039\4\r\0=\4\20\0039\4\16\0=\4\21\0039\4\22\0=\4\23\0039\4\22\0=\4\24\0039\4\25\0=\4\26\0039\4\25\0=\4\27\0039\4\28\0=\4\29\0039\4\30\0=\4\31\0039\4\r\0=\4 \0039\4\16\0=\4!\0039\4\"\0=\4#\0035\4$\0003\5%\0003\6&\0006\a'\0'\t(\0B\a\2\0026\b'\0'\n)\0B\b\2\0026\t'\0'\v*\0B\t\2\0025\n5\0005\v0\0005\f,\0003\r+\0=\r-\f3\r.\0=\r/\f=\f1\v5\f2\0003\r3\0=\r/\f=\f4\v=\v6\n5\v:\0005\f7\0006\r\f\0=\r-\f5\r8\0009\14\16\0=\0149\r=\r/\f=\f;\v5\f<\0005\r=\0009\14\18\0=\0149\r=\r/\f=\f>\v5\f?\0=\f@\v5\fA\0=\5-\f5\rB\0009\14\18\0=\0149\r=\r/\f=\fC\v=\vD\n5\vE\0005\fF\0=\f/\v=\vG\n5\vI\0003\fH\0=\f-\v3\fJ\0=\f/\v=\vK\n5\vL\0005\fM\0009\r\16\0=\r9\f=\f/\v=\vN\n5\vS\0005\fO\0003\rP\0=\rQ\f5\rR\0009\14\22\0=\0149\r=\r/\f=\fT\v5\fU\0003\rV\0=\rQ\f5\rW\0009\14\"\0=\0149\r=\r/\f=\fX\v5\fY\0003\rZ\0=\rQ\f5\r[\0009\14\25\0=\0149\r=\r/\f=\f\\\v5\f]\0003\r^\0=\rQ\f5\r_\0009\14\16\0=\0149\r=\r/\f=\f;\v=\v`\n5\vc\0005\fa\0005\rb\0009\14\"\0=\0149\r=\r/\f=\fd\v=\ve\n5\vh\0005\ff\0005\rg\0009\14\18\0=\0149\r=\r/\f=\fi\v5\fj\0005\rk\0009\14\r\0=\0149\r=\r/\f=\fl\v5\fm\0005\rn\0009\14\28\0=\0149\r=\r/\f=\fo\v5\fp\0005\rq\0009\14\22\0=\0149\r=\r/\f=\fr\v=\vs\n5\vz\0005\fu\0005\rt\0=\rv\f5\rw\0=\rx\f4\r\0\0=\ry\f=\f{\v5\f\0005\r|\0004\14\b\0009\0156\n9\0151\15>\15\1\0149\15D\n9\15;\15>\15\2\0149\15e\n9\15d\15>\15\3\0149\15`\n9\15T\15>\15\4\0149\15`\n9\15X\15>\15\5\0149\15`\n9\15\\\15>\15\6\0149\15`\n9\15;\15>\15\a\14=\14}\r4\14\3\0009\15D\n9\15;\15>\15\1\14=\14~\r=\r1\f5\rÄ\0004\14\0\0=\14}\r4\14\0\0=\14~\r=\rÅ\f5\rÇ\0004\14\t\0009\15s\n9\15l\15>\15\1\0149\15s\n9\15o\15>\15\2\0149\15s\n9\15r\15>\15\3\0149\15D\n9\15C\15>\15\4\0149\15s\n9\15i\15>\15\5\0149\15N\n>\15\6\0149\15G\n>\15\a\0149\15K\n>\15\b\14=\14}\r4\14\3\0009\15D\n9\15C\15>\15\1\14=\14~\r=\r4\f6\r'\0'\15É\0B\r\2\0029\rÑ\r5\15Ü\0009\16Ö\0=\16á\0159\0169\0=\16à\15=\fâ\15=\vä\15=\3ã\15B\r\2\0012\0\0ÄK\0\1\0\19vi_mode_colors\15properties\15components\15default_fg\15default_bg\1\0\0\abg\nsetup\vfeline\1\0\0\bmid\1\0\0\1\0\0\rinactive\vactive\1\0\0\19force_inactive\1\0\0\rbufnames\rbuftypes\1\2\0\0\rterminal\14filetypes\1\0\0\1\b\0\0\rNvimTree\tdefx\tdbui\vpacker\rstartify\rfugitive\18fugitiveblame\bgit\vremove\1\0\0\1\0\1\rprovider\21git_diff_removed\vchange\1\0\0\1\0\1\rprovider\21git_diff_changed\badd\1\0\0\1\0\1\rprovider\19git_diff_added\vbranch\1\0\0\1\0\1\nstyle\tbold\1\0\3\rleft_sep\6 \ticon\tÓÇ† \rprovider\15git_branch\blsp\tname\1\0\0\1\0\0\1\0\3\rprovider\21lsp_client_names\ticon\tÔà≥ \rleft_sep\6 \fdiagnos\1\0\0\0\1\0\1\rprovider\20diagnostic_info\thint\1\0\0\0\1\0\1\rprovider\21diagnostic_hints\twarn\1\0\0\0\1\0\1\rprovider\24diagnostic_warnings\berr\1\0\0\1\0\0\fenabled\0\1\0\1\rprovider\22diagnostic_errors\15scroll_bar\1\0\1\nstyle\tbold\1\0\2\rprovider\15scroll_bar\rleft_sep\6 \rposition\0\1\0\1\rleft_sep\6 \0\20line_percentage\1\0\1\nstyle\tbold\1\0\2\rprovider\20line_percentage\rleft_sep\6 \tfile\aos\1\0\1\nstyle\tbold\1\0\1\rleft_sep\6 \ttype\1\0\1\rprovider\14file_type\rencoding\1\0\1\nstyle\tbold\1\0\2\rprovider\18file_encoding\rleft_sep\6 \tinfo\1\0\0\afg\1\0\1\nstyle\tbold\1\0\1\rleft_sep\6 \fvi_mode\1\0\0\nright\0\1\0\2\rleft_sep\6 \rprovider\b‚ñä\tleft\1\0\0\ahl\0\rprovider\1\0\0\0\28feline.providers.cursor\29feline.providers.vi_mode\25feline.providers.lsp\frequire\0\0\1\0\17\6v\vVISUAL\6s\fUNKNOWN\acv\vUNKWON\6c\fCOMMAND\6t\vINSERT\6r\fREPLACE\6n\vNORMAL\6\22\fV-BLOCK\arm\fUNKNOWN\ace\fUNKNOWN\aic\fUNKNOWN\6i\vINSERT\aRv\fUNKNOWN\6S\fUNKNOWN\6R\fREPLACE\ano\fUNKNOWN\6V\vV-LINE\tNONE\vyellow\tTERM\nSHELL\fCOMMAND\fmagenta\vSELECT\vorange\tMORE\nENTER\tcyan\14V-REPLACE\fREPLACE\bred\nBLOCK\aOP\vVISUAL\vviolet\vINSERT\tblue\vNORMAL\1\0\0\ngreen\20get_current_ufn\0\24get_unique_filename\0\0\21reverse_filename\0\19split_filename\0\rget_tail\0\0\1\0\15\afg\f#81A1C1\vpurple\f#B48EAD\fmagenta\f#BF616A\vorange\f#D08770\ngreen\f#8FBCBB\rdarkblue\f#81A1C1\tgray\f#616E88\tcyan\f#A3BE8C\tblue\f#5E81AC\vyellow\f#EBCB8B\bred\f#BF616A\rfg_green\f#8FBCBB\blbg\f#3B4252\fline_bg\tNONE\abg\tNONE\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/feline.nvim"
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
    config = { "\27LJ\2\n9\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\t<cr>\18compe#confirm\afn\bvimí\2\1\0\4\1\f\2'6\0\0\0009\0\1\0009\0\2\0B\0\1\2\b\0\0\0X\0\27Ä6\0\0\0009\0\1\0009\0\3\0B\0\1\0029\0\4\0\b\0\1\0X\0\tÄ6\0\0\0009\0\1\0009\0\5\0B\0\1\1-\0\0\0009\0\6\0'\2\a\0002\0\17ÄX\0\15Ä6\0\0\0009\0\b\0003\2\t\0)\3\20\0B\0\3\1-\0\0\0009\0\6\0'\2\n\0002\0\0ÄD\0\2\0X\0\4Ä-\0\0\0009\0\v\0002\0\0ÄD\0\1\0K\0\1\0D\0\2\0\1¿\26check_break_line_char\n<c-n>\0\rdefer_fn\n<c-y>\besc\18compe#confirm\rselected\18complete_info\15pumvisible\afn\bvim\0˛ˇˇˇ\31€\2\1\0\b\0\20\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0006\1\0\0'\3\1\0B\1\2\0026\2\t\0004\3\0\0=\3\n\0026\2\6\0009\2\v\2'\3\r\0=\3\f\0026\2\n\0003\3\15\0=\3\14\2\18\2\0\0'\4\16\0'\5\17\0'\6\18\0005\a\19\0B\2\5\0012\0\0ÄK\0\1\0\1\0\2\texpr\2\fnoremap\2&v:lua.MUtils.completion_confirm()\t<CR>\6i\0\23completion_confirm\5\27completion_confirm_key\6g\vMUtils\a_G\20nvim_set_keymap\bapi\bvim\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\nÉ\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\b\vrgb_fn\2\rRRGGBBAA\2\vRRGGBB\2\bRGB\2\nnames\2\bcss\2\vcss_fn\2\vhsl_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\nº\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vsource\1\0\t\nspell\2\rnvim_lsp\2\18snippets_nvim\2\rnvim_lua\2\tpath\2\nvsnip\2\tcalc\2\ttags\2\vbuffer\2\1\0\v\17autocomplete\2\19max_menu_width\3d\ndebug\1\fenabled\2\19max_kind_width\3d\19max_abbr_width\3d\21incomplete_delay\3ê\3\19source_timeout\3»\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\nsetup\ncompe\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n∫\4\0\2\6\0\6\0\v9\2\0\0009\2\1\2\15\0\2\0X\3\6Ä6\2\2\0009\2\3\0029\2\4\2'\4\5\0+\5\1\0B\2\3\1K\0\1\0œ\3          hi LspReferenceRead cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceText cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceWrite cterm=bold ctermbg=red guibg=#34495e\n          augroup lsp_document_highlight\n            autocmd! * <buffer>\n            autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n            autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n          augroup END\n        \14nvim_exec\bapi\bvim\23document_highlight\26resolved_capabilities?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14on_attach\18lsp_signature\frequireÏ\1\0\2\a\0\r\0\0309\2\0\1\15\0\2\0X\3\26Ä5\2\6\0005\3\1\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\1\6B\4\2\2=\4\5\3=\3\a\0025\3\b\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\2\6B\4\2\2=\4\5\3=\3\t\0026\3\n\0'\5\v\0B\3\2\0029\3\f\3\18\5\0\0\18\6\2\0D\3\3\0K\0\1\0\rin_range\20lsp-status/util\frequire\bend\1\0\1\14character\3\0\nstart\1\0\0\tline\14byte2line\afn\bvim\1\0\1\14character\3\0\15valueRangeã\1\1\1\5\1\a\0\r-\1\0\0009\1\0\0015\3\1\0006\4\2\0=\4\3\0033\4\4\0=\4\5\3B\1\2\1-\1\0\0009\1\6\1\18\3\0\0B\1\2\1K\0\1\0\0¿\14on_attach\18select_symbol\0\16kind_labels\17kind_symbols\1\0\1\21current_function\1\vconfigí\a\0\0\3\0\14\00016\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\0016\0\0\0009\0\1\0'\2\n\0B\0\2\0016\0\0\0009\0\1\0'\2\v\0B\0\2\0016\0\0\0009\0\1\0'\2\f\0B\0\2\0016\0\0\0009\0\1\0'\2\r\0B\0\2\1K\0\1\0Tcommand! -nargs=0 LspVirtualTextToggle lua require(\"lsp/virtual_text\").toggle();nnoremap <silent> g] :Lspsaga diagnostic_jump_next<CR>;nnoremap <silent> g[ :Lspsaga diagnostic_jump_prev<CR>Xnnoremap <silent> gS <cmd>lua require(\"lspsaga.signaturehelp\").signature_help()<CR>;nnoremap <silent> gD :Lspsaga preview_definition()<CR>/nnoremap <silent> K :Lspsaga hover_doc<CR>-nnoremap <silent> rn :Lspsaga rename<CR>2nnoremap <silent> ca :Lspsaga code_action<CR>Cnnoremap <silent> rn <cmd>lua vim.lsp.buf.implementation()<CR>Cnnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>?nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>?nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>\bcmd\bvim\21\0\2\4\1\0\0\3-\2\0\0B\2\1\1K\0\1\0\b¿»\14\1\0\22\0C\0Ä\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0026\4\0\0'\6\5\0B\4\2\0026\5\6\0009\5\a\0059\5\b\0055\6\n\0=\6\t\0056\5\6\0009\5\v\0059\5\f\5'\a\r\0005\b\14\0B\5\3\0016\5\6\0009\5\v\0059\5\f\5'\a\15\0005\b\16\0B\5\3\0016\5\6\0009\5\v\0059\5\f\5'\a\17\0005\b\18\0B\5\3\0016\5\6\0009\5\v\0059\5\f\5'\a\19\0005\b\20\0B\5\3\0019\5\21\0045\a\22\0B\5\2\0019\5\23\2B\5\1\0016\5\6\0009\5\a\0059\5\24\0056\6\6\0009\6\a\0069\6\26\0066\b\6\0009\b\a\b9\b\27\b9\b\28\b5\t\29\0B\6\3\2=\6\25\0053\5\30\0003\6\31\0003\a \0003\b!\0003\t\"\0005\n+\0005\v$\0005\f#\0=\f%\v9\f&\0039\f'\f'\14(\0'\15)\0B\f\3\2=\f*\v=\v,\n4\v\0\0=\v-\n5\v/\0005\f.\0=\f0\v=\v1\n4\v\0\0=\v2\n4\v\0\0=\v3\n4\v\0\0=\v4\n5\v:\0005\f8\0005\r6\0005\0145\0=\0147\r=\r9\f=\f;\v6\f<\0\18\14\n\0B\f\2\4H\15\23Ä6\17=\0\18\19\16\0B\17\2\2\a\17>\0X\17\3Ä\18\17\16\0B\17\1\2\18\16\17\0=\t?\0166\17\6\0009\17A\17'\19B\0009\20@\16\14\0\20\0X\21\1Ä4\20\0\0\18\21\v\0B\17\4\2=\17@\0168\17\15\0039\17\23\17\18\19\16\0B\17\2\1F\15\3\3R\15Á2\0\0ÄK\0\1\0\tkeep\20tbl_deep_extend\17capabilities\14on_attach\rfunction\ttype\npairs\17textDocument\1\0\0\15completion\1\0\0\19completionItem\1\0\0\1\0\1\19snippetSupport\2\nvimls\rtsserver\18rust_analyzer\vjsonls\bcmd\1\0\0\1\3\0\0\24json-languageserver\f--stdio\thtml\ncssls\1\0\0\rroot_dir\t.git\17package.json\17root_pattern\tutil\14filetypes\1\0\0\1\5\0\0\bcss\tscss\tless\tsass\0\0\0\0\0\1\0\4\21update_in_insert\1\nsigns\2\17virtual_text\1\14underline\2\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\nsetup\1\0\1\29use_saga_diagnostic_sign\2\18init_lsp_saga\1\0\3\ttext\bÔÅö\vtexthl\"LspDiagnosticsSignInformation\nnumhl\14WhiteSign\"LspDiagnosticsSignInformation\1\0\3\ttext\bÔÅ™\vtexthl\27LspDiagnosticsSignHint\nnumhl\rBlueSign\27LspDiagnosticsSignHint\1\0\3\ttext\bÔÅ±\vtexthl\30LspDiagnosticsSignWarning\nnumhl\15YellowSign\30LspDiagnosticsSignWarning\1\0\3\ttext\bÔÅó\vtexthl\28LspDiagnosticsSignError\nnumhl\fRedSign\28LspDiagnosticsSignError\16sign_define\afn\1\26\0\0\18 Ôíû  (Text) \19 Ôö¶  (Method)\21 Ôûî  (Function)\24 Ôê•  (Constructor)\18 Ô¥≤  (Field)\21[Óúñ] (Variable)\18 Ô†ñ  (Class)\22 Ô∞Æ  (Interface)\19 Ôô®  (Module)\20 Ô™∂ (Property)\17 Ôëµ  (Unit)\18 Ô¢ü  (Value)\16 Ô©ó (Enum)\20 Ô†ä  (Keyword)\20 ÔÉÑ  (Snippet)\18 Ô£ó  (Color)\17 Ôúì  (File)\22 Ôúú  (Reference)\19 Ôùä  (Folder)\23 ÔÖù  (EnumMember)\21 Ô≤Ä  (Constant)\19 Ô≥§  (Struct)\18 ÔÉß  (Event)\21 Ôó´  (Operator)\26 ÔûÉ  (TypeParameter)\23CompletionItemKind\rprotocol\blsp\bvim\flspsaga\14lspconfig\ftrouble\21vim.lsp.protocol\15lsp-status\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspfuzzy"] = {
    config = { "\27LJ\2\nÀ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\15fzf_action\1\0\3\vctrl-t\ftabedit\vctrl-x\nsplit\vctrl-v\vvsplit\16fzf_preview\1\2\0\0\18right:+{2}-/2\1\0\3\17fzf_modifier\t:~:.\rfzf_trim\2\fmethods\ball\nsetup\rlspfuzzy\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-lspfuzzy"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÜ\3\0\0\5\0\17\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0004\4\0\0=\4\15\3=\3\16\2B\0\2\1K\0\1\0\15playground\fdisable\1\0\3\20persist_queries\1\venable\2\15updatetime\3\25\26context_commentstring\1\0\1\venable\2\14highlight\1\0\2\venable\2\21use_languagetree\2\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\21ensure_installed\1\0\0\1\f\0\0\15javascript\15typescript\tjson\fgraphql\btsx\thtml\njsdoc\trust\bcss\tbash\blua\nsetup\28nvim-treesitter.configs\frequire\0" },
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
    config = { "\27LJ\2\nô\5\0\0\5\0\30\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\28\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\29\2B\0\2\1K\0\1\0\roverride\1\0\0\tlock\1\0\3\ncolor\f#5c6370\ticon\bÔ†Ω\tname\tlock\bmp4\1\0\3\ncolor\f#5c6370\ticon\bÔÖÑ\tname\bmp4\bmp3\1\0\3\ncolor\f#566370\ticon\bÔ¢Ö\tname\bmp3\btxt\1\0\3\ncolor\f#61afef\ticon\bÔÖú\tname\ttext\bmap\1\0\3\ncolor\f#566370\ticon\bÓòî\tname\btxt\taxml\1\0\3\ncolor\f#f76c7c\ticon\bÔú≠\tname\taxml\ttxml\1\0\3\ncolor\f#f76c7c\ticon\bÔú≠\tname\ttxml\bxml\1\0\3\ncolor\f#f76c7c\ticon\bÔú≠\tname\bxml\tacss\1\0\3\ncolor\f#61afef\ticon\bÓùâ\tname\bcss\ttcss\1\0\3\ncolor\f#61afef\ticon\bÓùâ\tname\bcss\bcss\1\0\3\ncolor\f#61afef\ticon\bÓùâ\tname\bcss\thtml\1\0\0\1\0\3\ncolor\f#f76c7c\ticon\bÔÑª\tname\thtml\nsetup\22nvim-web-devicons\frequire\0" },
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
-- Config for: nvim-web-devicons
time("Config for nvim-web-devicons", true)
try_loadstring("\27LJ\2\nô\5\0\0\5\0\30\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\28\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\29\2B\0\2\1K\0\1\0\roverride\1\0\0\tlock\1\0\3\ncolor\f#5c6370\ticon\bÔ†Ω\tname\tlock\bmp4\1\0\3\ncolor\f#5c6370\ticon\bÔÖÑ\tname\bmp4\bmp3\1\0\3\ncolor\f#566370\ticon\bÔ¢Ö\tname\bmp3\btxt\1\0\3\ncolor\f#61afef\ticon\bÔÖú\tname\ttext\bmap\1\0\3\ncolor\f#566370\ticon\bÓòî\tname\btxt\taxml\1\0\3\ncolor\f#f76c7c\ticon\bÔú≠\tname\taxml\ttxml\1\0\3\ncolor\f#f76c7c\ticon\bÔú≠\tname\ttxml\bxml\1\0\3\ncolor\f#f76c7c\ticon\bÔú≠\tname\bxml\tacss\1\0\3\ncolor\f#61afef\ticon\bÓùâ\tname\bcss\ttcss\1\0\3\ncolor\f#61afef\ticon\bÓùâ\tname\bcss\bcss\1\0\3\ncolor\f#61afef\ticon\bÓùâ\tname\bcss\thtml\1\0\0\1\0\3\ncolor\f#f76c7c\ticon\bÔÑª\tname\thtml\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time("Config for nvim-web-devicons", false)
-- Config for: vim-vsnip
time("Config for vim-vsnip", true)
try_loadstring("\27LJ\2\nK\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\28~/.config/nvim/snippets\22vsnip_snippet_dir\6g\bvim\0", "config", "vim-vsnip")
time("Config for vim-vsnip", false)
-- Config for: nvim-autopairs
time("Config for nvim-autopairs", true)
try_loadstring("\27LJ\2\n9\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\t<cr>\18compe#confirm\afn\bvimí\2\1\0\4\1\f\2'6\0\0\0009\0\1\0009\0\2\0B\0\1\2\b\0\0\0X\0\27Ä6\0\0\0009\0\1\0009\0\3\0B\0\1\0029\0\4\0\b\0\1\0X\0\tÄ6\0\0\0009\0\1\0009\0\5\0B\0\1\1-\0\0\0009\0\6\0'\2\a\0002\0\17ÄX\0\15Ä6\0\0\0009\0\b\0003\2\t\0)\3\20\0B\0\3\1-\0\0\0009\0\6\0'\2\n\0002\0\0ÄD\0\2\0X\0\4Ä-\0\0\0009\0\v\0002\0\0ÄD\0\1\0K\0\1\0D\0\2\0\1¿\26check_break_line_char\n<c-n>\0\rdefer_fn\n<c-y>\besc\18compe#confirm\rselected\18complete_info\15pumvisible\afn\bvim\0˛ˇˇˇ\31€\2\1\0\b\0\20\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0006\1\0\0'\3\1\0B\1\2\0026\2\t\0004\3\0\0=\3\n\0026\2\6\0009\2\v\2'\3\r\0=\3\f\0026\2\n\0003\3\15\0=\3\14\2\18\2\0\0'\4\16\0'\5\17\0'\6\18\0005\a\19\0B\2\5\0012\0\0ÄK\0\1\0\1\0\2\texpr\2\fnoremap\2&v:lua.MUtils.completion_confirm()\t<CR>\6i\0\23completion_confirm\5\27completion_confirm_key\6g\vMUtils\a_G\20nvim_set_keymap\bapi\bvim\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time("Config for nvim-autopairs", false)
-- Config for: nvim-colorizer.lua
time("Config for nvim-colorizer.lua", true)
try_loadstring("\27LJ\2\nÉ\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\b\vrgb_fn\2\rRRGGBBAA\2\vRRGGBB\2\bRGB\2\nnames\2\bcss\2\vcss_fn\2\vhsl_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time("Config for nvim-colorizer.lua", false)
-- Config for: nvim-treesitter
time("Config for nvim-treesitter", true)
try_loadstring("\27LJ\2\nÜ\3\0\0\5\0\17\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0004\4\0\0=\4\15\3=\3\16\2B\0\2\1K\0\1\0\15playground\fdisable\1\0\3\20persist_queries\1\venable\2\15updatetime\3\25\26context_commentstring\1\0\1\venable\2\14highlight\1\0\2\venable\2\21use_languagetree\2\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\21ensure_installed\1\0\0\1\f\0\0\15javascript\15typescript\tjson\fgraphql\btsx\thtml\njsdoc\trust\bcss\tbash\blua\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time("Config for nvim-treesitter", false)
-- Config for: sonokai
time("Config for sonokai", true)
try_loadstring("\27LJ\2\nˆ\1\0\0\4\0\n\0\0266\0\0\0009\0\1\0006\1\0\0009\1\1\1'\3\2\0B\1\2\0016\1\0\0009\1\1\1'\3\3\0B\1\2\0016\1\0\0009\1\4\1'\2\6\0=\2\5\0016\1\0\0009\1\4\1)\2\1\0=\2\a\0016\1\0\0009\1\4\1)\2\1\0=\2\b\1\18\1\0\0'\3\t\0B\1\2\1K\0\1\0\24colorscheme sonokai#sonokai_disable_italic_comment\26sonokai_enable_italic\14andromeda\18sonokai_style\6g\22set termguicolors\14syntax on\bcmd\bvim\0", "config", "sonokai")
time("Config for sonokai", false)
-- Config for: nvim-lspfuzzy
time("Config for nvim-lspfuzzy", true)
try_loadstring("\27LJ\2\nÀ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\15fzf_action\1\0\3\vctrl-t\ftabedit\vctrl-x\nsplit\vctrl-v\vvsplit\16fzf_preview\1\2\0\0\18right:+{2}-/2\1\0\3\17fzf_modifier\t:~:.\rfzf_trim\2\fmethods\ball\nsetup\rlspfuzzy\frequire\0", "config", "nvim-lspfuzzy")
time("Config for nvim-lspfuzzy", false)
-- Config for: nvim-lspconfig
time("Config for nvim-lspconfig", true)
try_loadstring("\27LJ\2\n∫\4\0\2\6\0\6\0\v9\2\0\0009\2\1\2\15\0\2\0X\3\6Ä6\2\2\0009\2\3\0029\2\4\2'\4\5\0+\5\1\0B\2\3\1K\0\1\0œ\3          hi LspReferenceRead cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceText cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceWrite cterm=bold ctermbg=red guibg=#34495e\n          augroup lsp_document_highlight\n            autocmd! * <buffer>\n            autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n            autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n          augroup END\n        \14nvim_exec\bapi\bvim\23document_highlight\26resolved_capabilities?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14on_attach\18lsp_signature\frequireÏ\1\0\2\a\0\r\0\0309\2\0\1\15\0\2\0X\3\26Ä5\2\6\0005\3\1\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\1\6B\4\2\2=\4\5\3=\3\a\0025\3\b\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\2\6B\4\2\2=\4\5\3=\3\t\0026\3\n\0'\5\v\0B\3\2\0029\3\f\3\18\5\0\0\18\6\2\0D\3\3\0K\0\1\0\rin_range\20lsp-status/util\frequire\bend\1\0\1\14character\3\0\nstart\1\0\0\tline\14byte2line\afn\bvim\1\0\1\14character\3\0\15valueRangeã\1\1\1\5\1\a\0\r-\1\0\0009\1\0\0015\3\1\0006\4\2\0=\4\3\0033\4\4\0=\4\5\3B\1\2\1-\1\0\0009\1\6\1\18\3\0\0B\1\2\1K\0\1\0\0¿\14on_attach\18select_symbol\0\16kind_labels\17kind_symbols\1\0\1\21current_function\1\vconfigí\a\0\0\3\0\14\00016\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\0016\0\0\0009\0\1\0'\2\n\0B\0\2\0016\0\0\0009\0\1\0'\2\v\0B\0\2\0016\0\0\0009\0\1\0'\2\f\0B\0\2\0016\0\0\0009\0\1\0'\2\r\0B\0\2\1K\0\1\0Tcommand! -nargs=0 LspVirtualTextToggle lua require(\"lsp/virtual_text\").toggle();nnoremap <silent> g] :Lspsaga diagnostic_jump_next<CR>;nnoremap <silent> g[ :Lspsaga diagnostic_jump_prev<CR>Xnnoremap <silent> gS <cmd>lua require(\"lspsaga.signaturehelp\").signature_help()<CR>;nnoremap <silent> gD :Lspsaga preview_definition()<CR>/nnoremap <silent> K :Lspsaga hover_doc<CR>-nnoremap <silent> rn :Lspsaga rename<CR>2nnoremap <silent> ca :Lspsaga code_action<CR>Cnnoremap <silent> rn <cmd>lua vim.lsp.buf.implementation()<CR>Cnnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>?nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>?nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>\bcmd\bvim\21\0\2\4\1\0\0\3-\2\0\0B\2\1\1K\0\1\0\b¿»\14\1\0\22\0C\0Ä\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0026\4\0\0'\6\5\0B\4\2\0026\5\6\0009\5\a\0059\5\b\0055\6\n\0=\6\t\0056\5\6\0009\5\v\0059\5\f\5'\a\r\0005\b\14\0B\5\3\0016\5\6\0009\5\v\0059\5\f\5'\a\15\0005\b\16\0B\5\3\0016\5\6\0009\5\v\0059\5\f\5'\a\17\0005\b\18\0B\5\3\0016\5\6\0009\5\v\0059\5\f\5'\a\19\0005\b\20\0B\5\3\0019\5\21\0045\a\22\0B\5\2\0019\5\23\2B\5\1\0016\5\6\0009\5\a\0059\5\24\0056\6\6\0009\6\a\0069\6\26\0066\b\6\0009\b\a\b9\b\27\b9\b\28\b5\t\29\0B\6\3\2=\6\25\0053\5\30\0003\6\31\0003\a \0003\b!\0003\t\"\0005\n+\0005\v$\0005\f#\0=\f%\v9\f&\0039\f'\f'\14(\0'\15)\0B\f\3\2=\f*\v=\v,\n4\v\0\0=\v-\n5\v/\0005\f.\0=\f0\v=\v1\n4\v\0\0=\v2\n4\v\0\0=\v3\n4\v\0\0=\v4\n5\v:\0005\f8\0005\r6\0005\0145\0=\0147\r=\r9\f=\f;\v6\f<\0\18\14\n\0B\f\2\4H\15\23Ä6\17=\0\18\19\16\0B\17\2\2\a\17>\0X\17\3Ä\18\17\16\0B\17\1\2\18\16\17\0=\t?\0166\17\6\0009\17A\17'\19B\0009\20@\16\14\0\20\0X\21\1Ä4\20\0\0\18\21\v\0B\17\4\2=\17@\0168\17\15\0039\17\23\17\18\19\16\0B\17\2\1F\15\3\3R\15Á2\0\0ÄK\0\1\0\tkeep\20tbl_deep_extend\17capabilities\14on_attach\rfunction\ttype\npairs\17textDocument\1\0\0\15completion\1\0\0\19completionItem\1\0\0\1\0\1\19snippetSupport\2\nvimls\rtsserver\18rust_analyzer\vjsonls\bcmd\1\0\0\1\3\0\0\24json-languageserver\f--stdio\thtml\ncssls\1\0\0\rroot_dir\t.git\17package.json\17root_pattern\tutil\14filetypes\1\0\0\1\5\0\0\bcss\tscss\tless\tsass\0\0\0\0\0\1\0\4\21update_in_insert\1\nsigns\2\17virtual_text\1\14underline\2\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\nsetup\1\0\1\29use_saga_diagnostic_sign\2\18init_lsp_saga\1\0\3\ttext\bÔÅö\vtexthl\"LspDiagnosticsSignInformation\nnumhl\14WhiteSign\"LspDiagnosticsSignInformation\1\0\3\ttext\bÔÅ™\vtexthl\27LspDiagnosticsSignHint\nnumhl\rBlueSign\27LspDiagnosticsSignHint\1\0\3\ttext\bÔÅ±\vtexthl\30LspDiagnosticsSignWarning\nnumhl\15YellowSign\30LspDiagnosticsSignWarning\1\0\3\ttext\bÔÅó\vtexthl\28LspDiagnosticsSignError\nnumhl\fRedSign\28LspDiagnosticsSignError\16sign_define\afn\1\26\0\0\18 Ôíû  (Text) \19 Ôö¶  (Method)\21 Ôûî  (Function)\24 Ôê•  (Constructor)\18 Ô¥≤  (Field)\21[Óúñ] (Variable)\18 Ô†ñ  (Class)\22 Ô∞Æ  (Interface)\19 Ôô®  (Module)\20 Ô™∂ (Property)\17 Ôëµ  (Unit)\18 Ô¢ü  (Value)\16 Ô©ó (Enum)\20 Ô†ä  (Keyword)\20 ÔÉÑ  (Snippet)\18 Ô£ó  (Color)\17 Ôúì  (File)\22 Ôúú  (Reference)\19 Ôùä  (Folder)\23 ÔÖù  (EnumMember)\21 Ô≤Ä  (Constant)\19 Ô≥§  (Struct)\18 ÔÉß  (Event)\21 Ôó´  (Operator)\26 ÔûÉ  (TypeParameter)\23CompletionItemKind\rprotocol\blsp\bvim\flspsaga\14lspconfig\ftrouble\21vim.lsp.protocol\15lsp-status\frequire\0", "config", "nvim-lspconfig")
time("Config for nvim-lspconfig", false)
-- Config for: feline.nvim
time("Config for feline.nvim", true)
try_loadstring("\27LJ\2\nX\0\1\b\0\2\2\17)\1\1\0006\2\0\0009\2\1\2\21\4\0\0\25\4\0\4B\2\2\2)\3\1\0M\1\bÄ\21\5\0\0!\5\4\5\22\5\1\0058\6\5\0008\a\4\0<\a\5\0<\6\4\0O\1¯K\0\1\0\nfloor\tmath\4\0025\0\1\5\0\4\0\0066\1\0\0009\1\1\0019\1\2\1\18\3\0\0'\4\3\0D\1\3\0\a:t\16fnamemodify\afn\bvimä\1\0\1\n\0\6\0\0224\1\0\0006\2\0\0009\2\1\2\18\4\0\0'\5\2\0B\2\3\4X\5\5Ä6\6\3\0009\6\4\6\18\b\1\0\18\t\5\0B\6\3\1E\5\3\2R\5˘6\2\3\0009\2\4\2\18\4\1\0006\5\5\0\18\a\0\0B\5\2\0A\2\1\1L\1\2\0\rget_tail\vinsert\ntable\v[^/]+/\vgmatch\vstring4\0\1\5\1\1\0\a6\1\0\0\18\3\0\0B\1\2\2-\2\0\0\18\4\1\0B\2\2\1L\1\2\0\1¿\19split_filename7\0\2\b\0\0\0\f)\2\1\0\21\3\0\0)\4\1\0M\2\6Ä8\6\5\0008\a\5\1\4\6\a\0X\6\1ÄL\5\2\0O\2˙)\2\1\0L\2\2\0\27\0\1\5\2\0\0\4-\1\0\0-\3\1\0\18\4\0\0D\1\3\0\0\0\4¿∑\1\1\2\14\1\6\0\"'\2\0\0006\3\1\0009\3\2\0036\5\3\0\18\6\1\0B\3\3\0026\4\3\0\18\6\0\0B\4\2\0026\5\1\0009\5\2\0053\a\4\0\18\b\3\0B\5\3\2)\6\0\0006\a\5\0\18\t\5\0B\a\2\4X\n\3Ä\1\6\v\0X\f\1Ä\18\6\v\0E\n\3\3R\n˚\18\a\6\0)\b\1\0)\tˇˇM\a\4Ä\18\v\2\0008\f\n\4&\2\f\vO\a¸2\0\0ÄL\2\2\0\2¿\vipairs\0\21reverse_filename\ftbl_map\bvim\5+\0\1\2\0\1\1\a9\1\0\0\b\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\vlisted\2\20\0\1\2\0\1\0\0029\1\0\0L\1\2\0\tname´\1\1\0\b\0\n\0\0246\0\0\0009\0\1\0009\0\2\0B\0\1\0026\1\0\0009\1\3\0013\3\4\0\18\4\0\0B\1\3\0026\2\0\0009\2\5\0023\4\6\0\18\5\1\0B\2\3\0026\3\0\0009\3\1\0039\3\a\3'\5\b\0B\3\2\0026\4\t\0\18\6\3\0\18\a\2\0002\0\0ÄD\4\3\0\24get_unique_filename\6%\vexpand\0\ftbl_map\0\15tbl_filter\15getbufinfo\afn\bvimá\1\0\0\4\0\t\0\0206\0\0\0009\0\1\0009\0\2\0\18\2\0\0009\0\3\0B\0\2\2+\1\0\0\a\0\4\0X\2\2Ä'\1\5\0X\2\5Ä\a\0\6\0X\2\2Ä'\1\a\0X\2\1Ä'\1\b\0\18\2\1\0\18\3\0\0&\2\3\2L\2\2\0\tÔÖ∫ \tÔÖπ \bMAC\tÔÖº \tUNIX\nupper\15fileformat\abo\bvim‡\2\0\2\f\0\20\00056\2\0\0009\2\1\2\18\4\1\0'\5\2\0B\2\3\0026\3\3\0009\3\4\0039\3\5\3'\5\6\0\18\6\2\0&\5\6\5B\3\2\0026\4\3\0009\4\4\0049\4\5\4'\6\a\0B\4\2\2+\5\0\0009\6\b\0\14\0\6\0X\a\bÄ6\6\t\0'\b\n\0B\6\2\0029\6\v\6\18\b\3\0\18\t\4\0005\n\f\0B\6\4\2\a\3\r\0X\a\1Ä'\3\14\0006\a\3\0009\a\15\a9\a\16\a\15\0\a\0X\b\bÄ9\a\17\0\14\0\a\0X\b\1Ä'\a\18\0\18\b\a\0'\t\19\0&\5\t\bX\a\1Ä'\5\r\0\18\a\6\0'\b\19\0\18\t\3\0'\n\19\0\18\v\5\0&\a\v\aL\a\2\0\6 \b‚óè\23file_modified_icon\rmodified\abo\funnamed\5\1\0\1\fdefault\2\rget_icon\22nvim-web-devicons\frequire\ticon\b%:e\6%\vexpand\afn\bvim\6:\vconcat\ntable?\0\0\4\1\4\0\n'\0\0\0-\1\0\0006\2\1\0009\2\2\0029\2\3\2B\2\1\0028\1\2\1'\2\0\0&\0\2\0L\0\2\0\4¿\tmode\afn\bvim\6 \0\0\3\2\6\0\r5\0\1\0-\1\0\0009\1\0\1B\1\1\2=\1\2\0-\1\1\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1B\1\1\2=\1\3\0L\0\2\0\b¿\0¿\19get_mode_color\afg\abg\tname\1\0\1\nstyle\tbold\28get_mode_highlight_namec\0\0\3\1\5\0\n5\0\1\0-\1\0\0009\1\0\1B\1\1\2=\1\2\0-\1\0\0009\1\3\1B\1\1\2=\1\4\0L\0\2\0\b¿\afg\19get_mode_color\tname\1\0\0\28get_mode_highlight_name<\0\0\3\1\3\0\t-\0\0\0009\0\0\0B\0\1\0027\0\1\0'\0\2\0006\1\1\0'\2\2\0&\0\2\0L\0\2\0\t¿\6 \bpos\rposition\0\0\3\2\6\0\r5\0\1\0-\1\0\0009\1\0\1B\1\1\2=\1\2\0-\1\1\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1B\1\1\2=\1\3\0L\0\2\0\b¿\0¿\19get_mode_color\afg\abg\tname\1\0\1\nstyle\tbold\28get_mode_highlight_name1\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\a¿\nError\22diagnostics_exist3\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\a¿\fWarning\22diagnostics_exist0\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\a¿\tHint\22diagnostics_exist7\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\a¿\16Information\22diagnostics_existÔ\21\1\0\17\0å\1\0ã\0025\0\0\0003\1\1\0003\2\2\0007\2\3\0003\2\4\0007\2\5\0003\2\6\0007\2\a\0003\2\b\0003\3\t\0007\3\n\0003\3\v\0007\3\f\0005\3\14\0009\4\r\0=\4\15\0039\4\16\0=\4\17\0039\4\18\0=\4\19\0039\4\r\0=\4\20\0039\4\16\0=\4\21\0039\4\22\0=\4\23\0039\4\22\0=\4\24\0039\4\25\0=\4\26\0039\4\25\0=\4\27\0039\4\28\0=\4\29\0039\4\30\0=\4\31\0039\4\r\0=\4 \0039\4\16\0=\4!\0039\4\"\0=\4#\0035\4$\0003\5%\0003\6&\0006\a'\0'\t(\0B\a\2\0026\b'\0'\n)\0B\b\2\0026\t'\0'\v*\0B\t\2\0025\n5\0005\v0\0005\f,\0003\r+\0=\r-\f3\r.\0=\r/\f=\f1\v5\f2\0003\r3\0=\r/\f=\f4\v=\v6\n5\v:\0005\f7\0006\r\f\0=\r-\f5\r8\0009\14\16\0=\0149\r=\r/\f=\f;\v5\f<\0005\r=\0009\14\18\0=\0149\r=\r/\f=\f>\v5\f?\0=\f@\v5\fA\0=\5-\f5\rB\0009\14\18\0=\0149\r=\r/\f=\fC\v=\vD\n5\vE\0005\fF\0=\f/\v=\vG\n5\vI\0003\fH\0=\f-\v3\fJ\0=\f/\v=\vK\n5\vL\0005\fM\0009\r\16\0=\r9\f=\f/\v=\vN\n5\vS\0005\fO\0003\rP\0=\rQ\f5\rR\0009\14\22\0=\0149\r=\r/\f=\fT\v5\fU\0003\rV\0=\rQ\f5\rW\0009\14\"\0=\0149\r=\r/\f=\fX\v5\fY\0003\rZ\0=\rQ\f5\r[\0009\14\25\0=\0149\r=\r/\f=\f\\\v5\f]\0003\r^\0=\rQ\f5\r_\0009\14\16\0=\0149\r=\r/\f=\f;\v=\v`\n5\vc\0005\fa\0005\rb\0009\14\"\0=\0149\r=\r/\f=\fd\v=\ve\n5\vh\0005\ff\0005\rg\0009\14\18\0=\0149\r=\r/\f=\fi\v5\fj\0005\rk\0009\14\r\0=\0149\r=\r/\f=\fl\v5\fm\0005\rn\0009\14\28\0=\0149\r=\r/\f=\fo\v5\fp\0005\rq\0009\14\22\0=\0149\r=\r/\f=\fr\v=\vs\n5\vz\0005\fu\0005\rt\0=\rv\f5\rw\0=\rx\f4\r\0\0=\ry\f=\f{\v5\f\0005\r|\0004\14\b\0009\0156\n9\0151\15>\15\1\0149\15D\n9\15;\15>\15\2\0149\15e\n9\15d\15>\15\3\0149\15`\n9\15T\15>\15\4\0149\15`\n9\15X\15>\15\5\0149\15`\n9\15\\\15>\15\6\0149\15`\n9\15;\15>\15\a\14=\14}\r4\14\3\0009\15D\n9\15;\15>\15\1\14=\14~\r=\r1\f5\rÄ\0004\14\0\0=\14}\r4\14\0\0=\14~\r=\rÅ\f5\rÇ\0004\14\t\0009\15s\n9\15l\15>\15\1\0149\15s\n9\15o\15>\15\2\0149\15s\n9\15r\15>\15\3\0149\15D\n9\15C\15>\15\4\0149\15s\n9\15i\15>\15\5\0149\15N\n>\15\6\0149\15G\n>\15\a\0149\15K\n>\15\b\14=\14}\r4\14\3\0009\15D\n9\15C\15>\15\1\14=\14~\r=\r4\f6\r'\0'\15É\0B\r\2\0029\rÑ\r5\15Ü\0009\16Ö\0=\16á\0159\0169\0=\16à\15=\fâ\15=\vä\15=\3ã\15B\r\2\0012\0\0ÄK\0\1\0\19vi_mode_colors\15properties\15components\15default_fg\15default_bg\1\0\0\abg\nsetup\vfeline\1\0\0\bmid\1\0\0\1\0\0\rinactive\vactive\1\0\0\19force_inactive\1\0\0\rbufnames\rbuftypes\1\2\0\0\rterminal\14filetypes\1\0\0\1\b\0\0\rNvimTree\tdefx\tdbui\vpacker\rstartify\rfugitive\18fugitiveblame\bgit\vremove\1\0\0\1\0\1\rprovider\21git_diff_removed\vchange\1\0\0\1\0\1\rprovider\21git_diff_changed\badd\1\0\0\1\0\1\rprovider\19git_diff_added\vbranch\1\0\0\1\0\1\nstyle\tbold\1\0\3\rleft_sep\6 \ticon\tÓÇ† \rprovider\15git_branch\blsp\tname\1\0\0\1\0\0\1\0\3\rprovider\21lsp_client_names\ticon\tÔà≥ \rleft_sep\6 \fdiagnos\1\0\0\0\1\0\1\rprovider\20diagnostic_info\thint\1\0\0\0\1\0\1\rprovider\21diagnostic_hints\twarn\1\0\0\0\1\0\1\rprovider\24diagnostic_warnings\berr\1\0\0\1\0\0\fenabled\0\1\0\1\rprovider\22diagnostic_errors\15scroll_bar\1\0\1\nstyle\tbold\1\0\2\rprovider\15scroll_bar\rleft_sep\6 \rposition\0\1\0\1\rleft_sep\6 \0\20line_percentage\1\0\1\nstyle\tbold\1\0\2\rprovider\20line_percentage\rleft_sep\6 \tfile\aos\1\0\1\nstyle\tbold\1\0\1\rleft_sep\6 \ttype\1\0\1\rprovider\14file_type\rencoding\1\0\1\nstyle\tbold\1\0\2\rprovider\18file_encoding\rleft_sep\6 \tinfo\1\0\0\afg\1\0\1\nstyle\tbold\1\0\1\rleft_sep\6 \fvi_mode\1\0\0\nright\0\1\0\2\rleft_sep\6 \rprovider\b‚ñä\tleft\1\0\0\ahl\0\rprovider\1\0\0\0\28feline.providers.cursor\29feline.providers.vi_mode\25feline.providers.lsp\frequire\0\0\1\0\17\6v\vVISUAL\6s\fUNKNOWN\acv\vUNKWON\6c\fCOMMAND\6t\vINSERT\6r\fREPLACE\6n\vNORMAL\6\22\fV-BLOCK\arm\fUNKNOWN\ace\fUNKNOWN\aic\fUNKNOWN\6i\vINSERT\aRv\fUNKNOWN\6S\fUNKNOWN\6R\fREPLACE\ano\fUNKNOWN\6V\vV-LINE\tNONE\vyellow\tTERM\nSHELL\fCOMMAND\fmagenta\vSELECT\vorange\tMORE\nENTER\tcyan\14V-REPLACE\fREPLACE\bred\nBLOCK\aOP\vVISUAL\vviolet\vINSERT\tblue\vNORMAL\1\0\0\ngreen\20get_current_ufn\0\24get_unique_filename\0\0\21reverse_filename\0\19split_filename\0\rget_tail\0\0\1\0\15\afg\f#81A1C1\vpurple\f#B48EAD\fmagenta\f#BF616A\vorange\f#D08770\ngreen\f#8FBCBB\rdarkblue\f#81A1C1\tgray\f#616E88\tcyan\f#A3BE8C\tblue\f#5E81AC\vyellow\f#EBCB8B\bred\f#BF616A\rfg_green\f#8FBCBB\blbg\f#3B4252\fline_bg\tNONE\abg\tNONE\0", "config", "feline.nvim")
time("Config for feline.nvim", false)
-- Config for: nvim-compe
time("Config for nvim-compe", true)
try_loadstring("\27LJ\2\nº\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vsource\1\0\t\nspell\2\rnvim_lsp\2\18snippets_nvim\2\rnvim_lua\2\tpath\2\nvsnip\2\tcalc\2\ttags\2\vbuffer\2\1\0\v\17autocomplete\2\19max_menu_width\3d\ndebug\1\fenabled\2\19max_kind_width\3d\19max_abbr_width\3d\21incomplete_delay\3ê\3\19source_timeout\3»\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\nsetup\ncompe\frequire\0", "config", "nvim-compe")
time("Config for nvim-compe", false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
