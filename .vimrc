set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'moll/vim-bbye'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()            " required
filetype plugin indent on    " required

set number 	" turn on line numbers 
set shortmess+=I		"Remove splash screen

" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=2

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=0

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" always uses spaces instead of tab characters
set expandtab

" set tab to cycle buffers
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" set ctrl-dir to switch windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" set cmd-w to close buffer but not window
nnoremap <D-w> :Bdelete<CR>

" turn off default mode status
:set noshowmode

" compatibility for airline with powerline fonts
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
