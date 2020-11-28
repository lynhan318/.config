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

let g:airline_theme='base16'

"}

"}}

"airline {{
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1

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
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'javascriptreact': ['eslint'],
\   'python': ['pylint'],
\   'rust':['analyzer'],
\}

let g:ale_fixers = {
\   '*': ['prettier','remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black'],
\   'javascript': ['prettier','eslint'],
\   'javascriptreact': ['prettier','eslint'],
\   'typescript': ['prettier','tslint'],
\   'typescriptreact': ['prettier','tslint'],
\   'rust': ['prettier','rustfmt'],
\}
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1

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

"leaderF {{
let g:Lf_ShortcutF = '<C-P>'

let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1

"}}

"ctrslf {{
let g:ctrlsf_default_view_mode = 'compact'
"}}
"rust.vim{{
let g:rustfmt_autosave = 1
let g:rust_clip_command = 'pbcopy'
let g:racer_cmd = "/Users/lap00822/Desktop/rust/racer/target/release/racer"
let g:racer_experimental_completer = 1
"}}
