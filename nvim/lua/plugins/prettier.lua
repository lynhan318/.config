return function()
    local formatter = require('formatter')

    local function jsFormat()
        return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
            stdin = true
        }
    end

    vim.api.nvim_exec([[
        augroup FormatAutogroup
          autocmd!
          autocmd BufWritePost *.js,*.ts,*.rs,*.lua,*.jsx,*.tsx,*.md,*.mdx,*.yml,*.json,*.css,*.scss FormatWrite
        augroup END
    ]], true)

    formatter.setup({
        logging = false,
        filetype = {
            javascriptreact = {jsFormat},
            typescriptreact = {jsFormat},
            typescript = {jsFormat},
            javascript = {jsFormat},
            css = {jsFormat},
            json = {jsFormat},
            scss = {jsFormat},
            yaml = {jsFormat},
            rust = {
                -- Rustfmt
                function()
                    return {
                        exe = "rustfmt",
                        args = {"--emit=stdout"},
                        stdin = true
                    }
                end
            },
            lua = {
                -- luafmt
                function()
                    return {exe = "lua-format", stdin = true}
                end
            }
        }
    })
end
