set nocompatible
"""""""""""""""""""""
" Colors
syntax enable
colorscheme jellybeans

"""""""""""""""""""""
" Spaces
set backspace=indent,eol,start
set autoindent
set expandtab
set tabstop=8
set shiftwidth=2

"""""""""""""""""""""
" UI Config
set number
set cursorline
set wildmenu
set lazyredraw
filetype indent on    " required
filetype plugin on    " required

"""""""""""""""""""""
" Searching
set hlsearch
set incsearch

"""""""""""""""""""""
" Folding

"""""""""""""""""""""
" NerdTree
autocmd bufenter * if (winnr("$") == 1 &&
      \ exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"""""""""""""""""""""
" Movement
set mouse=a
set whichwrap=<,>,[,],h,l
nnoremap j gj
nnoremap k gk
nnoremap E $
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_

"""""""""""""""""""""
" Leader Shortcut
let mapleader="X"
nnoremap <leader><space> :nohlsearch<CR>
inoremap jk <esc>


""""""""""""""""""""
" Plugins
call plug#begin('~/.vim/plugged')

Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe', { 'on': []  }
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

call plug#end()

""""""""""""""""""""""""""""""""
" autogroups
autocmd vimenter * NERDTree
let g:user_emmet_leader_key='X'

""""""""""""""""""""""""""""""""
" Backups
set backup
set backupdir=~/.local/bkp/vim
set backupskip=/tmp/*private/tmp/*
set directory=~/.local/bkp/vim/swap
set writebackup

""""""""""""""""""""""""""""""""
" YouCompleteMe
augroup load_us_ycm
  autocmd!
  autocmd InsertEnter * call plug#load('YouCompleteMe')
        \| call youcompleteme#Enable() | autocmd! load_us_ycm
augroup END
