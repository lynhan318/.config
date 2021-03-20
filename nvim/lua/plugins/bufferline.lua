return function()
    -- mappings
    vim.api.nvim_set_keymap("n", "<TAB>", ":BufferLineCycleNext<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", {noremap=true})
    local colors = {
        terminal_color_0 =  "#2b303b",
        terminal_color_1 =  "#bf616a",
        terminal_color_2 =  "#a3be8c",
        terminal_color_3 =  "#ebcb8b",
        terminal_color_4 =  "#8fa1b3",
        terminal_color_5 =  "#b48ead",
        terminal_color_6 =  "#96b5b4",
        terminal_color_7 =  "#c0c5ce",
        terminal_color_8 =  "#65737e",
        terminal_color_9 =  "#bf616a",
        terminal_color_10 = "#a3be8c",
        terminal_color_11 = "#ebcb8b",
        terminal_color_12 = "#8fa1b3",
        terminal_color_13 = "#b48ead",
        terminal_color_14 = "#96b5b4",
        terminal_color_15 = "#eff1f5",
    }
    require "bufferline".setup {
        options = {
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 18,
        enforce_regular_tabs = true,
        view = "multiwindow",
        show_buffer_close_icons = true,
        separator_style = "thin"
        },
        highlights = {
        background = {
            guifg = comment_fg,
            guibg = colors.terminal_color_0
        },
        fill = {
            guifg = comment_fg,
            guibg = colors.terminal_color_0
        },
        buffer_selected = {
            guifg = normal_fg,
            guibg = colors.terminal_color_0,
            gui = "bold"
        },
        separator_visible = {
            guifg = colors.terminal_color_0,
            guibg = colors.terminal_color_0
        },
        separator_selected = {
            guifg = colors.terminal_color_0,
            guibg = colors.terminal_color_0
        },
        separator = {
            guifg = colors.terminal_color_0,
            guibg = colors.terminal_color_0
        },
        indicator_selected = {
            guifg = colors.terminal_color_0,
            guibg = colors.terminal_color_0
        },
        modified_selected = {
            guifg = string_fg,
            guibg = "#3A3E44"
        }
        }
    }
end
