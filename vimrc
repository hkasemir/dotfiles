set nocompatible
"""""""""""""""""""""
" Colors
syntax enable
colorscheme jellybeans

"""""""""""""""""""""
" Spaces
set backspace=indent,eol,start
set autoindent
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
nnoremap <leader><space> :nohlsearch<CR>

"""""""""""""""""""""
" Folding

"""""""""""""""""""""
" Movement
set mouse=a
set whichwrap=<,>,[,],h,l
nnoremap j gj
nnoremap k gk
nnoremap E $


"""""""""""""""""""""
" Leader Shortcut
let mapleader=","
inoremap jk <esc>




""""""""""""""""""""
" Plugins
call plug#begin('~/.vim/plugged')

Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'

call plug#end()

""""""""""""""""""""""""""""""""
" autogroups
autocmd vimenter * NERDTree

