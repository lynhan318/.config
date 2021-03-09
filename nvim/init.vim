"for f in split(glob('~/.config/nvim/configs/*.vim'), '\n')
  "exe 'source' f
"endfor

source $HOME/.config/nvim/configs/01.plugins.vim
source $HOME/.config/nvim/configs/02.configs.vim
source $HOME/.config/nvim/configs/03.settings.vim
source $HOME/.config/nvim/configs/lsp.vim
"source $HOME/.config/nvim/configs/coc.vim
source $HOME/.config/nvim/configs/defx.vim
source $HOME/.config/nvim/configs/floaterm.vim
source $HOME/.config/nvim/configs/functions.vim

luafile $HOME/.config/nvim/lua/status.lua
luafile $HOME/.config/nvim/lua/lsp.lua

