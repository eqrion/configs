set nocompatible
filetype off

"
" Vundle
"

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
call vundle#end()

"
" Plugin Settings
"

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'papercolor'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

filetype plugin indent on

"
" General Settings
"

syntax enable
syntax on

set t_Co=256          " colors
set encoding=utf8     " encoding
set ffs=unix,dos,mac  " line endings

set hidden            " don't close buffers when we leave them
set nobackup          " no ~ files
set nowb              " no write buffer
set noswapfile        " no swap file
set splitright        " split vertical to right
set splitbelow        " split horizontal to below

set expandtab         " expand tabs to spaces
set shiftwidth=2      " 2 character spaces
set tabstop=2         " 2 character tab stops

set incsearch         " show matches while typing
set hlsearch          " highlight search matches
set ignorecase        " search case insensitive
set smartcase         " but not if pattern has upper case characters

"
" Shortcuts
"

map <leader>pt :NerdTreeToggle<cr>

map <C-r> :CtrlPBufTag
map <C-R> :CtrlPTag

map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
map <leader>e :edit <c-r>=expand("%:p:h")<cr>/
map <leader>cd :cd %:p:h<cr>:pwd<cr>

"
" Load Vim Configuration for Projects
"

set exrc
set secure
