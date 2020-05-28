function! ClipboardYank()
    call system('pbcopy',@@)
endfunction

function! ClipboardPaste()
    let @@=system('pbpaste')
endfunction
