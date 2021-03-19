local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

-- Only required if you have packer in your `opt` pack
vim.cmd('packadd packer.nvim')

-- vim.cmd [[ autocmd BufWritePost packed.lua PackerCompile ]]

return require('packer').startup(
  function()
    use {'wbthomason/packer.nvim', opt = true}


    -- Icons
    use {'ryanoasis/vim-devicons'}
    use {'kyazdani42/nvim-web-devicons', config = require('plugins.nvim-web-devicons')}

    -- Auto pairs for '(' '[' '{'
    -- use {'jiangmiao/auto-pairs'};
    use {"windwp/nvim-autopairs", config = require'plugins.nvim-autopairs'}

    -- Colorizer
    use {'norcalli/nvim-colorizer.lua', config = require'plugins.nvim-colorizer'}

    -- Comment
    use {'tpope/vim-commentary'};

    -- Git
    use {'airblade/vim-gitgutter'};
    use {'tpope/vim-fugitive'};

    -- LSP
    use {'neovim/nvim-lspconfig', config = require'plugins.nvim-lspconfig'};
    -- use {'nvim-lua/lsp_extensions.nvim', config = require'plugins.lsp-extensions'};
    
    -- Surround
    use {'tpope/vim-surround'};

    -- Closetags
    -- FIXME
    use {'alvan/vim-closetag', config = require'plugins.vim-closetag'};

    -- Sneak
    use {'justinmk/vim-sneak', config = require'plugins.vim-sneak'};

    -- Bbye (Buffer Bye)
    use {'moll/vim-bbye'};

    -- Ranger
    use {'kevinhwang91/rnvimr', config = require'plugins.rnvimr'};

    
    -- Telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
      config = require'plugins.telescope'
    }

    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', 
      run = ':TSUpdate', 
      config = require'plugins.nvim-treesitter'
    }

    -- Snippets
    use {"hrsh7th/vim-vsnip", requires = "hrsh7th/vim-vsnip-integ", config = require"plugins.vim-vsnip"}

    -- Completion
    use {'hrsh7th/nvim-compe', config = require'plugins.nvim-compe'}

    -- Smooth scroll
    use {'psliwka/vim-smoothie'}

    -- Theme
    use {'chriskempson/base16-vim', config = require('plugins.theme')}
    -- Status line
    use {
      'hoob3rt/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true},
      config = require'plugins.galaxyline'
    }
    use {'rust-lang/rust.vim'}

    -- Defx 
    use {'kristijanhusak/defx-icons'};
    use {'kristijanhusak/defx-git'};
    use {
     'Shougo/defx.nvim',
      requires = {{'kristijanhusak/defx-icons'}, {'kristijanhusak/defx-git'}},
      run = ':UpdateRemotePlugins'
    };
  end
)
