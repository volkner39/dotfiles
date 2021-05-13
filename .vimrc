set nocompatible
filetype off

" Plugins managed by Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'itchyny/lightline.vim'

call vundle#end()



" Remap jj to Esc
inoremap jj <Esc>

" Leader Key
" let mapleader=""

" Turn on Syntax
syntax on

" Encoding
set encoding=utf-8
set fileencoding=utf-8

" Load filetype, plugin and indent events
filetype plugin indent on

" Set the status bar using Lightline Plugin
set laststatus=2
let g:lightline = { 'colorscheme' : 'powerline', }


" Line Number
set number

" Delete swap and backup files
set noswapfile
set nobackup

" Don't re-draw screen when macro runs
set lazyredraw

" Change color scheme
colorscheme slate

" Set tab width
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Change tab to spaces
set expandtab

" Ignore case when searching
set ignorecase

" Set Autocomplete
set wildmode=longest,list,full

" Copy+Paste Clipboard
set clipboard=unnamedplus

" Spellcheck
map <F6> :setlocal spell! spelllang=en_us<CR>

" Remove Trailing Whitespace
autocmd BufWritePre * %s/\s\+$//e

" now set it up to change the status line based on mode
if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=red
  au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
endif
