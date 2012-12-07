" .vimrc file for Ian Bibby
call pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set history=10000
" Allow unsaved background buffers
set hidden
" Make backspace behave in a sane manner.
set backspace=indent,eol,start
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
" show incomplete commands
set showcmd
" Display extra whitespace
set list listchars=tab:»·,trail:·
" Display line numbers
set number
set numberwidth=3
" Switch syntax highlighting on
syntax on
" If non-terminal, then make use of the solarized plugin
if has('gui_running')
  set background=dark
  colorscheme solarized
endif
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
" Store temporary files in a central spot
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ARROW KEYS ARE UNACCEPTABLE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
