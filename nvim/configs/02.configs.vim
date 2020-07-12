let mapleader = "\<Space>"

set expandtab
set list
filetype plugin on
filetype plugin indent on

syntax on
set encoding=UTF-8
set mouse=a
set scroll=10

set history=1000
set undolevels=1000

"Search setting {{
set incsearch
set hlsearch
"set updatetime=500
"autocmd! CursorHold,CursorHoldI * let @/='\<'.expand('<cword>').'\>'

"}}

set number
set relativenumber
set ignorecase
set smartcase

set tabstop=4
set softtabstop=0
set shiftwidth=4
set lazyredraw
set nobackup
set noswapfile
set nowrap

set visualbell
set noerrorbells

"augroup CursorLine
    "au!
    "au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    "au WinLeave * setlocal nocursorline
"augroup END
"hi CursorLine ctermbg=235

"imap
inoremap jk <ESC>
inoremap ww <ESC>:w<cr>
inoremap <silent> <c-l> <Right>
inoremap <silent><expr><Tab> pumvisible() ? "\<C-N>" : "\<Tab>"
inoremap <silent><expr><S-Tab> pumvisible() ? "\<C-P>" : "\<S-Tab>"
"nmap
nnoremap ; :
nnoremap <Esc><Esc> :nohlsearch<CR>
nnoremap S :%s//g<Left><Left>
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
noremap Y y$
nmap <silent> ff <Plug>(easymotion-overwin-f2)
nmap <silent> fl <Plug>(easymotion-overwin-line)
nmap <leader>s <Plug>CtrlSFPrompt

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
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"ctrslf
vmap <leader>sw <Plug>CtrlSFVwordPath
"terminal mapping
tnoremap <Esc> <C-\><C-n>
"vim-styled syntax
"autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
"autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
