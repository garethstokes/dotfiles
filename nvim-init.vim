set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-dispatch.git'
Plugin 'radenling/vim-dispatch-neovim'
Plugin 'fatih/vim-go'
Plugin 'mileszs/ack.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'elmcast/elm-vim'
Plugin 'w0rp/ale'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

map <C-n> :NERDTreeToggle<CR>

" neovim
set termguicolors
colorscheme molokai

set ts=2
set sw=2
set nu
set noswapfile
set colorcolumn=80
set mouse=a
set expandtab

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'

" tsuquyomi overrides ctrl-6 so this disables that 
let g:tsuquyomi_disable_default_mappings = 1

" elm
let g:elm_format_autosave = 1

" disable tslint for ale
" https://github.com/w0rp/ale/blob/master/doc/ale-typescript.txt
let g:ale_linters_ignore = {'typescript': ['tslint']}
