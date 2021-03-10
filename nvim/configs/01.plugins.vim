call plug#begin('~/.config/nvim/bundle')
"nvim treesitter
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'majutsushi/tagbar'

Plug 'voldikss/vim-floaterm'
Plug 'qpkorr/vim-bufkill'
Plug 'rust-lang/rust.vim'
"Plug 'racer-rust/vim-racer'
Plug 'chriskempson/base16-vim'
Plug 'ryanoasis/vim-devicons'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tpope/vim-fugitive'

Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'
Plug 'alvan/vim-closetag'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
"Plug 'vim-airline/vim-airline',{'commit':'c7a633ce8f4547e680377efe8ea70493fcce1349'}
"Plug 'vim-airline/vim-airline-themes'
"fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'dense-analysis/ale'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

"neovim lspconfig
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'psliwka/vim-smoothie'
Plug 'hoob3rt/lualine.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()
