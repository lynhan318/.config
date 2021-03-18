local g = vim.g
local api = vim.api
local cmd = api.nvim_command

g.mapleader = ' ' -- Set leader key

cmd('set hidden')                              -- Required to keep multiple buffers open multiple buffers
cmd('set lazyredraw')                          -- Improve scrolling performance when navigating through large results
cmd('set ttyfast')                             -- U got a fast terminal
cmd('set synmaxcol=4096')                      -- Limit syntax highlight
cmd('set nowrap')                              -- Display long lines as just one line
cmd('set encoding=utf-8')                      -- The encoding displayed
cmd('set pumheight=10')                        -- Makes popup menu smaller
cmd('set fileencoding=utf-8')                  -- The encoding written to file
cmd('set ruler')              			           -- Show the cursor position all the time
cmd('set cmdheight=2')                         -- More space for displaying messages
cmd('set iskeyword+=-')                      	 -- treat dash separated words as a word text object--
cmd('set mouse=a')                             -- Enable your mouse
cmd('set splitbelow')                          -- Horizontal splits will automatically be below
cmd('set splitright')                          -- Vertical splits will automatically be to the right
cmd('set t_Co=256')                            -- Support 256 colors
cmd('set conceallevel=0')                      -- So that I can see `` in markdown files
cmd('set tabstop=2')                           -- Insert 2 spaces for a tab
cmd('set shiftwidth=2')                        -- Change the number of space characters inserted for indentation
cmd('set smarttab')                            -- Makes tabbing smarter will realize you have 2 vs 4
cmd('set expandtab')                           -- Converts tabs to spaces
cmd('set smartindent')                         -- Makes indenting smart
cmd('set autoindent')                          -- Good auto indent
cmd('set cursorline')                          -- Enable highlighting of the current line
cmd('set number')                              -- Show current line number
cmd('set relativenumber')                      -- Show relative line numbers
cmd('set background=dark')                     -- Tell vim what the background color looks like
cmd('set showtabline=2')                       -- Always show tabs
cmd('set noshowmode')                          -- We don't need to see things like -- INSERT -- anymore
cmd('set nobackup')                            -- This is recommended by coc
cmd('set nowritebackup')                       -- This is recommended by coc
cmd('set updatetime=300')                      -- Faster completion
cmd('set timeoutlen=500')                      -- By default timeoutlen is 1000 ms
cmd('set formatoptions-=cro')                  -- Stop newline continution of comments
-- cmd('set formatoptions-=c formatoptions-=r formatoptions-=o') -- Stop newline continution of comments
cmd('set clipboard=unnamed,unnamedplus')       -- Copy paste between vim and everything else
-- Filetype plugin indent on
cmd('set nu rnu')
cmd('set completeopt=menu,menuone,noselect')
cmd('set signcolumn=yes')
cmd('set shortmess+=c')
function nvim_create_augroups(definitions)
	for group_name, definition in pairs(definitions) do
		api.nvim_command('augroup '..group_name)
		api.nvim_command('autocmd!')
		for _, def in ipairs(definition) do
			-- if type(def) == 'table' and type(def[#def]) == 'function' then
			-- 	def[#def] = lua_callback(def[#def])
			-- end
			local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
			api.nvim_command(command)
		end
		api.nvim_command('augroup END')
	end
end

local autocmds = {
  highlight_yank = {
    {"TextYankPost", "*", "silent! lua require'vim.highlight'.on_yank{'IncSearch', 200}"};
  };
  -- https://vi.stackexchange.com/a/1985
  no_comment_on_new_line = {
    {'FileType', '*', 'set fo-=c fo-=r fo-=o'};
  },
}

nvim_create_augroups(autocmds)

-- file types
cmd('autocmd BufNewFile,BufRead *.txml set filetype=xml')
cmd('autocmd BufNewFile,BufRead *.tcss set filetype=css')
cmd('autocmd BufNewFile,BufRead *.axml set filetype=xml')
cmd('autocmd BufNewFile,BufRead *.acss set filetype=css')
cmd('autocmd BufNewFile,BufRead *.mdx set filetype=markdown.mdx')
