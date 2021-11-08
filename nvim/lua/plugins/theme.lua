return function()
    local cmd = vim.cmd
    vim.cmd('syntax on')
    vim.cmd('set termguicolors')
    vim.g.sonokai_style = 'andromeda'
    vim.g.sonokai_enable_italic = 1
    vim.g.sonokai_disable_italic_comment = 1
    cmd 'colorscheme sonokai'
end
