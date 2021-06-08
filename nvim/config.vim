function! ClipboardYank()
    call system('pbcopy',@@) 
endfunction
function! ClipboardPaste() 
  let @@=system('pbpaste')
endfunction

inoremap <silent> <c-l> <Right>
inoremap <silent><expr><Tab> pumvisible() ? "\<C-N>" : "\<Tab>"
inoremap <silent><expr><S-Tab> pumvisible() ? "\<C-P>" : "\<S-Tab>"

nnoremap S :%s//g<Left><Left>
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
noremap Y y$

"copy/pase
vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p

" Goto previous/next diagnostic warning/error
" nnoremap <silent> g[ <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
" nnoremap <silent> g] <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *
\ lua require'lsp_extensions'.inlay_hints{ prefix = ' » ', highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }

"multiple cursors cursor{{
" highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
" highlight link multiple_cursors_visual Visual
"}}

"vim snippet {{
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
"}}
"

"fzf{{
nmap <silent><leader>p :Files<CR>
nmap <silent><leader>l :Rg<CR>
nmap <silent><leader>b :Buffers<CR>
nmap <silent><leader>w :Windows<CR>
"}}
"prettier{{
let g:prettier#quickfix_enabled = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.scss,*.json,*.md,*.vue,*.yaml,*.html,*.tcss PrettierAsync
"}}
"rust {{
let g:rustfmt_autosave = 1
"}}

"vista {{
" function! NearestMethodOrFunction() abort
"   return get(b:, 'vista_nearest_method_or_function', '')
" endfunction
" let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
" let g:vista_sidebar_width = 40

" " set statusline+=%{NearestMethodOrFunction()}
" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
" nnoremap <silent><leader>vo :Vista<CR>
" nnoremap <silent><leader>vc :Vista!<CR>
"}}

" Tagbar{{
nmap <silent>T :TagbarToggle<CR>
" let g:tagbar_ctags_bin="/usr/local/bin/ctags"
"}}

" onedark vim{{
let bufferline = get(g:, 'bufferline', {})
let bufferline.animation = v:true
let bufferline.icon_separator_active = ''
let bufferline.icon_separator_inactive = ''
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
"}}
