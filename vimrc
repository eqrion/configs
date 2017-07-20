set nocompatible
filetype plugin indent on

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
set shiftwidth=4      " 2 character spaces
set tabstop=4         " 2 character tab stops

set incsearch         " show matches while typing
set hlsearch          " highlight search matches
set ignorecase        " search case insensitive
set smartcase         " but not if pattern has upper case characters

map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
map <leader>e :edit <c-r>=expand("%:p:h")<cr>/
map <leader>cd :cd %:p:h<cr>:pwd<cr>

if executable('rg')
  let g:ackprg = 'rg'
endif

set exrc
set secure
