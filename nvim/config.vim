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
nmap <F8> :TagbarToggle<CR>
let g:tagbar_ctags_bin="/usr/local/bin/ctags"
let g:tagbar_type_typescript = {
    \ 'ctagstype': 'typescript',
    \ 'kinds': [
      \ 'c:class',
      \ 'n:namespace',
      \ 'f:function',
      \ 'G:generator',
      \ 'v:variable',
      \ 'm:method',
      \ 'p:property',
      \ 'i:interface',
      \ 'g:enum',
      \ 't:type',
      \ 'a:alias',
    \ ],
    \'sro': '.',
      \ 'kind2scope' : {
      \ 'c' : 'class',
      \ 'n' : 'namespace',
      \ 'i' : 'interface',
      \ 'f' : 'function',
      \ 'G' : 'generator',
      \ 'm' : 'method',
      \ 'p' : 'property',
      \},
\ }
"}}

