runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#infect("~/vimfiles/bundle/tools/{}")
execute pathogen#infect("~/vimfiles/bundle/langs/{}")
execute pathogen#helptags()
set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
"let mapleader = "\"

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
color solarized
if has("gui_running")
  nnoremap <c-j> <c-w><c-w>
  nnoremap <c-k> <c-w>W
  nnoremap <c-h> <c-w>h
  nnoremap <c-l> <c-w>l
  nnoremap <F2> <c-^>
endif
set tags=tags;/
au BufRead,BufNewFile *.scons		set filetype=python
set go=
set number
