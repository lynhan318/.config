return function()
    local cmd = vim.cmd
    vim.o.termguicolors = true
    cmd('colorscheme base16-ocean')
    cmd('hi! Normal ctermbg=NONE guibg=NONE')
    cmd('hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE')
    cmd('hi! LineNr  ctermfg=8 ctermbg=NONE guifg=#65737e guibg=NONE')
end
