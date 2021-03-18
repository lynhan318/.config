"Defx{{
"}}

"typescript {{
let g:typescript_indent_disable = 1
"}}


"{{ Theme
syntax enable
set background=dark
set termguicolors
set cursorline
"colorscheme gruvbox
"let g:gruvbox_contrast_dark= 'soft'
"let g:airline_theme='base16-gruvbox-dark-hard'

"ayu light
"{
"let ayucolor="light"
"set termguicolors
"colorscheme ayu
"}
"
"dracular{{
"let g:airline_theme='dracula'
"let g:dracula_colorterm = 0
"colorscheme dracula
"}}
" base16
"{
"let base16colorspace=256
colorscheme base16-ocean
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
hi! LineNr  ctermfg=8 ctermbg=NONE guifg=#65737e guibg=NONE


"}

"}}


"DEOPLETE {{
let g:python3_host_prog= '/usr/local/opt/python@3.8/bin/python3'
let g:python_host_prog= '/usr/bin/python2'
"let g:deoplete#enable_at_startup = 1
"let g:ale_completion_enabled = 1
"}}

"auto close {{
let g:closetag_filenames = '*.html,*.jsx,*.tsx,*.js,*.vue'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.vue'
let g:closetag_filetypes = 'html,js,xhtml,phtml,jsx,tsx,vue'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx,js,vue'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
"}}

"FONT
let g:enable_italic_font = 1
let g:enable_bold_font = 1
"CLOSE BUFFER
let bclose_multiple = 0

"MULTI COSUR
let g:multi_cursor_select_all_word_key = '<c-a>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_exit_from_insert_mode=1
"Emmet
let g:user_emmet_leader_key='<C-Z>'
let g:jsx_pragma_required = 1

"ALE {{
let g:ale_typescript_tslint_config_path = ''
let g:ale_typescript_tslint_executable = 'tslint'
let g:ale_completion_tsserver_autoimport = 1
let g:ale_typescript_tslint_use_global = 0
let g:jsx_ext_required = 1

let g:ale_fixers = {
\   '*': ['prettier','remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier','eslint'],
\   'javascriptreact': ['prettier','eslint'],
\   'typescript': ['prettier','tslint'],
\   'typescriptreact': ['prettier','tslint'],
\}
let g:ale_fix_on_save = 1
"}}

"UltiSnips {{
let g:UltiSnipsExpandTrigger="<c-c>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
" }}

"Easymotion {{
let g:EasyMotion_smartcase = 1
" }}

"ctrslf {{
let g:ctrlsf_default_view_mode = 'compact'
"}}

"context{{
"let g:context_enabled = 1
"}}
"fzf{{
" An action can be a reference to a function that processes selected lines
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:fzf_layout = { 'down': '50%' }
let g:fzf_buffers_jump = 1
silent! nmap <C-P> :Files<CR>

"}}

"indentline{{
let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 0
"}}

nmap <F8> :TagbarToggle<CR>

"prettier{{

"}}
