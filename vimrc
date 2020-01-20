" Author: Ninad Khargonkar
" Save vim config file to ~/.vimrc


" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set background=dark
"set term=screen-256color
colorscheme Tomorrow-Night
syntax on      "enable syntax processing

" Tabs and spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set backspace=indent,eol,start  " allow backspacing over everything in insert mode

" display indentation guides
" set list listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×
" :set listchars=tab:\|\ 
" :set list


" convert spaces to tabs when reading file
" autocmd! bufreadpost * set noexpandtab | retab! 4

" convert tabs to spaces before writing file
autocmd! bufwritepre * set expandtab | retab! 4

" convert spaces to tabs after writing file (to show guides again)
" autocmd! bufwritepost * set noexpandtab | retab! 4

" Long line marker
:set colorcolumn=80
" Completion
set complete-=i

" Interface
set number         " line numbering
set ruler          " set cursor position
set cursorline     " highlight current line
filetype indent on 
set wildmenu       " visual autocomplete
set showmatch      " highlight matching brackets

" Searching
set history=50
set showcmd         " display incomplete commands
set incsearch      " search asap chars enter
set hlsearch       " highlight matches

" Folding
set foldenable
set foldlevelstart=10
set foldmethod=indent


" Custom Key Mappings
" Map <Esc> key to <jj> (nearer to <i> key) 
inoremap jj <Esc>
