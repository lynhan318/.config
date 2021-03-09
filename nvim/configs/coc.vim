let g:coc_global_extensions = [
      \ 'coc-tsserver',
      \ 'coc-html',
      \ 'coc-css',
      \ 'coc-python',
      \ 'coc-yaml',
      \ 'coc-json',
      \ 'coc-vimlsp',
      \ 'coc-emmet',
      \ 'coc-tag',
      \ 'coc-prettier',
      \ ]

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'H ' . expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"nmap <silent> <leader> ca <Plug>(coc-codeaction-selected)
nmap <silent> <leader> rn <Plug>(coc-rename)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
"nmap <leader>a v<Plug>(coc-codeaction-selected)


hi! CocErrorSign guifg=#d97084
hi! CocWarningSign guifg=#e9cb87
hi! CocInfoSign guifg=#d0d2d2
hi! CocHintSign guifg=#6face4
autocmd CursorHold * silent call CocActionAsync('highlight')
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
