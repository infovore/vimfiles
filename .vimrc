
" .vimrc
" heavily inspired by
" http://stevelosh.com/blog/2010/09/coming-home-to-vim/#why-i-came-back-to-vim
"

" Load Pathogen
filetype off
call pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible

set modelines=0

" tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" colors
"set background=dark
colorscheme molokai
"colorscheme solarized

" odds and ends
"

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

" new leader
let mapleader = ","

" set swp/tmp files to use a common location and stop cluttering up my
" directories
set backupdir=~/.vim/tmp,~/tmp,/tmp
set directory=~/.vim/tmp,~/tmp,/tmp

"tame searching and moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Handle Long Lines correctly
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" show invisibles like txm
set list
set listchars=tab:▸\ ,eol:¬

" disable arrow keys; fix j and k
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" disable help key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" map ; to :
nnoremap ; :

" save on lose focus
au FocusLost * :wa

" ruby hashrocket on c-l
imap <c-l> <space>=><space>

" Clear search buffer on carraige return
:nnoremap <CR> :nohlsearch<cr>
nnoremap <leader><leader> <c-^>

" open vimrc in new window.
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" another mapping for exiting INSERT mode
inoremap jj <ESC>

" Window handling

" open new vertical split and swap to it
nnoremap <leader>w <C-w>v<C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" actionscript 3 files end .as
au BufRead,BufNewFile *.as set filetype=actionscript
au BufRead,BufNewFile *.treetop set filetype=ruby
