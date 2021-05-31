let mapleader = "\<Space>"

"imap
inoremap <silent> <c-l> <Right>
inoremap <silent><expr><Tab> pumvisible() ? "\<C-N>" : "\<Tab>"
inoremap <silent><expr><S-Tab> pumvisible() ? "\<C-P>" : "\<S-Tab>"
"nmap
inoremap jk <ESC>
inoremap ww <ESC>:w<cr>
nnoremap ; :
nnoremap <Esc><Esc> :nohlsearch<CR>
nnoremap S :%s//g<Left><Left>
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
noremap Y y$
nmap <silent> ff <Plug>(easymotion-overwin-f2)
nmap <silent> fl <Plug>(easymotion-overwin-line)

noremap <silent> <c-k> :wincmd k<CR>
noremap <silent> <c-j> :wincmd j<CR>
noremap <silent> <c-h> :wincmd h<CR>
noremap <silent> <c-l> :wincmd l<CR>

"escape highlight search
"copy/pase
vnoremap < <gv
vnoremap > >gv
vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p
nnoremap <nowait><c-w> :bd<cr>
nnoremap <c-s> :w!<cr>
nnoremap <nowait><c-w><c-k> :bufdo bd<cr>
nnoremap <leader>a ggVG<cr>
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

autocmd BufNewFile,BufRead *.mdx set filetype=markdown.mdx
