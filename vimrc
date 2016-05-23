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

"""""""""""""""""""""
" Folding

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
let mapleader=","
nnoremap <leader><space> :nohlsearch<CR>
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
let g:user_emmet_leader_key=','
