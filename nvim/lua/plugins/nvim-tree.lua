return function()
  -- mappings
  vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("n", "<leader>l", ":NvimTreeRefresh<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("n", "<leader>>", ":NvimTreeFindFile<CR>", { noremap = true, silent = true })

  vim.o.termguicolors = true
  
  vim.g.nvim_tree_side = 'left'
  vim.g.nvim_tree_width = 30
  vim.g.nvim_tree_ignore = {".git", ".DS_Store", ".cache", "node_modules"}
  vim.g.nvim_tree_auto_open = 1
  vim.g.nvim_tree_auto_close = 0
  vim.g.nvim_tree_quit_on_open = 0
  vim.g.nvim_tree_follow = 1
  vim.g.nvim_tree_indent_markers = 0
  vim.g.nvim_tree_hide_dotfiles = 0
  vim.g.nvim_tree_git_hl = 1
  vim.g.nvim_tree_root_folder_modifier = ':~'
  vim.g.nvim_tree_tab_open = 1
  vim.g.nvim_tree_width_allow_resize  = 0
  vim.g.nvim_tree_show_icons = {
    git = 1,
    folders = 1,
    files = 1,
  }

  vim.g.nvim_tree_icons = {
      default = "",
      symlink = "",
      git = {
          unstaged = "",
          staged = "",
          unmerged = "",
          renamed = "➜",
          untracked = "★"
      },
      folder = {
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = ""
      }
  }
  
  local function get_lua_cb(cb_name)
    return string.format(":lua require'nvim-tree'.on_keypress('%s')<CR>", cb_name)
  end

  vim.g.nvim_tree_bindings = {
    ["<cr>"] = get_lua_cb("edit"),
    ["<s-cr>"] = get_lua_cb("close_node"),
    ["o"] = get_lua_cb("edit"),
    ["<BS>"] = get_lua_cb("close_node"),
    ["l"] = get_lua_cb("edit"),
    ["h"] = get_lua_cb("close_node"),
    ["|"] = get_lua_cb("vsplit"),
    ["_"] = get_lua_cb("split"),
  }
  
end
