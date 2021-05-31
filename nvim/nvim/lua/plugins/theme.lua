return function()
    local cmd = vim.cmd
    vim.o.termguicolors = true
    cmd('colorscheme base16-ocean')
    cmd('hi! Normal ctermbg=NONE guibg=NONE')
    cmd('hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE')
    cmd('hi! LineNr  ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE')
    cmd('hi! CursorLineNr  ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE')
    cmd('highlight CursorLineNr  guibg=NONE')
    cmd('highlight LineNr guibg=NONE')
end
