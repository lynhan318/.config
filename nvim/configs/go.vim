au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4
au FileType go nmap <leader>gt :GoDeclsDir<cr>
au FileType go nmap <F12> <Plug>(go-def)

let g:go_addtags_transform = "snakecase"
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#gocode_binary = '/Users/lap00822/go/bin/gocode'
let g:airline#extensions#ale#enabled = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:ag_working_path_mode="r"
let g:go_highlight_types = 1
let g:go_fmt_fail_silently = 1
let g:go_list_type = "quickfix"
let g:go_info_mode = 'gopls'
let g:go_def_mode = 'godef'
let g:go_referrers_mode = 'gopls'
let g:go_rename_command = 'gopls'
let g:go_fmt_command = "goimports"
"indentLine {{
let g:indent_guides_enable_on_vim_startup = 1
set ts=4 sw=4 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
"}}
