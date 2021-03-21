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
local package_path_str = "/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["base16-vim"] = {
    config = { "\27LJ\2\n�\2\0\0\4\0\b\0\0196\0\0\0009\0\1\0006\1\0\0009\1\2\1+\2\2\0=\2\3\1\18\1\0\0'\3\4\0B\1\2\1\18\1\0\0'\3\5\0B\1\2\1\18\1\0\0'\3\6\0B\1\2\1\18\1\0\0'\3\a\0B\1\2\1K\0\1\0@hi! LineNr  ctermfg=8 ctermbg=NONE guifg=#65737e guibg=NONE@hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE'hi! Normal ctermbg=NONE guibg=NONE\29colorscheme base16-ocean\18termguicolors\6o\bcmd\bvim\0" },
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
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\nO\0\0\5\1\3\1\r-\0\0\0009\0\0\0-\2\0\0009\2\1\2'\4\2\0B\2\2\0A\0\0\2\b\0\0\0X\0\2�+\0\2\0L\0\2\0+\0\1\0L\0\2\0\1�\b%:t\vexpand\nempty\2\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a  �\3\0\0\6\3 \0G5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\16\1=\1\17\0-\1\0\0009\1\18\1=\1\19\0-\1\0\0009\1\18\1=\1\20\0-\1\0\0009\1\t\1=\1\21\0-\1\0\0009\1\t\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\t\1=\1\27\0-\1\0\0009\1\t\1=\1\28\0-\1\1\0'\3\29\0-\4\2\0009\4\30\4B\4\1\0028\4\4\0&\3\4\3B\1\2\1'\1\31\0L\1\2\0\5�\0�\1�\r     \tmode\27hi GalaxyViMode guifg=\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\vpurple\aic\vyellow\6\19\6S\6s\vorange\ano\6c\bred\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\fmagenta$\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\1�\b%:F\vexpand\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t C\0\0\3\1\1\1\f-\0\0\0009\0\0\0)\2\0\0B\0\2\2\25\0\0\0)\1(\0\1\1\0\0X\1\2�+\1\2\0L\1\2\0+\1\1\0L\1\2\0\1�\rwinwidth\4�\1\0\0\t\1\t\0\0206\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0026\2\3\0-\4\0\0009\4\4\4B\2\2\4X\5\a�6\a\5\0009\a\6\a9\a\a\a\5\6\a\0X\a\2�'\a\b\0L\a\2\0E\5\3\3R\5�L\1\2\0\2�\5\rfiletype\abo\bvim\20short_line_list\vipairs\26get_current_file_name!galaxyline.provider_fileinfo\frequire�\20\1\0\14\0b\0�\0026\0\0\0009\0\1\0006\1\0\0009\1\2\0016\2\3\0'\4\4\0B\2\2\0029\3\5\0025\4\a\0=\4\6\0025\4\b\0005\5\t\0003\6\n\0009\a\v\0035\b\18\0005\t\r\0003\n\f\0=\n\14\t4\n\3\0009\v\15\5>\v\1\n9\v\16\5>\v\2\n=\n\17\t=\t\19\b>\b\1\a9\a\v\0035\b\24\0005\t\21\0003\n\20\0=\n\14\t5\n\23\0009\v\22\5>\v\1\n9\v\16\5>\v\2\n=\n\17\t=\t\25\b>\b\2\a9\a\v\0035\b\30\0005\t\26\0=\6\27\t4\n\3\0006\v\3\0'\r\28\0B\v\2\0029\v\29\v>\v\1\n9\v\16\5>\v\2\n=\n\17\t=\t\31\b>\b\3\a9\a\v\0035\b&\0005\t!\0003\n \0=\n\14\t=\6\27\t4\n\3\0009\v\"\5>\v\1\n9\v#\5>\v\2\n=\n$\t5\n%\0009\v\"\5>\v\1\n9\v\16\5>\v\2\n=\n\17\t=\t'\b>\b\4\a9\a(\0035\b.\0005\t*\0003\n)\0=\n\14\t6\n\3\0'\f+\0B\n\2\0029\n,\n=\n\27\t4\n\3\0009\v-\5>\v\1\n9\v\16\5>\v\2\n=\n\17\t=\t/\b>\b\1\a9\a(\0035\b2\0005\t0\0006\n\3\0'\f+\0B\n\2\0029\n,\n=\n\27\t4\n\3\0009\v\"\5>\v\1\n9\v#\5>\v\2\n=\n$\t5\n1\0009\v-\5>\v\1\n9\v\16\5>\v\2\n=\n\17\t=\t3\b>\b\2\a3\a4\0009\b(\0035\t7\0005\n5\0=\a\27\n4\v\3\0009\f6\5>\f\1\v9\f\16\5>\f\2\v=\v\17\n=\n8\t>\t\3\b9\b(\0035\t;\0005\n9\0=\a\27\n4\v\3\0009\f:\5>\f\1\v9\f\16\5>\f\2\v=\v\17\n=\n<\t>\t\4\b9\b(\0035\t>\0005\n=\0=\a\27\n4\v\3\0009\f\22\5>\f\1\v9\f\16\5>\f\2\v=\v\17\n=\n?\t>\t\5\b9\b(\0035\tB\0005\n@\0004\v\3\0009\f\15\5>\f\1\v9\f\16\5>\f\2\v=\v$\n4\v\3\0009\fA\5>\f\1\v9\f\16\5>\f\2\v=\v\17\n=\nC\t>\t\6\b9\b(\0035\tE\0005\nD\0004\v\3\0009\f\22\5>\f\1\v9\f\16\5>\f\2\v=\v\17\n4\v\3\0009\f#\5>\f\1\v9\f#\5>\f\2\v=\v$\n=\nF\t>\t\b\b9\b(\0035\tH\0005\nG\0004\v\3\0009\f:\5>\f\1\v9\f\16\5>\f\2\v=\v\17\n4\v\3\0009\f#\5>\f\1\v9\f#\5>\f\2\v=\v$\n=\nI\t>\t\t\b9\b(\0035\tK\0005\nJ\0004\v\3\0009\f6\5>\f\1\v9\f\16\5>\f\2\v=\v\17\n4\v\3\0009\f#\5>\f\1\v9\f#\5>\f\2\v=\v$\n=\nL\t>\t\n\b9\b(\0035\tN\0005\nM\0004\v\3\0009\f\15\5>\f\1\v9\f\16\5>\f\2\v=\v\17\n4\v\3\0009\f#\5>\f\1\v9\f#\5>\f\2\v=\v$\n=\nO\t>\t\v\b9\bP\0035\tU\0005\nQ\0005\vR\0009\fS\5>\f\2\v=\v$\n5\vT\0009\f\15\5>\f\1\v9\fS\5>\f\2\v=\v\17\n=\nV\t>\t\1\b9\bP\0035\t[\0005\nX\0003\vW\0=\v\14\n=\6\27\n5\vZ\0009\fY\5>\f\1\v9\fS\5>\f\2\v=\v\17\n=\n\\\t>\t\2\b9\b]\0035\t`\0005\n^\0004\v\3\0009\f_\5>\f\1\v9\fS\5>\f\2\v=\v\17\n=\na\t>\t\1\b2\0\0�K\0\1\0\15BufferIcon\1\0\0\afg\1\0\1\rprovider\15BufferIcon\21short_line_right\14SFileName\1\0\0\1\4\0\0\0\0\tbold\nwhite\1\0\0\0\15BufferType\1\0\0\1\4\0\0\0\0\tbold\blbg\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\rFileIcon\20short_line_left\19DiagnosticHint\1\0\0\1\0\2\rprovider\19DiagnosticHint\ticon\t \19DiagnosticInfo\1\0\0\1\0\2\rprovider\19DiagnosticInfo\ticon\t \19DiagnosticWarn\1\0\0\1\0\2\rprovider\19DiagnosticWarn\ticon\t \20DiagnosticError\1\0\0\1\0\3\14separator\6 \ticon\t \rprovider\20DiagnosticError\rLineInfo\1\0\0\tgray\1\0\2\14separator\5\rprovider\15LineColumn\15DiffRemove\1\0\0\1\0\2\ticon\t \rprovider\15DiffRemove\17DiffModified\1\0\0\vyellow\1\0\2\ticon\b柳\rprovider\17DiffModified\fDiffAdd\1\0\0\ngreen\1\0\2\ticon\t \rprovider\fDiffAdd\0\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\1\0\2\14separator\5\rprovider\14GitBranch\fGitIcon\1\0\0\vorange\24check_git_workspace\28galaxyline.provider_vcs\1\0\0\0\nright\rFileName\1\0\0\1\4\0\0\0\0\tbold\24separator_highlight\abg\vpurple\1\0\1\14separator\6 \0\rFileIcon\1\0\0\24get_file_icon_color!galaxyline.provider_fileinfo\14condition\1\0\1\rprovider\rFileIcon\vViMode\1\0\0\1\4\0\0\0\0\tbold\bred\1\0\0\0\17FirstElement\1\0\0\14highlight\fline_bg\tblue\rprovider\1\0\0\0\tleft\0\1\0\15\fmagenta\f#BF616A\afg\f#81A1C1\vpurple\f#B48EAD\abg\tNONE\vorange\f#D08770\blbg\f#3B4252\ngreen\f#8FBCBB\tblue\f#5E81AC\rdarkblue\f#81A1C1\bred\f#BF616A\tcyan\f#A3BE8C\vyellow\f#EBCB8B\tgray\f#616E88\rfg_green\f#8FBCBB\fline_bg\tNONE\1\0\14\fmagenta\f#d16d9e\afg\f#81a1c1\vpurple\f#5d4d7a\abg\f#2e3440\vorange\f#FF8800\tgrey\f#c0c0c0\ngreen\f#608B4E\tblue\f#569CD6\rdarkblue\f#081633\bred\f#D16969\tcyan\f#008080\vyellow\f#fabd2f\rfg_green\f#6d96a5\fline_bg\f#2e3440\1\6\0\0\tdefx\fLuaTree\rpackager\rFloaterm\16coc-eplorer\20short_line_list\fsection\15galaxyline\frequire\afn\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["lsp_extensions.nvim"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/lsp_extensions.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n9\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\t<cr>\18compe#confirm\afn\bvim�\2\1\0\4\1\f\2'6\0\0\0009\0\1\0009\0\2\0B\0\1\2\b\0\0\0X\0\27�6\0\0\0009\0\1\0009\0\3\0B\0\1\0029\0\4\0\b\0\1\0X\0\t�6\0\0\0009\0\1\0009\0\5\0B\0\1\1-\0\0\0009\0\6\0'\2\a\0002\0\17�X\0\15�6\0\0\0009\0\b\0003\2\t\0)\3\20\0B\0\3\1-\0\0\0009\0\6\0'\2\n\0002\0\0�D\0\2\0X\0\4�-\0\0\0009\0\v\0002\0\0�D\0\1\0K\0\1\0D\0\2\0\1�\26check_break_line_char\n<c-n>\0\rdefer_fn\n<c-y>\besc\18compe#confirm\rselected\18complete_info\15pumvisible\afn\bvim\0����\31�\2\1\0\b\0\20\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0006\1\0\0'\3\1\0B\1\2\0026\2\t\0004\3\0\0=\3\n\0026\2\6\0009\2\v\2'\3\r\0=\3\f\0026\2\n\0003\3\15\0=\3\14\2\18\2\0\0'\4\16\0'\5\17\0'\6\18\0005\a\19\0B\2\5\0012\0\0�K\0\1\0\1\0\2\texpr\2\fnoremap\2&v:lua.MUtils.completion_confirm()\t<CR>\6i\0\23completion_confirm\5\27completion_confirm_key\6g\vMUtils\a_G\20nvim_set_keymap\bapi\bvim\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n�\v\0\0\a\0)\00086\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\n\0+\1\2\0=\1\v\0005\0\f\0006\1\r\0'\3\14\0B\1\2\0029\1\15\0015\3\17\0005\4\16\0=\4\18\0035\4\22\0005\5\19\0006\6\20\0=\6\21\5=\5\23\0045\5\24\0006\6\20\0=\6\21\5=\5\25\0045\5\26\0006\6\27\0=\6\21\5=\5\28\0045\5\29\0=\5\30\0045\5\31\0=\5 \0045\5!\0=\5\"\0045\5#\0=\5$\0045\5%\0006\6&\0=\6\21\5=\5'\4=\4(\3B\1\2\1K\0\1\0\15highlights\22modified_selected\14string_fg\1\0\1\nguibg\f#3A3E44\23indicator_selected\1\0\2\nguibg\f#282c34\nguifg\f#282c34\14separator\1\0\2\nguibg\f#282c34\nguifg\f#282c34\23separator_selected\1\0\2\nguibg\f#282c34\nguifg\f#282c34\22separator_visible\1\0\2\nguibg\f#282c34\nguifg\f#282c34\20buffer_selected\14normal_fg\1\0\2\bgui\tbold\nguibg\f#3A3E44\tfill\1\0\1\nguibg\f#282c34\15background\1\0\0\nguifg\15comment_fg\1\0\1\nguibg\f#282c34\foptions\1\0\0\1\0\f\20separator_style\tthin\22buffer_close_icon\b\28show_buffer_close_icons\2\tview\16multiwindow\25enforce_regular_tabs\2\rtab_size\3\18\22max_prefix_length\3\r\20max_name_length\3\14\23right_trunc_marker\b\22left_trunc_marker\b\15close_icon\b\18modified_icon\b●\nsetup\15bufferline\frequire\1\0\16\21terminal_color_6\f#96b5b4\21terminal_color_8\f#65737e\21terminal_color_5\f#b48ead\21terminal_color_9\f#bf616a\21terminal_color_4\f#8fa1b3\22terminal_color_14\f#96b5b4\21terminal_color_3\f#ebcb8b\22terminal_color_12\f#8fa1b3\21terminal_color_2\f#a3be8c\22terminal_color_10\f#a3be8c\21terminal_color_1\f#bf616a\22terminal_color_13\f#b48ead\21terminal_color_0\f#2b303b\22terminal_color_11\f#ebcb8b\21terminal_color_7\f#c0c5ce\22terminal_color_15\f#eff1f5\18termguicolors\6o\1\0\1\fnoremap\2\29:BufferLineCyclePrev<CR>\f<S-TAB>\1\0\1\fnoremap\2\29:BufferLineCycleNext<CR>\n<TAB>\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\b\bcss\2\vcss_fn\2\vhsl_fn\2\vrgb_fn\2\rRRGGBBAA\2\nnames\2\vRRGGBB\2\bRGB\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\n�\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vsource\1\0\t\ttags\2\nspell\2\rnvim_lsp\2\nvsnip\2\18snippets_nvim\2\rnvim_lua\2\tpath\2\vbuffer\2\tcalc\2\1\0\v\19max_menu_width\3d\19max_kind_width\3d\19max_abbr_width\3d\21incomplete_delay\3�\3\19source_timeout\3�\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\fenabled\2\ndebug\1\nsetup\ncompe\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n�\1\0\5\f\0\6\0\18\v\3\0\0X\5\1�+\3\2\0\v\4\0\0X\5\1�+\4\1\0006\5\0\0009\5\1\0059\5\2\5)\a\0\0\18\b\0\0\18\t\1\0\18\n\2\0005\v\3\0=\3\4\v=\4\5\vB\5\6\1K\0\1\0\texpr\fnoremap\1\0\1\vsilent\2\24nvim_buf_set_keymap\bapi\bvim�\1\2\0\4\0\t\0\0196\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\0029\2\4\0025\3\5\0B\0\3\2G\2\0\0A\0\0\0016\0\6\0006\2\0\0009\2\1\0029\2\3\0029\2\a\0025\3\b\0B\0\3\1K\0\1\0\1\0\1\17open_loclist\1\16set_loclist\npcall\1\0\2\21update_in_insert\1\14underline\2\27on_publish_diagnostics\15diagnostic\twith\blsp\bvimf\0\1\6\0\a\0\v6\1\0\0009\1\1\0016\2\2\0009\2\3\2'\4\4\0006\5\0\0009\5\5\0059\5\6\5B\2\3\2<\0\2\1K\0\1\0\rfiletype\abo\23format_disabled_%s\vformat\vstring\6g\bvim�\1\0\0\a\0\v\0\0316\0\0\0009\0\1\0006\1\2\0009\1\3\1'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\1\3\0028\0\1\0\14\0\0\0X\0\18�6\0\0\0009\0\a\0009\0\b\0009\0\t\0006\2\0\0009\2\1\0026\3\2\0009\3\3\3'\5\n\0006\6\0\0009\6\5\0069\6\6\6B\3\3\0028\2\3\2\14\0\2\0X\3\1�4\2\0\0B\0\2\1K\0\1\0\22format_options_%s\15formatting\bbuf\blsp\rfiletype\abo\23format_disabled_%s\vformat\vstring\6g\bvim�\n\0\1\6\1+\0m9\1\0\0009\1\1\1\15\0\1\0X\2\17�-\1\0\0'\3\2\0'\4\3\0'\5\4\0B\1\4\0016\1\5\0009\1\6\1'\3\a\0B\1\2\0016\1\5\0009\1\6\1'\3\b\0B\1\2\0016\1\5\0009\1\6\1'\3\t\0B\1\2\0019\1\0\0009\1\n\1\15\0\1\0X\2\5�-\1\0\0'\3\2\0'\4\v\0'\5\f\0B\1\4\0019\1\0\0009\1\r\1\15\0\1\0X\2\5�-\1\0\0'\3\2\0'\4\14\0'\5\15\0B\1\4\0019\1\0\0009\1\16\1\15\0\1\0X\2\5�-\1\0\0'\3\2\0'\4\17\0'\5\18\0B\1\4\1-\1\0\0'\3\2\0'\4\19\0'\5\20\0B\1\4\1-\1\0\0'\3\2\0'\4\21\0'\5\22\0B\1\4\1-\1\0\0'\3\2\0'\4\23\0'\5\24\0B\1\4\1-\1\0\0'\3\2\0'\4\25\0'\5\26\0B\1\4\1-\1\0\0'\3\2\0'\4\27\0'\5\28\0B\1\4\1-\1\0\0'\3\2\0'\4\29\0'\5\30\0B\1\4\1-\1\0\0'\3\2\0'\4\31\0'\5 \0B\1\4\1-\1\0\0'\3\2\0'\4!\0'\5\"\0B\1\4\1-\1\0\0'\3\2\0'\4#\0'\5$\0B\1\4\1-\1\0\0'\3\2\0'\4%\0'\5&\0B\1\4\1-\1\0\0'\3\2\0'\4'\0'\5(\0B\1\4\1-\1\0\0'\3\2\0'\4)\0'\5*\0B\1\4\1K\0\1\0\1�2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\r<space>s*<cmd>lua vim.lsp.buf.references()<CR>\agr*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.implementation()<CR>\agi+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn\vrename%<cmd>lua vim.lsp.buf.hover()<CR>\6K\nhover*<cmd>lua vim.lsp.buf.definition()<CR>\agd\20goto_definition\16augroup END\24autocmd! * <buffer>\23augroup CodeAction\bcmd\bvim+<Cmd>lua vim.lsp.buf.code_action()<CR>\n<C-e>\6n\16code_action\26resolved_capabilities\25\0\1\4\1\0\0\4-\1\0\0\18\3\0\0B\1\2\1K\0\1\0\3��\14\1\0\f\0L\0�\0016\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\0023\3\a\0=\3\6\0025\2\b\0006\3\3\0009\3\t\3=\2\n\0036\3\3\0009\3\t\3=\2\v\0036\3\3\0009\3\t\3=\2\f\0036\3\3\0009\3\t\3=\2\r\0036\3\3\0009\3\t\3=\2\14\0036\3\3\0009\3\t\3=\2\15\0036\3\3\0009\3\t\3=\2\16\0036\3\3\0009\3\t\3=\2\17\0036\3\3\0009\3\t\3=\2\18\0036\3\3\0009\3\t\3=\2\19\0033\3\20\0007\3\21\0006\3\3\0009\3\22\3'\5\23\0B\3\2\0016\3\3\0009\3\22\3'\5\24\0B\3\2\0016\3\25\0003\4\27\0=\4\26\0033\3\28\0009\4\29\0009\4\30\0045\6 \0003\a\31\0=\a!\6B\4\2\0019\4\"\0009\4\30\0045\6#\0=\3!\6B\4\2\0019\4$\0009\4\30\0045\6%\0=\3!\0065\a&\0=\a\22\6B\4\2\0019\4'\0009\4\30\0045\6(\0=\3!\6B\4\2\0019\4)\0009\4\30\0045\6*\0=\3!\6B\4\2\0019\4+\0009\4\30\0045\6,\0=\3!\6B\4\2\0019\4-\0009\4\30\0045\6.\0=\3!\6B\4\2\0015\0043\0'\5/\0\18\a\5\0009\0050\5'\b1\0'\t2\0B\5\4\2=\0054\0045\0055\0005\0066\0=\0067\0059\0068\0009\6\30\0065\b:\0005\t9\0=\t;\b5\t=\0005\n<\0=\n>\t5\n?\0004\v\3\0>\4\1\v>\5\2\v=\v@\n4\v\3\0>\4\1\v>\5\2\v=\vA\n4\v\3\0>\4\1\v>\5\2\v=\vB\n4\v\3\0>\4\1\v>\5\2\v=\vC\n4\v\3\0>\4\1\v=\vD\n4\v\3\0>\4\1\v=\vE\n4\v\3\0>\4\1\v=\v+\n4\v\3\0>\4\1\v=\vF\n4\v\3\0>\4\1\v=\vG\n4\v\3\0>\4\1\v=\vH\n4\v\3\0>\4\1\v=\vI\n=\nJ\t=\tK\bB\6\2\0012\0\0�K\0\1\0\rsettings\14languages\rmarkdown\trust\bcss\tscss\tjson\tyaml\20javascriptreact\20typescriptreact\15javascript\15typescript\1\0\0\16rootMarkers\1\0\0\1\2\0\0\n.git/\17init_options\1\0\0\1\0\1\23documentFormatting\2\befm\16lintFormats\1\2\0\0\17%f:%l:%c: %m\1\0\6\16formatStdin\2\15codeAction\2\16lintCommand\29eslint_d -f unix --stdin\14lintStdin\2\23lintIgnoreExitCode\2\18formatCommand%eslint_d --fix-to-stdout --stdin\18formatCommand\1\0\0\5\6\n\tgsub�\1        ./node_modules/.bin/prettier\n        ${--config-precedence:configPrecedence}\n        ${--tab-width:tabWidth}\n        ${--single-quote:singleQuote}\n        ${--trailing-comma:trailingComma}\n    \1\0\0\vbashls\1\0\0\thtml\1\0\0\18rust_analyzer\1\0\0\ncssls\1\3\0\0\31vscode-json-languageserver\f--stdio\1\0\0\vjsonls\1\0\0\nvimls\14on_attach\1\0\0\0\nsetup\rtsserver\0\0\15formatting\a_G2command! FormatEnable lua FormatToggle(false)2command! FormatDisable lua FormatToggle(true)\bcmd\17FormatToggle\0\28format_options_markdown\24format_options_yaml\24format_options_html\24format_options_scss\23format_options_css\24format_options_json#format_options_javascriptreact#format_options_typescriptreact\30format_options_javascript\30format_options_typescript\6g\1\0\4\18trailingComma\ball\16singleQuote\2\rtabWidth\3\2\21configPrecedence\16prefer-file\0$textDocument/publishDiagnostics\rhandlers\blsp\bvim\0\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspfuzzy"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\15fzf_action\1\0\3\vctrl-x\nsplit\vctrl-t\ftabedit\vctrl-v\vvsplit\16fzf_preview\1\2\0\0\18right:+{2}-/2\1\0\3\rfzf_trim\2\17fzf_modifier\t:~:.\fmethods\ball\nsetup\rlspfuzzy\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-lspfuzzy"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\2\0\0\5\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0004\4\0\0=\4\v\3=\3\f\2B\0\2\1K\0\1\0\15playground\fdisable\1\0\3\venable\2\20persist_queries\1\15updatetime\3\25\14highlight\1\0\2\venable\2\21use_languagetree\2\vindent\1\0\1\venable\2\21ensure_installed\1\0\0\1\f\0\0\15javascript\15typescript\tjson\fgraphql\btsx\thtml\njsdoc\trust\bcss\tbash\blua\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\n�\5\0\0\5\0\30\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\28\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\29\2B\0\2\1K\0\1\0\roverride\1\0\0\tlock\1\0\3\ncolor\f#5c6370\tname\tlock\ticon\b\bmp4\1\0\3\ncolor\f#5c6370\tname\bmp4\ticon\b\bmp3\1\0\3\ncolor\f#566370\tname\bmp3\ticon\b\btxt\1\0\3\ncolor\f#61afef\tname\ttext\ticon\b\bmap\1\0\3\ncolor\f#566370\tname\btxt\ticon\b\taxml\1\0\3\ncolor\f#f76c7c\tname\taxml\ticon\b\ttxml\1\0\3\ncolor\f#f76c7c\tname\ttxml\ticon\b\bxml\1\0\3\ncolor\f#f76c7c\tname\bxml\ticon\b\tacss\1\0\3\ncolor\f#61afef\tname\bcss\ticon\b\ttcss\1\0\3\ncolor\f#61afef\tname\bcss\ticon\b\bcss\1\0\3\ncolor\f#61afef\tname\bcss\ticon\b\thtml\1\0\0\1\0\3\ncolor\f#f76c7c\tname\thtml\ticon\b\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  rnvimr = {
    config = { "\27LJ\2\n�\1\0\0\6\0\t\0\r6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\a\0)\1\1\0=\1\b\0K\0\1\0\21rnvimr_ex_enable\6g\1\0\1\fnoremap\2\22:RnvimrToggle<CR>\14<leader>r\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/rnvimr"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/rust.vim"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-closetag"
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
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
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

-- Config for: nvim-colorizer.lua
try_loadstring("\27LJ\2\n�\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\b\bcss\2\vcss_fn\2\vhsl_fn\2\vrgb_fn\2\rRRGGBBAA\2\nnames\2\vRRGGBB\2\bRGB\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
-- Config for: nvim-bufferline.lua
try_loadstring("\27LJ\2\n�\v\0\0\a\0)\00086\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\n\0+\1\2\0=\1\v\0005\0\f\0006\1\r\0'\3\14\0B\1\2\0029\1\15\0015\3\17\0005\4\16\0=\4\18\0035\4\22\0005\5\19\0006\6\20\0=\6\21\5=\5\23\0045\5\24\0006\6\20\0=\6\21\5=\5\25\0045\5\26\0006\6\27\0=\6\21\5=\5\28\0045\5\29\0=\5\30\0045\5\31\0=\5 \0045\5!\0=\5\"\0045\5#\0=\5$\0045\5%\0006\6&\0=\6\21\5=\5'\4=\4(\3B\1\2\1K\0\1\0\15highlights\22modified_selected\14string_fg\1\0\1\nguibg\f#3A3E44\23indicator_selected\1\0\2\nguibg\f#282c34\nguifg\f#282c34\14separator\1\0\2\nguibg\f#282c34\nguifg\f#282c34\23separator_selected\1\0\2\nguibg\f#282c34\nguifg\f#282c34\22separator_visible\1\0\2\nguibg\f#282c34\nguifg\f#282c34\20buffer_selected\14normal_fg\1\0\2\bgui\tbold\nguibg\f#3A3E44\tfill\1\0\1\nguibg\f#282c34\15background\1\0\0\nguifg\15comment_fg\1\0\1\nguibg\f#282c34\foptions\1\0\0\1\0\f\20separator_style\tthin\22buffer_close_icon\b\28show_buffer_close_icons\2\tview\16multiwindow\25enforce_regular_tabs\2\rtab_size\3\18\22max_prefix_length\3\r\20max_name_length\3\14\23right_trunc_marker\b\22left_trunc_marker\b\15close_icon\b\18modified_icon\b●\nsetup\15bufferline\frequire\1\0\16\21terminal_color_6\f#96b5b4\21terminal_color_8\f#65737e\21terminal_color_5\f#b48ead\21terminal_color_9\f#bf616a\21terminal_color_4\f#8fa1b3\22terminal_color_14\f#96b5b4\21terminal_color_3\f#ebcb8b\22terminal_color_12\f#8fa1b3\21terminal_color_2\f#a3be8c\22terminal_color_10\f#a3be8c\21terminal_color_1\f#bf616a\22terminal_color_13\f#b48ead\21terminal_color_0\f#2b303b\22terminal_color_11\f#ebcb8b\21terminal_color_7\f#c0c5ce\22terminal_color_15\f#eff1f5\18termguicolors\6o\1\0\1\fnoremap\2\29:BufferLineCyclePrev<CR>\f<S-TAB>\1\0\1\fnoremap\2\29:BufferLineCycleNext<CR>\n<TAB>\6n\20nvim_set_keymap\bapi\bvim\0", "config", "nvim-bufferline.lua")
-- Config for: rnvimr
try_loadstring("\27LJ\2\n�\1\0\0\6\0\t\0\r6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\a\0)\1\1\0=\1\b\0K\0\1\0\21rnvimr_ex_enable\6g\1\0\1\fnoremap\2\22:RnvimrToggle<CR>\14<leader>r\6n\20nvim_set_keymap\bapi\bvim\0", "config", "rnvimr")
-- Config for: galaxyline.nvim
try_loadstring("\27LJ\2\nO\0\0\5\1\3\1\r-\0\0\0009\0\0\0-\2\0\0009\2\1\2'\4\2\0B\2\2\0A\0\0\2\b\0\0\0X\0\2�+\0\2\0L\0\2\0+\0\1\0L\0\2\0\1�\b%:t\vexpand\nempty\2\18\0\0\1\0\1\0\2'\0\0\0L\0\2\0\a  �\3\0\0\6\3 \0G5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\16\1=\1\17\0-\1\0\0009\1\18\1=\1\19\0-\1\0\0009\1\18\1=\1\20\0-\1\0\0009\1\t\1=\1\21\0-\1\0\0009\1\t\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\t\1=\1\27\0-\1\0\0009\1\t\1=\1\28\0-\1\1\0'\3\29\0-\4\2\0009\4\30\4B\4\1\0028\4\4\0&\3\4\3B\1\2\1'\1\31\0L\1\2\0\5�\0�\1�\r     \tmode\27hi GalaxyViMode guifg=\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\vpurple\aic\vyellow\6\19\6S\6s\vorange\ano\6c\bred\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\fmagenta$\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\1�\b%:F\vexpand\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t C\0\0\3\1\1\1\f-\0\0\0009\0\0\0)\2\0\0B\0\2\2\25\0\0\0)\1(\0\1\1\0\0X\1\2�+\1\2\0L\1\2\0+\1\1\0L\1\2\0\1�\rwinwidth\4�\1\0\0\t\1\t\0\0206\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0026\2\3\0-\4\0\0009\4\4\4B\2\2\4X\5\a�6\a\5\0009\a\6\a9\a\a\a\5\6\a\0X\a\2�'\a\b\0L\a\2\0E\5\3\3R\5�L\1\2\0\2�\5\rfiletype\abo\bvim\20short_line_list\vipairs\26get_current_file_name!galaxyline.provider_fileinfo\frequire�\20\1\0\14\0b\0�\0026\0\0\0009\0\1\0006\1\0\0009\1\2\0016\2\3\0'\4\4\0B\2\2\0029\3\5\0025\4\a\0=\4\6\0025\4\b\0005\5\t\0003\6\n\0009\a\v\0035\b\18\0005\t\r\0003\n\f\0=\n\14\t4\n\3\0009\v\15\5>\v\1\n9\v\16\5>\v\2\n=\n\17\t=\t\19\b>\b\1\a9\a\v\0035\b\24\0005\t\21\0003\n\20\0=\n\14\t5\n\23\0009\v\22\5>\v\1\n9\v\16\5>\v\2\n=\n\17\t=\t\25\b>\b\2\a9\a\v\0035\b\30\0005\t\26\0=\6\27\t4\n\3\0006\v\3\0'\r\28\0B\v\2\0029\v\29\v>\v\1\n9\v\16\5>\v\2\n=\n\17\t=\t\31\b>\b\3\a9\a\v\0035\b&\0005\t!\0003\n \0=\n\14\t=\6\27\t4\n\3\0009\v\"\5>\v\1\n9\v#\5>\v\2\n=\n$\t5\n%\0009\v\"\5>\v\1\n9\v\16\5>\v\2\n=\n\17\t=\t'\b>\b\4\a9\a(\0035\b.\0005\t*\0003\n)\0=\n\14\t6\n\3\0'\f+\0B\n\2\0029\n,\n=\n\27\t4\n\3\0009\v-\5>\v\1\n9\v\16\5>\v\2\n=\n\17\t=\t/\b>\b\1\a9\a(\0035\b2\0005\t0\0006\n\3\0'\f+\0B\n\2\0029\n,\n=\n\27\t4\n\3\0009\v\"\5>\v\1\n9\v#\5>\v\2\n=\n$\t5\n1\0009\v-\5>\v\1\n9\v\16\5>\v\2\n=\n\17\t=\t3\b>\b\2\a3\a4\0009\b(\0035\t7\0005\n5\0=\a\27\n4\v\3\0009\f6\5>\f\1\v9\f\16\5>\f\2\v=\v\17\n=\n8\t>\t\3\b9\b(\0035\t;\0005\n9\0=\a\27\n4\v\3\0009\f:\5>\f\1\v9\f\16\5>\f\2\v=\v\17\n=\n<\t>\t\4\b9\b(\0035\t>\0005\n=\0=\a\27\n4\v\3\0009\f\22\5>\f\1\v9\f\16\5>\f\2\v=\v\17\n=\n?\t>\t\5\b9\b(\0035\tB\0005\n@\0004\v\3\0009\f\15\5>\f\1\v9\f\16\5>\f\2\v=\v$\n4\v\3\0009\fA\5>\f\1\v9\f\16\5>\f\2\v=\v\17\n=\nC\t>\t\6\b9\b(\0035\tE\0005\nD\0004\v\3\0009\f\22\5>\f\1\v9\f\16\5>\f\2\v=\v\17\n4\v\3\0009\f#\5>\f\1\v9\f#\5>\f\2\v=\v$\n=\nF\t>\t\b\b9\b(\0035\tH\0005\nG\0004\v\3\0009\f:\5>\f\1\v9\f\16\5>\f\2\v=\v\17\n4\v\3\0009\f#\5>\f\1\v9\f#\5>\f\2\v=\v$\n=\nI\t>\t\t\b9\b(\0035\tK\0005\nJ\0004\v\3\0009\f6\5>\f\1\v9\f\16\5>\f\2\v=\v\17\n4\v\3\0009\f#\5>\f\1\v9\f#\5>\f\2\v=\v$\n=\nL\t>\t\n\b9\b(\0035\tN\0005\nM\0004\v\3\0009\f\15\5>\f\1\v9\f\16\5>\f\2\v=\v\17\n4\v\3\0009\f#\5>\f\1\v9\f#\5>\f\2\v=\v$\n=\nO\t>\t\v\b9\bP\0035\tU\0005\nQ\0005\vR\0009\fS\5>\f\2\v=\v$\n5\vT\0009\f\15\5>\f\1\v9\fS\5>\f\2\v=\v\17\n=\nV\t>\t\1\b9\bP\0035\t[\0005\nX\0003\vW\0=\v\14\n=\6\27\n5\vZ\0009\fY\5>\f\1\v9\fS\5>\f\2\v=\v\17\n=\n\\\t>\t\2\b9\b]\0035\t`\0005\n^\0004\v\3\0009\f_\5>\f\1\v9\fS\5>\f\2\v=\v\17\n=\na\t>\t\1\b2\0\0�K\0\1\0\15BufferIcon\1\0\0\afg\1\0\1\rprovider\15BufferIcon\21short_line_right\14SFileName\1\0\0\1\4\0\0\0\0\tbold\nwhite\1\0\0\0\15BufferType\1\0\0\1\4\0\0\0\0\tbold\blbg\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\rFileIcon\20short_line_left\19DiagnosticHint\1\0\0\1\0\2\rprovider\19DiagnosticHint\ticon\t \19DiagnosticInfo\1\0\0\1\0\2\rprovider\19DiagnosticInfo\ticon\t \19DiagnosticWarn\1\0\0\1\0\2\rprovider\19DiagnosticWarn\ticon\t \20DiagnosticError\1\0\0\1\0\3\14separator\6 \ticon\t \rprovider\20DiagnosticError\rLineInfo\1\0\0\tgray\1\0\2\14separator\5\rprovider\15LineColumn\15DiffRemove\1\0\0\1\0\2\ticon\t \rprovider\15DiffRemove\17DiffModified\1\0\0\vyellow\1\0\2\ticon\b柳\rprovider\17DiffModified\fDiffAdd\1\0\0\ngreen\1\0\2\ticon\t \rprovider\fDiffAdd\0\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\1\0\2\14separator\5\rprovider\14GitBranch\fGitIcon\1\0\0\vorange\24check_git_workspace\28galaxyline.provider_vcs\1\0\0\0\nright\rFileName\1\0\0\1\4\0\0\0\0\tbold\24separator_highlight\abg\vpurple\1\0\1\14separator\6 \0\rFileIcon\1\0\0\24get_file_icon_color!galaxyline.provider_fileinfo\14condition\1\0\1\rprovider\rFileIcon\vViMode\1\0\0\1\4\0\0\0\0\tbold\bred\1\0\0\0\17FirstElement\1\0\0\14highlight\fline_bg\tblue\rprovider\1\0\0\0\tleft\0\1\0\15\fmagenta\f#BF616A\afg\f#81A1C1\vpurple\f#B48EAD\abg\tNONE\vorange\f#D08770\blbg\f#3B4252\ngreen\f#8FBCBB\tblue\f#5E81AC\rdarkblue\f#81A1C1\bred\f#BF616A\tcyan\f#A3BE8C\vyellow\f#EBCB8B\tgray\f#616E88\rfg_green\f#8FBCBB\fline_bg\tNONE\1\0\14\fmagenta\f#d16d9e\afg\f#81a1c1\vpurple\f#5d4d7a\abg\f#2e3440\vorange\f#FF8800\tgrey\f#c0c0c0\ngreen\f#608B4E\tblue\f#569CD6\rdarkblue\f#081633\bred\f#D16969\tcyan\f#008080\vyellow\f#fabd2f\rfg_green\f#6d96a5\fline_bg\f#2e3440\1\6\0\0\tdefx\fLuaTree\rpackager\rFloaterm\16coc-eplorer\20short_line_list\fsection\15galaxyline\frequire\afn\bcmd\bvim\0", "config", "galaxyline.nvim")
-- Config for: base16-vim
try_loadstring("\27LJ\2\n�\2\0\0\4\0\b\0\0196\0\0\0009\0\1\0006\1\0\0009\1\2\1+\2\2\0=\2\3\1\18\1\0\0'\3\4\0B\1\2\1\18\1\0\0'\3\5\0B\1\2\1\18\1\0\0'\3\6\0B\1\2\1\18\1\0\0'\3\a\0B\1\2\1K\0\1\0@hi! LineNr  ctermfg=8 ctermbg=NONE guifg=#65737e guibg=NONE@hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE'hi! Normal ctermbg=NONE guibg=NONE\29colorscheme base16-ocean\18termguicolors\6o\bcmd\bvim\0", "config", "base16-vim")
-- Config for: vim-vsnip
try_loadstring("\27LJ\2\nK\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\28~/.config/nvim/snippets\22vsnip_snippet_dir\6g\bvim\0", "config", "vim-vsnip")
-- Config for: nvim-web-devicons
try_loadstring("\27LJ\2\n�\5\0\0\5\0\30\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\28\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\29\2B\0\2\1K\0\1\0\roverride\1\0\0\tlock\1\0\3\ncolor\f#5c6370\tname\tlock\ticon\b\bmp4\1\0\3\ncolor\f#5c6370\tname\bmp4\ticon\b\bmp3\1\0\3\ncolor\f#566370\tname\bmp3\ticon\b\btxt\1\0\3\ncolor\f#61afef\tname\ttext\ticon\b\bmap\1\0\3\ncolor\f#566370\tname\btxt\ticon\b\taxml\1\0\3\ncolor\f#f76c7c\tname\taxml\ticon\b\ttxml\1\0\3\ncolor\f#f76c7c\tname\ttxml\ticon\b\bxml\1\0\3\ncolor\f#f76c7c\tname\bxml\ticon\b\tacss\1\0\3\ncolor\f#61afef\tname\bcss\ticon\b\ttcss\1\0\3\ncolor\f#61afef\tname\bcss\ticon\b\bcss\1\0\3\ncolor\f#61afef\tname\bcss\ticon\b\thtml\1\0\0\1\0\3\ncolor\f#f76c7c\tname\thtml\ticon\b\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
-- Config for: nvim-lspconfig
try_loadstring("\27LJ\2\n�\1\0\5\f\0\6\0\18\v\3\0\0X\5\1�+\3\2\0\v\4\0\0X\5\1�+\4\1\0006\5\0\0009\5\1\0059\5\2\5)\a\0\0\18\b\0\0\18\t\1\0\18\n\2\0005\v\3\0=\3\4\v=\4\5\vB\5\6\1K\0\1\0\texpr\fnoremap\1\0\1\vsilent\2\24nvim_buf_set_keymap\bapi\bvim�\1\2\0\4\0\t\0\0196\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\0029\2\4\0025\3\5\0B\0\3\2G\2\0\0A\0\0\0016\0\6\0006\2\0\0009\2\1\0029\2\3\0029\2\a\0025\3\b\0B\0\3\1K\0\1\0\1\0\1\17open_loclist\1\16set_loclist\npcall\1\0\2\21update_in_insert\1\14underline\2\27on_publish_diagnostics\15diagnostic\twith\blsp\bvimf\0\1\6\0\a\0\v6\1\0\0009\1\1\0016\2\2\0009\2\3\2'\4\4\0006\5\0\0009\5\5\0059\5\6\5B\2\3\2<\0\2\1K\0\1\0\rfiletype\abo\23format_disabled_%s\vformat\vstring\6g\bvim�\1\0\0\a\0\v\0\0316\0\0\0009\0\1\0006\1\2\0009\1\3\1'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\1\3\0028\0\1\0\14\0\0\0X\0\18�6\0\0\0009\0\a\0009\0\b\0009\0\t\0006\2\0\0009\2\1\0026\3\2\0009\3\3\3'\5\n\0006\6\0\0009\6\5\0069\6\6\6B\3\3\0028\2\3\2\14\0\2\0X\3\1�4\2\0\0B\0\2\1K\0\1\0\22format_options_%s\15formatting\bbuf\blsp\rfiletype\abo\23format_disabled_%s\vformat\vstring\6g\bvim�\n\0\1\6\1+\0m9\1\0\0009\1\1\1\15\0\1\0X\2\17�-\1\0\0'\3\2\0'\4\3\0'\5\4\0B\1\4\0016\1\5\0009\1\6\1'\3\a\0B\1\2\0016\1\5\0009\1\6\1'\3\b\0B\1\2\0016\1\5\0009\1\6\1'\3\t\0B\1\2\0019\1\0\0009\1\n\1\15\0\1\0X\2\5�-\1\0\0'\3\2\0'\4\v\0'\5\f\0B\1\4\0019\1\0\0009\1\r\1\15\0\1\0X\2\5�-\1\0\0'\3\2\0'\4\14\0'\5\15\0B\1\4\0019\1\0\0009\1\16\1\15\0\1\0X\2\5�-\1\0\0'\3\2\0'\4\17\0'\5\18\0B\1\4\1-\1\0\0'\3\2\0'\4\19\0'\5\20\0B\1\4\1-\1\0\0'\3\2\0'\4\21\0'\5\22\0B\1\4\1-\1\0\0'\3\2\0'\4\23\0'\5\24\0B\1\4\1-\1\0\0'\3\2\0'\4\25\0'\5\26\0B\1\4\1-\1\0\0'\3\2\0'\4\27\0'\5\28\0B\1\4\1-\1\0\0'\3\2\0'\4\29\0'\5\30\0B\1\4\1-\1\0\0'\3\2\0'\4\31\0'\5 \0B\1\4\1-\1\0\0'\3\2\0'\4!\0'\5\"\0B\1\4\1-\1\0\0'\3\2\0'\4#\0'\5$\0B\1\4\1-\1\0\0'\3\2\0'\4%\0'\5&\0B\1\4\1-\1\0\0'\3\2\0'\4'\0'\5(\0B\1\4\1-\1\0\0'\3\2\0'\4)\0'\5*\0B\1\4\1K\0\1\0\1�2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\r<space>s*<cmd>lua vim.lsp.buf.references()<CR>\agr*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.implementation()<CR>\agi+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn\vrename%<cmd>lua vim.lsp.buf.hover()<CR>\6K\nhover*<cmd>lua vim.lsp.buf.definition()<CR>\agd\20goto_definition\16augroup END\24autocmd! * <buffer>\23augroup CodeAction\bcmd\bvim+<Cmd>lua vim.lsp.buf.code_action()<CR>\n<C-e>\6n\16code_action\26resolved_capabilities\25\0\1\4\1\0\0\4-\1\0\0\18\3\0\0B\1\2\1K\0\1\0\3��\14\1\0\f\0L\0�\0016\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\0023\3\a\0=\3\6\0025\2\b\0006\3\3\0009\3\t\3=\2\n\0036\3\3\0009\3\t\3=\2\v\0036\3\3\0009\3\t\3=\2\f\0036\3\3\0009\3\t\3=\2\r\0036\3\3\0009\3\t\3=\2\14\0036\3\3\0009\3\t\3=\2\15\0036\3\3\0009\3\t\3=\2\16\0036\3\3\0009\3\t\3=\2\17\0036\3\3\0009\3\t\3=\2\18\0036\3\3\0009\3\t\3=\2\19\0033\3\20\0007\3\21\0006\3\3\0009\3\22\3'\5\23\0B\3\2\0016\3\3\0009\3\22\3'\5\24\0B\3\2\0016\3\25\0003\4\27\0=\4\26\0033\3\28\0009\4\29\0009\4\30\0045\6 \0003\a\31\0=\a!\6B\4\2\0019\4\"\0009\4\30\0045\6#\0=\3!\6B\4\2\0019\4$\0009\4\30\0045\6%\0=\3!\0065\a&\0=\a\22\6B\4\2\0019\4'\0009\4\30\0045\6(\0=\3!\6B\4\2\0019\4)\0009\4\30\0045\6*\0=\3!\6B\4\2\0019\4+\0009\4\30\0045\6,\0=\3!\6B\4\2\0019\4-\0009\4\30\0045\6.\0=\3!\6B\4\2\0015\0043\0'\5/\0\18\a\5\0009\0050\5'\b1\0'\t2\0B\5\4\2=\0054\0045\0055\0005\0066\0=\0067\0059\0068\0009\6\30\0065\b:\0005\t9\0=\t;\b5\t=\0005\n<\0=\n>\t5\n?\0004\v\3\0>\4\1\v>\5\2\v=\v@\n4\v\3\0>\4\1\v>\5\2\v=\vA\n4\v\3\0>\4\1\v>\5\2\v=\vB\n4\v\3\0>\4\1\v>\5\2\v=\vC\n4\v\3\0>\4\1\v=\vD\n4\v\3\0>\4\1\v=\vE\n4\v\3\0>\4\1\v=\v+\n4\v\3\0>\4\1\v=\vF\n4\v\3\0>\4\1\v=\vG\n4\v\3\0>\4\1\v=\vH\n4\v\3\0>\4\1\v=\vI\n=\nJ\t=\tK\bB\6\2\0012\0\0�K\0\1\0\rsettings\14languages\rmarkdown\trust\bcss\tscss\tjson\tyaml\20javascriptreact\20typescriptreact\15javascript\15typescript\1\0\0\16rootMarkers\1\0\0\1\2\0\0\n.git/\17init_options\1\0\0\1\0\1\23documentFormatting\2\befm\16lintFormats\1\2\0\0\17%f:%l:%c: %m\1\0\6\16formatStdin\2\15codeAction\2\16lintCommand\29eslint_d -f unix --stdin\14lintStdin\2\23lintIgnoreExitCode\2\18formatCommand%eslint_d --fix-to-stdout --stdin\18formatCommand\1\0\0\5\6\n\tgsub�\1        ./node_modules/.bin/prettier\n        ${--config-precedence:configPrecedence}\n        ${--tab-width:tabWidth}\n        ${--single-quote:singleQuote}\n        ${--trailing-comma:trailingComma}\n    \1\0\0\vbashls\1\0\0\thtml\1\0\0\18rust_analyzer\1\0\0\ncssls\1\3\0\0\31vscode-json-languageserver\f--stdio\1\0\0\vjsonls\1\0\0\nvimls\14on_attach\1\0\0\0\nsetup\rtsserver\0\0\15formatting\a_G2command! FormatEnable lua FormatToggle(false)2command! FormatDisable lua FormatToggle(true)\bcmd\17FormatToggle\0\28format_options_markdown\24format_options_yaml\24format_options_html\24format_options_scss\23format_options_css\24format_options_json#format_options_javascriptreact#format_options_typescriptreact\30format_options_javascript\30format_options_typescript\6g\1\0\4\18trailingComma\ball\16singleQuote\2\rtabWidth\3\2\21configPrecedence\16prefer-file\0$textDocument/publishDiagnostics\rhandlers\blsp\bvim\0\14lspconfig\frequire\0", "config", "nvim-lspconfig")
-- Config for: nvim-compe
try_loadstring("\27LJ\2\n�\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vsource\1\0\t\ttags\2\nspell\2\rnvim_lsp\2\nvsnip\2\18snippets_nvim\2\rnvim_lua\2\tpath\2\vbuffer\2\tcalc\2\1\0\v\19max_menu_width\3d\19max_kind_width\3d\19max_abbr_width\3d\21incomplete_delay\3�\3\19source_timeout\3�\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\fenabled\2\ndebug\1\nsetup\ncompe\frequire\0", "config", "nvim-compe")
-- Config for: nvim-autopairs
try_loadstring("\27LJ\2\n9\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\t<cr>\18compe#confirm\afn\bvim�\2\1\0\4\1\f\2'6\0\0\0009\0\1\0009\0\2\0B\0\1\2\b\0\0\0X\0\27�6\0\0\0009\0\1\0009\0\3\0B\0\1\0029\0\4\0\b\0\1\0X\0\t�6\0\0\0009\0\1\0009\0\5\0B\0\1\1-\0\0\0009\0\6\0'\2\a\0002\0\17�X\0\15�6\0\0\0009\0\b\0003\2\t\0)\3\20\0B\0\3\1-\0\0\0009\0\6\0'\2\n\0002\0\0�D\0\2\0X\0\4�-\0\0\0009\0\v\0002\0\0�D\0\1\0K\0\1\0D\0\2\0\1�\26check_break_line_char\n<c-n>\0\rdefer_fn\n<c-y>\besc\18compe#confirm\rselected\18complete_info\15pumvisible\afn\bvim\0����\31�\2\1\0\b\0\20\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0006\1\0\0'\3\1\0B\1\2\0026\2\t\0004\3\0\0=\3\n\0026\2\6\0009\2\v\2'\3\r\0=\3\f\0026\2\n\0003\3\15\0=\3\14\2\18\2\0\0'\4\16\0'\5\17\0'\6\18\0005\a\19\0B\2\5\0012\0\0�K\0\1\0\1\0\2\texpr\2\fnoremap\2&v:lua.MUtils.completion_confirm()\t<CR>\6i\0\23completion_confirm\5\27completion_confirm_key\6g\vMUtils\a_G\20nvim_set_keymap\bapi\bvim\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
-- Config for: nvim-treesitter
try_loadstring("\27LJ\2\n�\2\0\0\5\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0004\4\0\0=\4\v\3=\3\f\2B\0\2\1K\0\1\0\15playground\fdisable\1\0\3\venable\2\20persist_queries\1\15updatetime\3\25\14highlight\1\0\2\venable\2\21use_languagetree\2\vindent\1\0\1\venable\2\21ensure_installed\1\0\0\1\f\0\0\15javascript\15typescript\tjson\fgraphql\btsx\thtml\njsdoc\trust\bcss\tbash\blua\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
-- Config for: nvim-lspfuzzy
try_loadstring("\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\15fzf_action\1\0\3\vctrl-x\nsplit\vctrl-t\ftabedit\vctrl-v\vvsplit\16fzf_preview\1\2\0\0\18right:+{2}-/2\1\0\3\rfzf_trim\2\17fzf_modifier\t:~:.\fmethods\ball\nsetup\rlspfuzzy\frequire\0", "config", "nvim-lspfuzzy")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
