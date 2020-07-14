" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    
    " File Explorer
    Plug 'scrooloose/NERDTree'
    
    " Have the file system follow you around
    Plug 'airblade/vim-rooter'

    " Cool Icons
    Plug 'ryanoasis/vim-devicons'
    
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Closetags
    Plug 'alvan/vim-closetag'
    
    " Themes
    Plug 'christianchiarulli/onedark.vim'

    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    " Status Line
    Plug 'vim-airline/vim-airline'

    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    
    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'

    " Start Screen
    Plug 'mhinz/vim-startify'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
