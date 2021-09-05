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
  ["feline.nvim"] = {
    config = { "\27LJ\2\nX\0\1\b\0\2\2\17)\1\1\0006\2\0\0009\2\1\2\21\4\0\0\25\4\0\4B\2\2\2)\3\1\0M\1\b�\21\5\0\0!\5\4\5\22\5\1\0058\6\5\0008\a\4\0<\a\5\0<\6\4\0O\1�K\0\1\0\nfloor\tmath\4\0025\0\1\5\0\4\0\0066\1\0\0009\1\1\0019\1\2\1\18\3\0\0'\4\3\0D\1\3\0\a:t\16fnamemodify\afn\bvim�\1\0\1\n\0\6\0\0224\1\0\0006\2\0\0009\2\1\2\18\4\0\0'\5\2\0B\2\3\4X\5\5�6\6\3\0009\6\4\6\18\b\1\0\18\t\5\0B\6\3\1E\5\3\2R\5�6\2\3\0009\2\4\2\18\4\1\0006\5\5\0\18\a\0\0B\5\2\0A\2\1\1L\1\2\0\rget_tail\vinsert\ntable\v[^/]+/\vgmatch\vstring4\0\1\5\1\1\0\a6\1\0\0\18\3\0\0B\1\2\2-\2\0\0\18\4\1\0B\2\2\1L\1\2\0\1�\19split_filename7\0\2\b\0\0\0\f)\2\1\0\21\3\0\0)\4\1\0M\2\6�8\6\5\0008\a\5\1\4\6\a\0X\6\1�L\5\2\0O\2�)\2\1\0L\2\2\0\27\0\1\5\2\0\0\4-\1\0\0-\3\1\0\18\4\0\0D\1\3\0\0\0\4��\1\1\2\14\1\6\0\"'\2\0\0006\3\1\0009\3\2\0036\5\3\0\18\6\1\0B\3\3\0026\4\3\0\18\6\0\0B\4\2\0026\5\1\0009\5\2\0053\a\4\0\18\b\3\0B\5\3\2)\6\0\0006\a\5\0\18\t\5\0B\a\2\4X\n\3�\1\6\v\0X\f\1�\18\6\v\0E\n\3\3R\n�\18\a\6\0)\b\1\0)\t��M\a\4�\18\v\2\0008\f\n\4&\2\f\vO\a�2\0\0�L\2\2\0\2�\vipairs\0\21reverse_filename\ftbl_map\bvim\5+\0\1\2\0\1\1\a9\1\0\0\b\1\0\0X\1\2�+\1\1\0X\2\1�+\1\2\0L\1\2\0\vlisted\2\20\0\1\2\0\1\0\0029\1\0\0L\1\2\0\tname�\1\1\0\b\0\n\0\0246\0\0\0009\0\1\0009\0\2\0B\0\1\0026\1\0\0009\1\3\0013\3\4\0\18\4\0\0B\1\3\0026\2\0\0009\2\5\0023\4\6\0\18\5\1\0B\2\3\0026\3\0\0009\3\1\0039\3\a\3'\5\b\0B\3\2\0026\4\t\0\18\6\3\0\18\a\2\0002\0\0�D\4\3\0\24get_unique_filename\6%\vexpand\0\ftbl_map\0\15tbl_filter\15getbufinfo\afn\bvim�\1\0\0\4\0\t\0\0206\0\0\0009\0\1\0009\0\2\0\18\2\0\0009\0\3\0B\0\2\2+\1\0\0\a\0\4\0X\2\2�'\1\5\0X\2\5�\a\0\6\0X\2\2�'\1\a\0X\2\1�'\1\b\0\18\2\1\0\18\3\0\0&\2\3\2L\2\2\0\t \t \bMAC\t \tUNIX\nupper\15fileformat\abo\bvim�\2\0\2\f\0\20\00056\2\0\0009\2\1\2\18\4\1\0'\5\2\0B\2\3\0026\3\3\0009\3\4\0039\3\5\3'\5\6\0\18\6\2\0&\5\6\5B\3\2\0026\4\3\0009\4\4\0049\4\5\4'\6\a\0B\4\2\2+\5\0\0009\6\b\0\14\0\6\0X\a\b�6\6\t\0'\b\n\0B\6\2\0029\6\v\6\18\b\3\0\18\t\4\0005\n\f\0B\6\4\2\a\3\r\0X\a\1�'\3\14\0006\a\3\0009\a\15\a9\a\16\a\15\0\a\0X\b\b�9\a\17\0\14\0\a\0X\b\1�'\a\18\0\18\b\a\0'\t\19\0&\5\t\bX\a\1�'\5\r\0\18\a\6\0'\b\19\0\18\t\3\0'\n\19\0\18\v\5\0&\a\v\aL\a\2\0\6 \b●\23file_modified_icon\rmodified\abo\funnamed\5\1\0\1\fdefault\2\rget_icon\22nvim-web-devicons\frequire\ticon\b%:e\6%\vexpand\afn\bvim\6:\vconcat\ntable?\0\0\4\1\4\0\n'\0\0\0-\1\0\0006\2\1\0009\2\2\0029\2\3\2B\2\1\0028\1\2\1'\2\0\0&\0\2\0L\0\2\0\4�\tmode\afn\bvim\6 \0\0\3\2\6\0\r5\0\1\0-\1\0\0009\1\0\1B\1\1\2=\1\2\0-\1\1\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1B\1\1\2=\1\3\0L\0\2\0\b�\0�\19get_mode_color\afg\abg\tname\1\0\1\nstyle\tbold\28get_mode_highlight_namec\0\0\3\1\5\0\n5\0\1\0-\1\0\0009\1\0\1B\1\1\2=\1\2\0-\1\0\0009\1\3\1B\1\1\2=\1\4\0L\0\2\0\b�\afg\19get_mode_color\tname\1\0\0\28get_mode_highlight_name<\0\0\3\1\3\0\t-\0\0\0009\0\0\0B\0\1\0027\0\1\0'\0\2\0006\1\1\0'\2\2\0&\0\2\0L\0\2\0\t�\6 \bpos\rposition\0\0\3\2\6\0\r5\0\1\0-\1\0\0009\1\0\1B\1\1\2=\1\2\0-\1\1\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1B\1\1\2=\1\3\0L\0\2\0\b�\0�\19get_mode_color\afg\abg\tname\1\0\1\nstyle\tbold\28get_mode_highlight_name1\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\a�\nError\22diagnostics_exist3\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\a�\fWarning\22diagnostics_exist0\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\a�\tHint\22diagnostics_exist7\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\a�\16Information\22diagnostics_exist�\21\1\0\17\0�\1\0�\0025\0\0\0003\1\1\0003\2\2\0007\2\3\0003\2\4\0007\2\5\0003\2\6\0007\2\a\0003\2\b\0003\3\t\0007\3\n\0003\3\v\0007\3\f\0005\3\14\0009\4\r\0=\4\15\0039\4\16\0=\4\17\0039\4\18\0=\4\19\0039\4\r\0=\4\20\0039\4\16\0=\4\21\0039\4\22\0=\4\23\0039\4\22\0=\4\24\0039\4\25\0=\4\26\0039\4\25\0=\4\27\0039\4\28\0=\4\29\0039\4\30\0=\4\31\0039\4\r\0=\4 \0039\4\16\0=\4!\0039\4\"\0=\4#\0035\4$\0003\5%\0003\6&\0006\a'\0'\t(\0B\a\2\0026\b'\0'\n)\0B\b\2\0026\t'\0'\v*\0B\t\2\0025\n5\0005\v0\0005\f,\0003\r+\0=\r-\f3\r.\0=\r/\f=\f1\v5\f2\0003\r3\0=\r/\f=\f4\v=\v6\n5\v:\0005\f7\0006\r\f\0=\r-\f5\r8\0009\14\16\0=\0149\r=\r/\f=\f;\v5\f<\0005\r=\0009\14\18\0=\0149\r=\r/\f=\f>\v5\f?\0=\f@\v5\fA\0=\5-\f5\rB\0009\14\18\0=\0149\r=\r/\f=\fC\v=\vD\n5\vE\0005\fF\0=\f/\v=\vG\n5\vI\0003\fH\0=\f-\v3\fJ\0=\f/\v=\vK\n5\vL\0005\fM\0009\r\16\0=\r9\f=\f/\v=\vN\n5\vS\0005\fO\0003\rP\0=\rQ\f5\rR\0009\14\22\0=\0149\r=\r/\f=\fT\v5\fU\0003\rV\0=\rQ\f5\rW\0009\14\"\0=\0149\r=\r/\f=\fX\v5\fY\0003\rZ\0=\rQ\f5\r[\0009\14\25\0=\0149\r=\r/\f=\f\\\v5\f]\0003\r^\0=\rQ\f5\r_\0009\14\16\0=\0149\r=\r/\f=\f;\v=\v`\n5\vc\0005\fa\0005\rb\0009\14\"\0=\0149\r=\r/\f=\fd\v=\ve\n5\vh\0005\ff\0005\rg\0009\14\18\0=\0149\r=\r/\f=\fi\v5\fj\0005\rk\0009\14\r\0=\0149\r=\r/\f=\fl\v5\fm\0005\rn\0009\14\28\0=\0149\r=\r/\f=\fo\v5\fp\0005\rq\0009\14\22\0=\0149\r=\r/\f=\fr\v=\vs\n5\vz\0005\fu\0005\rt\0=\rv\f5\rw\0=\rx\f4\r\0\0=\ry\f=\f{\v5\f\0005\r|\0004\14\b\0009\0156\n9\0151\15>\15\1\0149\15D\n9\15;\15>\15\2\0149\15e\n9\15d\15>\15\3\0149\15`\n9\15T\15>\15\4\0149\15`\n9\15X\15>\15\5\0149\15`\n9\15\\\15>\15\6\0149\15`\n9\15;\15>\15\a\14=\14}\r4\14\3\0009\15D\n9\15;\15>\15\1\14=\14~\r=\r1\f5\r�\0004\14\0\0=\14}\r4\14\0\0=\14~\r=\r�\f5\r�\0004\14\t\0009\15s\n9\15l\15>\15\1\0149\15s\n9\15o\15>\15\2\0149\15s\n9\15r\15>\15\3\0149\15D\n9\15C\15>\15\4\0149\15s\n9\15i\15>\15\5\0149\15N\n>\15\6\0149\15G\n>\15\a\0149\15K\n>\15\b\14=\14}\r4\14\3\0009\15D\n9\15C\15>\15\1\14=\14~\r=\r4\f6\r'\0'\15�\0B\r\2\0029\r�\r5\15�\0009\16�\0=\16�\0159\0169\0=\16�\15=\f�\15=\v�\15=\3�\15B\r\2\0012\0\0�K\0\1\0\19vi_mode_colors\15properties\15components\15default_fg\15default_bg\1\0\0\abg\nsetup\vfeline\1\0\0\bmid\1\0\0\1\0\0\rinactive\vactive\1\0\0\19force_inactive\1\0\0\rbufnames\rbuftypes\1\2\0\0\rterminal\14filetypes\1\0\0\1\b\0\0\rNvimTree\tdefx\tdbui\vpacker\rstartify\rfugitive\18fugitiveblame\bgit\vremove\1\0\0\1\0\1\rprovider\21git_diff_removed\vchange\1\0\0\1\0\1\rprovider\21git_diff_changed\badd\1\0\0\1\0\1\rprovider\19git_diff_added\vbranch\1\0\0\1\0\1\nstyle\tbold\1\0\3\ticon\t \rleft_sep\6 \rprovider\15git_branch\blsp\tname\1\0\0\1\0\0\1\0\3\ticon\t \rleft_sep\6 \rprovider\21lsp_client_names\fdiagnos\1\0\0\0\1\0\1\rprovider\20diagnostic_info\thint\1\0\0\0\1\0\1\rprovider\21diagnostic_hints\twarn\1\0\0\0\1\0\1\rprovider\24diagnostic_warnings\berr\1\0\0\1\0\0\fenabled\0\1\0\1\rprovider\22diagnostic_errors\15scroll_bar\1\0\1\nstyle\tbold\1\0\2\rleft_sep\6 \rprovider\15scroll_bar\rposition\0\1\0\1\rleft_sep\6 \0\20line_percentage\1\0\1\nstyle\tbold\1\0\2\rleft_sep\6 \rprovider\20line_percentage\tfile\aos\1\0\1\nstyle\tbold\1\0\1\rleft_sep\6 \ttype\1\0\1\rprovider\14file_type\rencoding\1\0\1\nstyle\tbold\1\0\2\rleft_sep\6 \rprovider\18file_encoding\tinfo\1\0\0\afg\1\0\1\nstyle\tbold\1\0\1\rleft_sep\6 \fvi_mode\1\0\0\nright\0\1\0\2\rleft_sep\6 \rprovider\b▊\tleft\1\0\0\ahl\0\rprovider\1\0\0\0\28feline.providers.cursor\29feline.providers.vi_mode\25feline.providers.lsp\frequire\0\0\1\0\17\6c\fCOMMAND\6t\vINSERT\6n\vNORMAL\6v\vVISUAL\6i\vINSERT\6r\fREPLACE\aic\fUNKNOWN\6s\fUNKNOWN\arm\fUNKNOWN\ace\fUNKNOWN\6R\fREPLACE\acv\vUNKWON\aRv\fUNKNOWN\6S\fUNKNOWN\ano\fUNKNOWN\6V\vV-LINE\6\22\fV-BLOCK\tNONE\vyellow\tTERM\nSHELL\fCOMMAND\fmagenta\vSELECT\vorange\tMORE\nENTER\tcyan\14V-REPLACE\fREPLACE\bred\nBLOCK\aOP\vVISUAL\vviolet\vINSERT\tblue\vNORMAL\1\0\0\ngreen\20get_current_ufn\0\24get_unique_filename\0\0\21reverse_filename\0\19split_filename\0\rget_tail\0\0\1\0\15\rdarkblue\f#81A1C1\vpurple\f#B48EAD\tcyan\f#A3BE8C\tgray\f#616E88\vyellow\f#EBCB8B\tblue\f#5E81AC\rfg_green\f#8FBCBB\bred\f#BF616A\blbg\f#3B4252\fline_bg\tNONE\fmagenta\f#BF616A\afg\f#81A1C1\abg\tNONE\vorange\f#D08770\ngreen\f#8FBCBB\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/feline.nvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\6\1\n5\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0B\2\2\0?\2\0\0=\1\5\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\2\0\0\21--stdin-filepath\1\0\2\nstdin\2\bexe\rprettier\5����\4D\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\2\0\0\18--emit=stdout\1\0\2\nstdin\2\bexe\frustfmt(\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\2\nstdin\2\bexe\15lua-format�\4\1\0\b\0\23\00006\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\2'\4\6\0+\5\2\0B\2\3\0019\2\a\0005\4\b\0005\5\t\0004\6\3\0>\1\1\6=\6\n\0054\6\3\0>\1\1\6=\6\v\0054\6\3\0>\1\1\6=\6\f\0054\6\3\0>\1\1\6=\6\r\0054\6\3\0>\1\1\6=\6\14\0054\6\3\0>\1\1\6=\6\15\0054\6\3\0>\1\1\6=\6\16\0054\6\3\0>\1\1\6=\6\17\0054\6\3\0003\a\18\0>\a\1\6=\6\19\0054\6\3\0003\a\20\0>\a\1\6=\6\21\5=\5\22\4B\2\2\1K\0\1\0\rfiletype\blua\0\trust\0\tyaml\tscss\tjson\bcss\15javascript\15typescript\20typescriptreact\20javascriptreact\1\0\0\1\0\1\flogging\1\nsetup�\1        augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.js,*.ts,*.rs,*.lua,*.jsx,*.tsx,*.md,*.mdx,*.yml,*.json,*.css,*.scss FormatWrite\n        augroup END\n    \14nvim_exec\bapi\bvim\0\14formatter\frequire\0" },
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
    config = { "\27LJ\2\n9\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\t<cr>\18compe#confirm\afn\bvim�\2\1\0\4\1\f\2'6\0\0\0009\0\1\0009\0\2\0B\0\1\2\b\0\0\0X\0\27�6\0\0\0009\0\1\0009\0\3\0B\0\1\0029\0\4\0\b\0\1\0X\0\t�6\0\0\0009\0\1\0009\0\5\0B\0\1\1-\0\0\0009\0\6\0'\2\a\0002\0\17�X\0\15�6\0\0\0009\0\b\0003\2\t\0)\3\20\0B\0\3\1-\0\0\0009\0\6\0'\2\n\0002\0\0�D\0\2\0X\0\4�-\0\0\0009\0\v\0002\0\0�D\0\1\0K\0\1\0D\0\2\0\1�\26check_break_line_char\n<c-n>\0\rdefer_fn\n<c-y>\besc\18compe#confirm\rselected\18complete_info\15pumvisible\afn\bvim\0����\31�\2\1\0\b\0\20\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0006\1\0\0'\3\1\0B\1\2\0026\2\t\0004\3\0\0=\3\n\0026\2\6\0009\2\v\2'\3\r\0=\3\f\0026\2\n\0003\3\15\0=\3\14\2\18\2\0\0'\4\16\0'\5\17\0'\6\18\0005\a\19\0B\2\5\0012\0\0�K\0\1\0\1\0\2\texpr\2\fnoremap\2&v:lua.MUtils.completion_confirm()\t<CR>\6i\0\23completion_confirm\5\27completion_confirm_key\6g\vMUtils\a_G\20nvim_set_keymap\bapi\bvim\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\b\vhsl_fn\2\vrgb_fn\2\rRRGGBBAA\2\nnames\1\vRRGGBB\2\bRGB\2\bcss\2\vcss_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\n�\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vsource\1\0\t\rnvim_lua\2\vbuffer\2\18snippets_nvim\2\ttags\2\nspell\2\tpath\2\rnvim_lsp\2\nvsnip\2\tcalc\2\1\0\v\19max_menu_width\3d\19max_kind_width\3d\19max_abbr_width\3d\21incomplete_delay\3�\3\fenabled\2\ndebug\2\14preselect\venable\15min_length\3\1\17autocomplete\2\18throttle_time\3P\19source_timeout\3�\1\nsetup\ncompe\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n�\4\0\2\6\0\6\0\v9\2\0\0009\2\1\2\15\0\2\0X\3\6�6\2\2\0009\2\3\0029\2\4\2'\4\5\0+\5\1\0B\2\3\1K\0\1\0�\3          hi LspReferenceRead cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceText cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceWrite cterm=bold ctermbg=red guibg=#34495e\n          augroup lsp_document_highlight\n            autocmd! * <buffer>\n            autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n            autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n          augroup END\n        \14nvim_exec\bapi\bvim\23document_highlight\26resolved_capabilities~\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\2\tbind\2\14doc_lines\3\2\14on_attach\18lsp_signature\frequire�\1\0\2\a\0\r\0\0309\2\0\1\15\0\2\0X\3\26�5\2\6\0005\3\1\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\1\6B\4\2\2=\4\5\3=\3\a\0025\3\b\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\2\6B\4\2\2=\4\5\3=\3\t\0026\3\n\0'\5\v\0B\3\2\0029\3\f\3\18\5\0\0\18\6\2\0D\3\3\0K\0\1\0\rin_range\20lsp-status/util\frequire\bend\1\0\1\14character\3\0\nstart\1\0\0\tline\14byte2line\afn\bvim\1\0\1\14character\3\0\15valueRange�\1\1\1\5\1\a\0\r-\1\0\0009\1\0\0015\3\1\0006\4\2\0=\4\3\0033\4\4\0=\4\5\3B\1\2\1-\1\0\0009\1\6\1\18\3\0\0B\1\2\1K\0\1\0\0�\14on_attach\18select_symbol\0\16kind_labels\17kind_symbols\1\0\1\21current_function\1\vconfig�\6\0\0\3\0\r\0-6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\0016\0\0\0009\0\1\0'\2\n\0B\0\2\0016\0\0\0009\0\1\0'\2\v\0B\0\2\0016\0\0\0009\0\1\0'\2\f\0B\0\2\1K\0\1\0Tcommand! -nargs=0 LspVirtualTextToggle lua require(\"lsp/virtual_text\").toggle();nnoremap <silent> g] :Lspsaga diagnostic_jump_next<CR>>nnoremap <silent> g[ :Lspsaga show_cursor_diagnostics<CR>1nnoremap <silent> gh :Lspsaga lsp_finder<CR>5nnoremap <silent> gs :Lspsaga signature_help<CR>2nnoremap <silent> ca :Lspsaga code_action<CR>/nnoremap <silent> K :Lspsaga hover_doc<CR>;nnoremap <silent> rn <cmd>lua vim.lsp.buf.rename()<CR>Cnnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>?nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>?nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>\bcmd\bvim5\0\2\6\3\0\0\n-\2\0\0\18\4\0\0\18\5\1\0B\2\3\1-\2\1\0\18\4\0\0B\2\2\1-\2\2\0B\2\1\1K\0\1\0\4�\6�\a��\14\1\0\22\0>\0w6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0025\4\6\0=\4\5\0016\4\a\0009\4\b\0049\4\t\4'\6\n\0005\a\v\0B\4\3\0016\4\a\0009\4\b\0049\4\t\4'\6\f\0005\a\r\0B\4\3\0016\4\a\0009\4\b\0049\4\t\4'\6\14\0005\a\15\0B\4\3\0016\4\a\0009\4\b\0049\4\t\4'\6\16\0005\a\17\0B\4\3\0019\4\18\0B\4\1\0019\4\19\0035\6\20\0B\4\2\0016\4\a\0009\4\21\0049\4\22\0046\5\a\0009\5\21\0059\5\24\0056\a\a\0009\a\21\a9\a\25\a9\a\26\a5\b\27\0B\5\3\2=\5\23\0043\4\28\0003\5\29\0003\6\30\0003\a\31\0003\b \0005\t$\0005\n\"\0005\v!\0=\v#\n=\n%\t5\n'\0005\v&\0=\v#\n=\n(\t5\n*\0005\v)\0=\v#\n=\n+\t4\n\0\0=\n,\t4\n\0\0=\n-\t4\n\0\0=\n.\t5\n4\0005\v2\0005\f0\0005\r/\0=\r1\f=\f3\v=\v5\n6\v6\0\18\r\t\0B\v\2\4H\14\24�6\0167\0\18\18\15\0B\16\2\2\a\0168\0X\16\3�\18\16\15\0B\16\1\2\18\15\16\0=\b9\0156\16\a\0009\16;\16'\18<\0009\19:\15\14\0\19\0X\20\1�4\19\0\0009\20:\0\18\21\n\0B\16\5\2=\16:\0158\16\14\0029\16=\16\18\18\15\0B\16\2\1F\14\3\3R\14�2\0\0�K\0\1\0\nsetup\tkeep\20tbl_deep_extend\17capabilities\14on_attach\rfunction\ttype\npairs\17textDocument\1\0\0\15completion\1\0\0\19completionItem\1\0\0\1\0\1\19snippetSupport\2\nvimls\rtsserver\18rust_analyzer\vjsonls\1\0\0\1\3\0\0\24json-languageserver\f--stdio\thtml\1\0\0\1\3\0\0\24html-languageserver\f--stdio\ncssls\1\0\0\bcmd\1\0\0\1\3\0\0\23css-languageserver\f--stdio\0\0\0\0\0\1\0\4\nsigns\2\17virtual_text\1\14underline\2\21update_in_insert\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\blsp\1\0\1\29use_saga_diagnostic_sign\1\18init_lsp_saga\22register_progress\1\0\3\ttext\b\vtexthl\"LspDiagnosticsSignInformation\nnumhl\14WhiteSign\"LspDiagnosticsSignInformation\1\0\3\ttext\b\vtexthl\27LspDiagnosticsSignHint\nnumhl\rBlueSign\27LspDiagnosticsSignHint\1\0\3\ttext\b\vtexthl\30LspDiagnosticsSignWarning\nnumhl\15YellowSign\30LspDiagnosticsSignWarning\1\0\3\ttext\b\vtexthl\28LspDiagnosticsSignError\nnumhl\fRedSign\28LspDiagnosticsSignError\16sign_define\afn\bvim\1\26\0\0\18   (Text) \19   (Method)\21   (Function)\24   (Constructor)\18 ﴲ  (Field)\21[] (Variable)\18   (Class)\22 ﰮ  (Interface)\19   (Module)\20 襁 (Property)\17   (Unit)\18   (Value)\16 練 (Enum)\20   (Keyword)\20   (Snippet)\18   (Color)\17   (File)\22   (Reference)\19   (Folder)\23   (EnumMember)\21 ﲀ  (Constant)\19 ﳤ  (Struct)\18   (Event)\21   (Operator)\26   (TypeParameter)\23CompletionItemKind\flspsaga\14lspconfig\21vim.lsp.protocol\15lsp-status\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspfuzzy"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\15fzf_action\1\0\3\vctrl-x\nsplit\vctrl-t\ftabedit\vctrl-v\vvsplit\16fzf_preview\1\2\0\0\18right:+{2}-/2\1\0\3\rfzf_trim\2\17fzf_modifier\t:~:.\fmethods\ball\nsetup\rlspfuzzy\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-lspfuzzy"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\3\0\0\5\0\17\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0004\4\0\0=\4\15\3=\3\16\2B\0\2\1K\0\1\0\15playground\fdisable\1\0\3\20persist_queries\1\15updatetime\3\25\venable\2\26context_commentstring\1\0\1\venable\2\14highlight\1\0\2\venable\2\21use_languagetree\2\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\21ensure_installed\1\0\0\1\f\0\0\15javascript\15typescript\tjson\fgraphql\btsx\thtml\njsdoc\trust\bcss\tbash\blua\nsetup\28nvim-treesitter.configs\frequire\0" },
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
    config = { "\27LJ\2\n�\5\0\0\5\0\30\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\28\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\29\2B\0\2\1K\0\1\0\roverride\1\0\0\tlock\1\0\3\ncolor\f#5c6370\ticon\b\tname\tlock\bmp4\1\0\3\ncolor\f#5c6370\ticon\b\tname\bmp4\bmp3\1\0\3\ncolor\f#566370\ticon\b\tname\bmp3\btxt\1\0\3\ncolor\f#61afef\ticon\b\tname\ttext\bmap\1\0\3\ncolor\f#566370\ticon\b\tname\btxt\taxml\1\0\3\ncolor\f#f76c7c\ticon\b\tname\taxml\ttxml\1\0\3\ncolor\f#f76c7c\ticon\b\tname\ttxml\bxml\1\0\3\ncolor\f#f76c7c\ticon\b\tname\bxml\tacss\1\0\3\ncolor\f#61afef\ticon\b\tname\bcss\ttcss\1\0\3\ncolor\f#61afef\ticon\b\tname\bcss\bcss\1\0\3\ncolor\f#61afef\ticon\b\tname\bcss\thtml\1\0\0\1\0\3\ncolor\f#f76c7c\ticon\b\tname\thtml\nsetup\22nvim-web-devicons\frequire\0" },
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
    config = { "\27LJ\2\n�\1\0\0\4\0\n\0\0266\0\0\0009\0\1\0006\1\0\0009\1\1\1'\3\2\0B\1\2\0016\1\0\0009\1\1\1'\3\3\0B\1\2\0016\1\0\0009\1\4\1'\2\6\0=\2\5\0016\1\0\0009\1\4\1)\2\1\0=\2\a\0016\1\0\0009\1\4\1)\2\1\0=\2\b\1\18\1\0\0'\3\t\0B\1\2\1K\0\1\0\24colorscheme sonokai#sonokai_disable_italic_comment\26sonokai_enable_italic\14andromeda\18sonokai_style\6g\22set termguicolors\14syntax on\bcmd\bvim\0" },
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
  ["vim-bufkill"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-bufkill"
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

time([[Defining packer_plugins]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n�\5\0\0\5\0\30\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\28\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\29\2B\0\2\1K\0\1\0\roverride\1\0\0\tlock\1\0\3\ncolor\f#5c6370\ticon\b\tname\tlock\bmp4\1\0\3\ncolor\f#5c6370\ticon\b\tname\bmp4\bmp3\1\0\3\ncolor\f#566370\ticon\b\tname\bmp3\btxt\1\0\3\ncolor\f#61afef\ticon\b\tname\ttext\bmap\1\0\3\ncolor\f#566370\ticon\b\tname\btxt\taxml\1\0\3\ncolor\f#f76c7c\ticon\b\tname\taxml\ttxml\1\0\3\ncolor\f#f76c7c\ticon\b\tname\ttxml\bxml\1\0\3\ncolor\f#f76c7c\ticon\b\tname\bxml\tacss\1\0\3\ncolor\f#61afef\ticon\b\tname\bcss\ttcss\1\0\3\ncolor\f#61afef\ticon\b\tname\bcss\bcss\1\0\3\ncolor\f#61afef\ticon\b\tname\bcss\thtml\1\0\0\1\0\3\ncolor\f#f76c7c\ticon\b\tname\thtml\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: sonokai
time([[Config for sonokai]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\n\0\0266\0\0\0009\0\1\0006\1\0\0009\1\1\1'\3\2\0B\1\2\0016\1\0\0009\1\1\1'\3\3\0B\1\2\0016\1\0\0009\1\4\1'\2\6\0=\2\5\0016\1\0\0009\1\4\1)\2\1\0=\2\a\0016\1\0\0009\1\4\1)\2\1\0=\2\b\1\18\1\0\0'\3\t\0B\1\2\1K\0\1\0\24colorscheme sonokai#sonokai_disable_italic_comment\26sonokai_enable_italic\14andromeda\18sonokai_style\6g\22set termguicolors\14syntax on\bcmd\bvim\0", "config", "sonokai")
time([[Config for sonokai]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
try_loadstring("\27LJ\2\n�\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vsource\1\0\t\rnvim_lua\2\vbuffer\2\18snippets_nvim\2\ttags\2\nspell\2\tpath\2\rnvim_lsp\2\nvsnip\2\tcalc\2\1\0\v\19max_menu_width\3d\19max_kind_width\3d\19max_abbr_width\3d\21incomplete_delay\3�\3\fenabled\2\ndebug\2\14preselect\venable\15min_length\3\1\17autocomplete\2\18throttle_time\3P\19source_timeout\3�\1\nsetup\ncompe\frequire\0", "config", "nvim-compe")
time([[Config for nvim-compe]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n�\4\0\2\6\0\6\0\v9\2\0\0009\2\1\2\15\0\2\0X\3\6�6\2\2\0009\2\3\0029\2\4\2'\4\5\0+\5\1\0B\2\3\1K\0\1\0�\3          hi LspReferenceRead cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceText cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceWrite cterm=bold ctermbg=red guibg=#34495e\n          augroup lsp_document_highlight\n            autocmd! * <buffer>\n            autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n            autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n          augroup END\n        \14nvim_exec\bapi\bvim\23document_highlight\26resolved_capabilities~\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\2\tbind\2\14doc_lines\3\2\14on_attach\18lsp_signature\frequire�\1\0\2\a\0\r\0\0309\2\0\1\15\0\2\0X\3\26�5\2\6\0005\3\1\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\1\6B\4\2\2=\4\5\3=\3\a\0025\3\b\0006\4\2\0009\4\3\0049\4\4\0049\6\0\1:\6\2\6B\4\2\2=\4\5\3=\3\t\0026\3\n\0'\5\v\0B\3\2\0029\3\f\3\18\5\0\0\18\6\2\0D\3\3\0K\0\1\0\rin_range\20lsp-status/util\frequire\bend\1\0\1\14character\3\0\nstart\1\0\0\tline\14byte2line\afn\bvim\1\0\1\14character\3\0\15valueRange�\1\1\1\5\1\a\0\r-\1\0\0009\1\0\0015\3\1\0006\4\2\0=\4\3\0033\4\4\0=\4\5\3B\1\2\1-\1\0\0009\1\6\1\18\3\0\0B\1\2\1K\0\1\0\0�\14on_attach\18select_symbol\0\16kind_labels\17kind_symbols\1\0\1\21current_function\1\vconfig�\6\0\0\3\0\r\0-6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\0016\0\0\0009\0\1\0'\2\n\0B\0\2\0016\0\0\0009\0\1\0'\2\v\0B\0\2\0016\0\0\0009\0\1\0'\2\f\0B\0\2\1K\0\1\0Tcommand! -nargs=0 LspVirtualTextToggle lua require(\"lsp/virtual_text\").toggle();nnoremap <silent> g] :Lspsaga diagnostic_jump_next<CR>>nnoremap <silent> g[ :Lspsaga show_cursor_diagnostics<CR>1nnoremap <silent> gh :Lspsaga lsp_finder<CR>5nnoremap <silent> gs :Lspsaga signature_help<CR>2nnoremap <silent> ca :Lspsaga code_action<CR>/nnoremap <silent> K :Lspsaga hover_doc<CR>;nnoremap <silent> rn <cmd>lua vim.lsp.buf.rename()<CR>Cnnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>?nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>?nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>\bcmd\bvim5\0\2\6\3\0\0\n-\2\0\0\18\4\0\0\18\5\1\0B\2\3\1-\2\1\0\18\4\0\0B\2\2\1-\2\2\0B\2\1\1K\0\1\0\4�\6�\a��\14\1\0\22\0>\0w6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0025\4\6\0=\4\5\0016\4\a\0009\4\b\0049\4\t\4'\6\n\0005\a\v\0B\4\3\0016\4\a\0009\4\b\0049\4\t\4'\6\f\0005\a\r\0B\4\3\0016\4\a\0009\4\b\0049\4\t\4'\6\14\0005\a\15\0B\4\3\0016\4\a\0009\4\b\0049\4\t\4'\6\16\0005\a\17\0B\4\3\0019\4\18\0B\4\1\0019\4\19\0035\6\20\0B\4\2\0016\4\a\0009\4\21\0049\4\22\0046\5\a\0009\5\21\0059\5\24\0056\a\a\0009\a\21\a9\a\25\a9\a\26\a5\b\27\0B\5\3\2=\5\23\0043\4\28\0003\5\29\0003\6\30\0003\a\31\0003\b \0005\t$\0005\n\"\0005\v!\0=\v#\n=\n%\t5\n'\0005\v&\0=\v#\n=\n(\t5\n*\0005\v)\0=\v#\n=\n+\t4\n\0\0=\n,\t4\n\0\0=\n-\t4\n\0\0=\n.\t5\n4\0005\v2\0005\f0\0005\r/\0=\r1\f=\f3\v=\v5\n6\v6\0\18\r\t\0B\v\2\4H\14\24�6\0167\0\18\18\15\0B\16\2\2\a\0168\0X\16\3�\18\16\15\0B\16\1\2\18\15\16\0=\b9\0156\16\a\0009\16;\16'\18<\0009\19:\15\14\0\19\0X\20\1�4\19\0\0009\20:\0\18\21\n\0B\16\5\2=\16:\0158\16\14\0029\16=\16\18\18\15\0B\16\2\1F\14\3\3R\14�2\0\0�K\0\1\0\nsetup\tkeep\20tbl_deep_extend\17capabilities\14on_attach\rfunction\ttype\npairs\17textDocument\1\0\0\15completion\1\0\0\19completionItem\1\0\0\1\0\1\19snippetSupport\2\nvimls\rtsserver\18rust_analyzer\vjsonls\1\0\0\1\3\0\0\24json-languageserver\f--stdio\thtml\1\0\0\1\3\0\0\24html-languageserver\f--stdio\ncssls\1\0\0\bcmd\1\0\0\1\3\0\0\23css-languageserver\f--stdio\0\0\0\0\0\1\0\4\nsigns\2\17virtual_text\1\14underline\2\21update_in_insert\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\blsp\1\0\1\29use_saga_diagnostic_sign\1\18init_lsp_saga\22register_progress\1\0\3\ttext\b\vtexthl\"LspDiagnosticsSignInformation\nnumhl\14WhiteSign\"LspDiagnosticsSignInformation\1\0\3\ttext\b\vtexthl\27LspDiagnosticsSignHint\nnumhl\rBlueSign\27LspDiagnosticsSignHint\1\0\3\ttext\b\vtexthl\30LspDiagnosticsSignWarning\nnumhl\15YellowSign\30LspDiagnosticsSignWarning\1\0\3\ttext\b\vtexthl\28LspDiagnosticsSignError\nnumhl\fRedSign\28LspDiagnosticsSignError\16sign_define\afn\bvim\1\26\0\0\18   (Text) \19   (Method)\21   (Function)\24   (Constructor)\18 ﴲ  (Field)\21[] (Variable)\18   (Class)\22 ﰮ  (Interface)\19   (Module)\20 襁 (Property)\17   (Unit)\18   (Value)\16 練 (Enum)\20   (Keyword)\20   (Snippet)\18   (Color)\17   (File)\22   (Reference)\19   (Folder)\23   (EnumMember)\21 ﲀ  (Constant)\19 ﳤ  (Struct)\18   (Event)\21   (Operator)\26   (TypeParameter)\23CompletionItemKind\flspsaga\14lspconfig\21vim.lsp.protocol\15lsp-status\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: vim-vsnip
time([[Config for vim-vsnip]], true)
try_loadstring("\27LJ\2\nK\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\28~/.config/nvim/snippets\22vsnip_snippet_dir\6g\bvim\0", "config", "vim-vsnip")
time([[Config for vim-vsnip]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\t<cr>\18compe#confirm\afn\bvim�\2\1\0\4\1\f\2'6\0\0\0009\0\1\0009\0\2\0B\0\1\2\b\0\0\0X\0\27�6\0\0\0009\0\1\0009\0\3\0B\0\1\0029\0\4\0\b\0\1\0X\0\t�6\0\0\0009\0\1\0009\0\5\0B\0\1\1-\0\0\0009\0\6\0'\2\a\0002\0\17�X\0\15�6\0\0\0009\0\b\0003\2\t\0)\3\20\0B\0\3\1-\0\0\0009\0\6\0'\2\n\0002\0\0�D\0\2\0X\0\4�-\0\0\0009\0\v\0002\0\0�D\0\1\0K\0\1\0D\0\2\0\1�\26check_break_line_char\n<c-n>\0\rdefer_fn\n<c-y>\besc\18compe#confirm\rselected\18complete_info\15pumvisible\afn\bvim\0����\31�\2\1\0\b\0\20\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0006\1\0\0'\3\1\0B\1\2\0026\2\t\0004\3\0\0=\3\n\0026\2\6\0009\2\v\2'\3\r\0=\3\f\0026\2\n\0003\3\15\0=\3\14\2\18\2\0\0'\4\16\0'\5\17\0'\6\18\0005\a\19\0B\2\5\0012\0\0�K\0\1\0\1\0\2\texpr\2\fnoremap\2&v:lua.MUtils.completion_confirm()\t<CR>\6i\0\23completion_confirm\5\27completion_confirm_key\6g\vMUtils\a_G\20nvim_set_keymap\bapi\bvim\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-lspfuzzy
time([[Config for nvim-lspfuzzy]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\15fzf_action\1\0\3\vctrl-x\nsplit\vctrl-t\ftabedit\vctrl-v\vvsplit\16fzf_preview\1\2\0\0\18right:+{2}-/2\1\0\3\rfzf_trim\2\17fzf_modifier\t:~:.\fmethods\ball\nsetup\rlspfuzzy\frequire\0", "config", "nvim-lspfuzzy")
time([[Config for nvim-lspfuzzy]], false)
-- Config for: feline.nvim
time([[Config for feline.nvim]], true)
try_loadstring("\27LJ\2\nX\0\1\b\0\2\2\17)\1\1\0006\2\0\0009\2\1\2\21\4\0\0\25\4\0\4B\2\2\2)\3\1\0M\1\b�\21\5\0\0!\5\4\5\22\5\1\0058\6\5\0008\a\4\0<\a\5\0<\6\4\0O\1�K\0\1\0\nfloor\tmath\4\0025\0\1\5\0\4\0\0066\1\0\0009\1\1\0019\1\2\1\18\3\0\0'\4\3\0D\1\3\0\a:t\16fnamemodify\afn\bvim�\1\0\1\n\0\6\0\0224\1\0\0006\2\0\0009\2\1\2\18\4\0\0'\5\2\0B\2\3\4X\5\5�6\6\3\0009\6\4\6\18\b\1\0\18\t\5\0B\6\3\1E\5\3\2R\5�6\2\3\0009\2\4\2\18\4\1\0006\5\5\0\18\a\0\0B\5\2\0A\2\1\1L\1\2\0\rget_tail\vinsert\ntable\v[^/]+/\vgmatch\vstring4\0\1\5\1\1\0\a6\1\0\0\18\3\0\0B\1\2\2-\2\0\0\18\4\1\0B\2\2\1L\1\2\0\1�\19split_filename7\0\2\b\0\0\0\f)\2\1\0\21\3\0\0)\4\1\0M\2\6�8\6\5\0008\a\5\1\4\6\a\0X\6\1�L\5\2\0O\2�)\2\1\0L\2\2\0\27\0\1\5\2\0\0\4-\1\0\0-\3\1\0\18\4\0\0D\1\3\0\0\0\4��\1\1\2\14\1\6\0\"'\2\0\0006\3\1\0009\3\2\0036\5\3\0\18\6\1\0B\3\3\0026\4\3\0\18\6\0\0B\4\2\0026\5\1\0009\5\2\0053\a\4\0\18\b\3\0B\5\3\2)\6\0\0006\a\5\0\18\t\5\0B\a\2\4X\n\3�\1\6\v\0X\f\1�\18\6\v\0E\n\3\3R\n�\18\a\6\0)\b\1\0)\t��M\a\4�\18\v\2\0008\f\n\4&\2\f\vO\a�2\0\0�L\2\2\0\2�\vipairs\0\21reverse_filename\ftbl_map\bvim\5+\0\1\2\0\1\1\a9\1\0\0\b\1\0\0X\1\2�+\1\1\0X\2\1�+\1\2\0L\1\2\0\vlisted\2\20\0\1\2\0\1\0\0029\1\0\0L\1\2\0\tname�\1\1\0\b\0\n\0\0246\0\0\0009\0\1\0009\0\2\0B\0\1\0026\1\0\0009\1\3\0013\3\4\0\18\4\0\0B\1\3\0026\2\0\0009\2\5\0023\4\6\0\18\5\1\0B\2\3\0026\3\0\0009\3\1\0039\3\a\3'\5\b\0B\3\2\0026\4\t\0\18\6\3\0\18\a\2\0002\0\0�D\4\3\0\24get_unique_filename\6%\vexpand\0\ftbl_map\0\15tbl_filter\15getbufinfo\afn\bvim�\1\0\0\4\0\t\0\0206\0\0\0009\0\1\0009\0\2\0\18\2\0\0009\0\3\0B\0\2\2+\1\0\0\a\0\4\0X\2\2�'\1\5\0X\2\5�\a\0\6\0X\2\2�'\1\a\0X\2\1�'\1\b\0\18\2\1\0\18\3\0\0&\2\3\2L\2\2\0\t \t \bMAC\t \tUNIX\nupper\15fileformat\abo\bvim�\2\0\2\f\0\20\00056\2\0\0009\2\1\2\18\4\1\0'\5\2\0B\2\3\0026\3\3\0009\3\4\0039\3\5\3'\5\6\0\18\6\2\0&\5\6\5B\3\2\0026\4\3\0009\4\4\0049\4\5\4'\6\a\0B\4\2\2+\5\0\0009\6\b\0\14\0\6\0X\a\b�6\6\t\0'\b\n\0B\6\2\0029\6\v\6\18\b\3\0\18\t\4\0005\n\f\0B\6\4\2\a\3\r\0X\a\1�'\3\14\0006\a\3\0009\a\15\a9\a\16\a\15\0\a\0X\b\b�9\a\17\0\14\0\a\0X\b\1�'\a\18\0\18\b\a\0'\t\19\0&\5\t\bX\a\1�'\5\r\0\18\a\6\0'\b\19\0\18\t\3\0'\n\19\0\18\v\5\0&\a\v\aL\a\2\0\6 \b●\23file_modified_icon\rmodified\abo\funnamed\5\1\0\1\fdefault\2\rget_icon\22nvim-web-devicons\frequire\ticon\b%:e\6%\vexpand\afn\bvim\6:\vconcat\ntable?\0\0\4\1\4\0\n'\0\0\0-\1\0\0006\2\1\0009\2\2\0029\2\3\2B\2\1\0028\1\2\1'\2\0\0&\0\2\0L\0\2\0\4�\tmode\afn\bvim\6 \0\0\3\2\6\0\r5\0\1\0-\1\0\0009\1\0\1B\1\1\2=\1\2\0-\1\1\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1B\1\1\2=\1\3\0L\0\2\0\b�\0�\19get_mode_color\afg\abg\tname\1\0\1\nstyle\tbold\28get_mode_highlight_namec\0\0\3\1\5\0\n5\0\1\0-\1\0\0009\1\0\1B\1\1\2=\1\2\0-\1\0\0009\1\3\1B\1\1\2=\1\4\0L\0\2\0\b�\afg\19get_mode_color\tname\1\0\0\28get_mode_highlight_name<\0\0\3\1\3\0\t-\0\0\0009\0\0\0B\0\1\0027\0\1\0'\0\2\0006\1\1\0'\2\2\0&\0\2\0L\0\2\0\t�\6 \bpos\rposition\0\0\3\2\6\0\r5\0\1\0-\1\0\0009\1\0\1B\1\1\2=\1\2\0-\1\1\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1B\1\1\2=\1\3\0L\0\2\0\b�\0�\19get_mode_color\afg\abg\tname\1\0\1\nstyle\tbold\28get_mode_highlight_name1\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\a�\nError\22diagnostics_exist3\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\a�\fWarning\22diagnostics_exist0\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\a�\tHint\22diagnostics_exist7\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\a�\16Information\22diagnostics_exist�\21\1\0\17\0�\1\0�\0025\0\0\0003\1\1\0003\2\2\0007\2\3\0003\2\4\0007\2\5\0003\2\6\0007\2\a\0003\2\b\0003\3\t\0007\3\n\0003\3\v\0007\3\f\0005\3\14\0009\4\r\0=\4\15\0039\4\16\0=\4\17\0039\4\18\0=\4\19\0039\4\r\0=\4\20\0039\4\16\0=\4\21\0039\4\22\0=\4\23\0039\4\22\0=\4\24\0039\4\25\0=\4\26\0039\4\25\0=\4\27\0039\4\28\0=\4\29\0039\4\30\0=\4\31\0039\4\r\0=\4 \0039\4\16\0=\4!\0039\4\"\0=\4#\0035\4$\0003\5%\0003\6&\0006\a'\0'\t(\0B\a\2\0026\b'\0'\n)\0B\b\2\0026\t'\0'\v*\0B\t\2\0025\n5\0005\v0\0005\f,\0003\r+\0=\r-\f3\r.\0=\r/\f=\f1\v5\f2\0003\r3\0=\r/\f=\f4\v=\v6\n5\v:\0005\f7\0006\r\f\0=\r-\f5\r8\0009\14\16\0=\0149\r=\r/\f=\f;\v5\f<\0005\r=\0009\14\18\0=\0149\r=\r/\f=\f>\v5\f?\0=\f@\v5\fA\0=\5-\f5\rB\0009\14\18\0=\0149\r=\r/\f=\fC\v=\vD\n5\vE\0005\fF\0=\f/\v=\vG\n5\vI\0003\fH\0=\f-\v3\fJ\0=\f/\v=\vK\n5\vL\0005\fM\0009\r\16\0=\r9\f=\f/\v=\vN\n5\vS\0005\fO\0003\rP\0=\rQ\f5\rR\0009\14\22\0=\0149\r=\r/\f=\fT\v5\fU\0003\rV\0=\rQ\f5\rW\0009\14\"\0=\0149\r=\r/\f=\fX\v5\fY\0003\rZ\0=\rQ\f5\r[\0009\14\25\0=\0149\r=\r/\f=\f\\\v5\f]\0003\r^\0=\rQ\f5\r_\0009\14\16\0=\0149\r=\r/\f=\f;\v=\v`\n5\vc\0005\fa\0005\rb\0009\14\"\0=\0149\r=\r/\f=\fd\v=\ve\n5\vh\0005\ff\0005\rg\0009\14\18\0=\0149\r=\r/\f=\fi\v5\fj\0005\rk\0009\14\r\0=\0149\r=\r/\f=\fl\v5\fm\0005\rn\0009\14\28\0=\0149\r=\r/\f=\fo\v5\fp\0005\rq\0009\14\22\0=\0149\r=\r/\f=\fr\v=\vs\n5\vz\0005\fu\0005\rt\0=\rv\f5\rw\0=\rx\f4\r\0\0=\ry\f=\f{\v5\f\0005\r|\0004\14\b\0009\0156\n9\0151\15>\15\1\0149\15D\n9\15;\15>\15\2\0149\15e\n9\15d\15>\15\3\0149\15`\n9\15T\15>\15\4\0149\15`\n9\15X\15>\15\5\0149\15`\n9\15\\\15>\15\6\0149\15`\n9\15;\15>\15\a\14=\14}\r4\14\3\0009\15D\n9\15;\15>\15\1\14=\14~\r=\r1\f5\r�\0004\14\0\0=\14}\r4\14\0\0=\14~\r=\r�\f5\r�\0004\14\t\0009\15s\n9\15l\15>\15\1\0149\15s\n9\15o\15>\15\2\0149\15s\n9\15r\15>\15\3\0149\15D\n9\15C\15>\15\4\0149\15s\n9\15i\15>\15\5\0149\15N\n>\15\6\0149\15G\n>\15\a\0149\15K\n>\15\b\14=\14}\r4\14\3\0009\15D\n9\15C\15>\15\1\14=\14~\r=\r4\f6\r'\0'\15�\0B\r\2\0029\r�\r5\15�\0009\16�\0=\16�\0159\0169\0=\16�\15=\f�\15=\v�\15=\3�\15B\r\2\0012\0\0�K\0\1\0\19vi_mode_colors\15properties\15components\15default_fg\15default_bg\1\0\0\abg\nsetup\vfeline\1\0\0\bmid\1\0\0\1\0\0\rinactive\vactive\1\0\0\19force_inactive\1\0\0\rbufnames\rbuftypes\1\2\0\0\rterminal\14filetypes\1\0\0\1\b\0\0\rNvimTree\tdefx\tdbui\vpacker\rstartify\rfugitive\18fugitiveblame\bgit\vremove\1\0\0\1\0\1\rprovider\21git_diff_removed\vchange\1\0\0\1\0\1\rprovider\21git_diff_changed\badd\1\0\0\1\0\1\rprovider\19git_diff_added\vbranch\1\0\0\1\0\1\nstyle\tbold\1\0\3\ticon\t \rleft_sep\6 \rprovider\15git_branch\blsp\tname\1\0\0\1\0\0\1\0\3\ticon\t \rleft_sep\6 \rprovider\21lsp_client_names\fdiagnos\1\0\0\0\1\0\1\rprovider\20diagnostic_info\thint\1\0\0\0\1\0\1\rprovider\21diagnostic_hints\twarn\1\0\0\0\1\0\1\rprovider\24diagnostic_warnings\berr\1\0\0\1\0\0\fenabled\0\1\0\1\rprovider\22diagnostic_errors\15scroll_bar\1\0\1\nstyle\tbold\1\0\2\rleft_sep\6 \rprovider\15scroll_bar\rposition\0\1\0\1\rleft_sep\6 \0\20line_percentage\1\0\1\nstyle\tbold\1\0\2\rleft_sep\6 \rprovider\20line_percentage\tfile\aos\1\0\1\nstyle\tbold\1\0\1\rleft_sep\6 \ttype\1\0\1\rprovider\14file_type\rencoding\1\0\1\nstyle\tbold\1\0\2\rleft_sep\6 \rprovider\18file_encoding\tinfo\1\0\0\afg\1\0\1\nstyle\tbold\1\0\1\rleft_sep\6 \fvi_mode\1\0\0\nright\0\1\0\2\rleft_sep\6 \rprovider\b▊\tleft\1\0\0\ahl\0\rprovider\1\0\0\0\28feline.providers.cursor\29feline.providers.vi_mode\25feline.providers.lsp\frequire\0\0\1\0\17\6c\fCOMMAND\6t\vINSERT\6n\vNORMAL\6v\vVISUAL\6i\vINSERT\6r\fREPLACE\aic\fUNKNOWN\6s\fUNKNOWN\arm\fUNKNOWN\ace\fUNKNOWN\6R\fREPLACE\acv\vUNKWON\aRv\fUNKNOWN\6S\fUNKNOWN\ano\fUNKNOWN\6V\vV-LINE\6\22\fV-BLOCK\tNONE\vyellow\tTERM\nSHELL\fCOMMAND\fmagenta\vSELECT\vorange\tMORE\nENTER\tcyan\14V-REPLACE\fREPLACE\bred\nBLOCK\aOP\vVISUAL\vviolet\vINSERT\tblue\vNORMAL\1\0\0\ngreen\20get_current_ufn\0\24get_unique_filename\0\0\21reverse_filename\0\19split_filename\0\rget_tail\0\0\1\0\15\rdarkblue\f#81A1C1\vpurple\f#B48EAD\tcyan\f#A3BE8C\tgray\f#616E88\vyellow\f#EBCB8B\tblue\f#5E81AC\rfg_green\f#8FBCBB\bred\f#BF616A\blbg\f#3B4252\fline_bg\tNONE\fmagenta\f#BF616A\afg\f#81A1C1\abg\tNONE\vorange\f#D08770\ngreen\f#8FBCBB\0", "config", "feline.nvim")
time([[Config for feline.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\b\vhsl_fn\2\vrgb_fn\2\rRRGGBBAA\2\nnames\1\vRRGGBB\2\bRGB\2\bcss\2\vcss_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\3\0\0\5\0\17\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0004\4\0\0=\4\15\3=\3\16\2B\0\2\1K\0\1\0\15playground\fdisable\1\0\3\20persist_queries\1\15updatetime\3\25\venable\2\26context_commentstring\1\0\1\venable\2\14highlight\1\0\2\venable\2\21use_languagetree\2\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\21ensure_installed\1\0\0\1\f\0\0\15javascript\15typescript\tjson\fgraphql\btsx\thtml\njsdoc\trust\bcss\tbash\blua\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\6\1\n5\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0B\2\2\0?\2\0\0=\1\5\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\2\0\0\21--stdin-filepath\1\0\2\nstdin\2\bexe\rprettier\5����\4D\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\2\0\0\18--emit=stdout\1\0\2\nstdin\2\bexe\frustfmt(\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\2\nstdin\2\bexe\15lua-format�\4\1\0\b\0\23\00006\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\2'\4\6\0+\5\2\0B\2\3\0019\2\a\0005\4\b\0005\5\t\0004\6\3\0>\1\1\6=\6\n\0054\6\3\0>\1\1\6=\6\v\0054\6\3\0>\1\1\6=\6\f\0054\6\3\0>\1\1\6=\6\r\0054\6\3\0>\1\1\6=\6\14\0054\6\3\0>\1\1\6=\6\15\0054\6\3\0>\1\1\6=\6\16\0054\6\3\0>\1\1\6=\6\17\0054\6\3\0003\a\18\0>\a\1\6=\6\19\0054\6\3\0003\a\20\0>\a\1\6=\6\21\5=\5\22\4B\2\2\1K\0\1\0\rfiletype\blua\0\trust\0\tyaml\tscss\tjson\bcss\15javascript\15typescript\20typescriptreact\20javascriptreact\1\0\0\1\0\1\flogging\1\nsetup�\1        augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.js,*.ts,*.rs,*.lua,*.jsx,*.tsx,*.md,*.mdx,*.yml,*.json,*.css,*.scss FormatWrite\n        augroup END\n    \14nvim_exec\bapi\bvim\0\14formatter\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end