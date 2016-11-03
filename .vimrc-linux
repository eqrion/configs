set nocompatible
filetype off

"
" Vundle
"

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
call vundle#end()

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

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>pt :NerdTreeToggle<cr>

map <C-r> :CtrlPBugTag
map <C-R> :CtrlPTag

map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
map <leader>e :edit <c-r>=expand("%:p:h")<cr>/
map <leader>cd :cd %:p:h<cr>:pwd<cr>

"
" Advanced Settings
"

" Delete trailing whitespace on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening file
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

"
" Plugin Settings
"

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'papercolor'

let g:easytags_async = 1
let g:easytags_opts = ['--exclude=debug --exclude=release --languages=C++']

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"
" Load Vim Configuration for Projects
"

set exrc
set secure
