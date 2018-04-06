set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.local/share/nvim/plugged')
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'gmarik/Vundle.vim'
Plug 'moll/vim-bbye'
Plug 'pangloss/vim-javascript'
Plug 'tomlion/vim-solidity'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'junegunn/vim-slash'
Plug 'moll/vim-bbye'
Plug 'lervag/vimtex'
Plug 'junegunn/vim-easy-align'
Plug 'dylanaraps/wal.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
call plug#end()

filetype plugin indent on

syntax on   " hilighting
colorscheme  wal
hi Normal ctermbg=NONE      " remove background color

set number 	                " turn on line numbers 
set shortmess+=I		    " remove splash screen

set tabstop=4
set shiftwidth=2
set softtabstop=0
set smarttab
set expandtab
" set smartcase

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

" solidity-specific settings
autocmd FileType solidity setlocal shiftwidth=4

" linter settings
" let g:ale_lint_delay = 5000

" >using a mouse
set mouse=a

" CtrlP
let g:ctrlp_cmd = 'CtrlPMRU'
