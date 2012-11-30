" A minimal vimrc for new vim users to start with.
"
" Referenced here: http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
"
" Original Author:	 Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Currently hacked on by:  Ian Bibby
" Last change:	         2012 Nov 10
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
call pathogen#infect()

" Make backspace behave in a sane manner.
set backspace=indent,eol,start
set tabstop=2
set shiftwidth=2
set expandtab

" Hiding a buffer suppresses the unsaved changes warning
set hidden 

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Display line numbers
set number
set numberwidth=3

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
