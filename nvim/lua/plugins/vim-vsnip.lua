return function()
    local cmd = vim.cmd
    -- UltiSnips setting
    vim.g.UltiSnipsExpandTrigger = "<c-i>"
    vim.g.UltiSnipsJumpForwardTrigger = "<c-n>"
    vim.g.UltiSnipsJumpBackwardTrigger = "<c-p>"
    -- vim.g.vsnip_snippet_dir = "~/.config/nvim/snippets"
end
