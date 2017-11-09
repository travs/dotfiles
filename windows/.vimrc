" ----------------------------------------------------------------------------
"  vundle
" ----------------------------------------------------------------------------

set nocompatible              " be iMproved, required by vundle
filetype off                  " required by vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'    " vundle itself
Plugin 'duythinht/inori'      " inori colorscheme
Plugin 'sclarki/neonwave.vim' " ギャラリー
Plugin 'kien/ctrlp.vim'       " Ctrl+p plugin
Plugin 'stulzer/heroku-colorscheme' " heroku-looking
Plugin 'jordwalke/flatlandia' " f l a t
Plugin 'chriskempson/vim-tomorrow-theme' " not today
Plugin 'vim-scripts/snipMate' " snippet inserting (tab-completion)
Plugin 'tpope/vim-surround'   " plugin to deal with surroundings
Plugin 'christoomey/vim-tmux-navigator' " cool with tmux panes now
Plugin 'valloric/MatchTagAlways'    " match closing html tags
"Plugin 'klen/python-mode'   " _/\__/\__0>
Plugin 'lervag/vimtex'      " for lAtEcK
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'tpope/vim-dispatch'

call vundle#end()            " required by vundle

" ----------------------------------------------------------------------------
" colors
" ----------------------------------------------------------------------------

syntax enable
colorscheme tomorrow-night-eighties
autocmd FileType python hi colorcolumn ctermbg=red " configure highlighting
hi cursorline cterm=NONE ctermbg=blue ctermfg=white " configure highlighting
hi LineNr ctermfg=grey " line number colours

" ---------------------------------------------------------------------------- 
" Editor configuration
" ----------------------------------------------------------------------------

let g:python_host_prog = '/usr/local/bin/python'  " python path for neovim
let mapleader = ","     " Rebind <Leader> key
map <Leader>n <esc>:tabprevious<CR> " easier moving between tabs
map <Leader>m <esc>:tabnext<CR>
vnoremap <Leader>s :sort<CR>    " map sort function to a key
vnoremap < <gv " better indentation " easier moving of code blocks
vnoremap > >gv " better indentation

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase
"
" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>


" ----------------------------------------------------------------------------
" PyMode configuration
" ----------------------------------------------------------------------------

"let g:pymode_rope_autoimport = 0    " turn auto-import off
"let g:pymode_rope_complete_on_dot = 0   " turn off dot completion trigger
"let g:pymode_rope = 0   " it's just too slow for now
"let g:pymode_rope_lookup_project = 0    " this is slow for me as well
"let g:pymode_rope_completion = 0
"let g:pymode_lint_on_write = 0

" ----------------------------------------------------------------------------
" VimTeX configuration
" ----------------------------------------------------------------------------

let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options
\ = '-reuse-instance -forward-search @tex @line @pdf'
"let g:vimtex_view_general_options_latexmk = '-reuse-instance'
let g:vimtex_latexmk_options = '-pdf -f'

" ----------------------------------------------------------------------------
" UI Configuration
" ----------------------------------------------------------------------------

set shortmess+=I	           " Remove splash screen
set number 	                 " turn on line numbers
set showcmd                  " show command in bottom bar
set wildmenu                 " visual autocomplete for command menu
set showmatch                " highlight matching [{()}]
set colorcolumn=80

set cursorline               " highlight current line

filetype plugin indent on    " required
filetype plugin on

" ----------------------------------------------------------------------------
" tabs and editing
" ----------------------------------------------------------------------------

set backspace=indent,eol,start " delete things inserted in other sessions
set tabstop=4                " size of a hard tabstop
set shiftwidth=4             " size of an 'indent'
set smarttab                 " 'tab' insert indents line start, not tabs
set expandtab                " always uses spaces instead of tab characters
set softtabstop=0            " a combination of spaces and tabs simulate tab
                             " stops at width other than the (hard)tabstop

" ----------------------------------------------------------------------------
"  moving around
" ----------------------------------------------------------------------------

nnoremap ∆ :m .+1<CR>==  " move line down in normal mode
nnoremap ˚ :m .-2<CR>==  " move line up in normal mode
inoremap ∆ <Esc>:m .+1<CR>==gi " move line down in insert mode
inoremap ˚ <Esc>:m .-2<CR>==gi " move line up in insert mode
vnoremap ∆ :m '>+1<CR>gv=gv " move line down in visual mode
vnoremap ˚ :m '<-2<CR>gv=gv " move line up in visual mode

" ---------------------------------------------------------------------------
"  command remaps
"  --------------------------------------------------------------------------

command! WQ wq     " I like to hold the shift key down 
command! Wq wq     " for
command! W w       " too
command! Q q       " long


