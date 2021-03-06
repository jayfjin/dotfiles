" my vimrc

""""""""""""
" Pathogen "
""""""""""""

call pathogen#infect()
Helptags

""""""
" UI "
""""""

" disable vi compatibility
set nocompatible

" automatically load changed files
set autoread

" show the filename in the window titlebar
set title

" set encoding
set encoding=utf-8

" display incomplete commands at the bottom
set showcmd

" mouse support
set mouse=a

" line row, col
set ruler

" ignore whitespace in diff mode
set diffopt+=iwhite

" Be able to arrow key and backspace across newlines
set whichwrap=bs<>[]

" Make backspace not terrible
set backspace=indent,eol,start

" Status bar
set laststatus=2

" remember last cursor position
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ 	exe "normal g`\"" |
	\ endif

" proper word wrapping
set wrap
set linebreak

" enable completion
set ofu=syntaxcomplete#Complete

" make laggy connections work faster
set ttyfast

" let vim open up to 100 tabs at once
set tabpagemax=100

"""""""""""""
" Shortcuts "
"""""""""""""

" easy-align in visual mode
vmap <Enter> <Plug>(EasyAlign)

" for faster motion
nmap <C-j> 20j
nmap <C-k> 20k

" emacs-like spell correction with <c-l> that puts you back in insert
imap <C-l> <C-g>u<Esc>[s1z=`]A<C-g>u

"""""""""""""
" Searching "
"""""""""""""

set nohlsearch "no search highlighting by default
set incsearch "while typing a search command, show immediately where the so far typed pattern matches
set ignorecase "ignore case in search patterns
set smartcase "override the 'ignorecase' option if the search pattern contains uppercase characters
set gdefault "imply global for new searches

"""""""""""""
" Indenting "
"""""""""""""

" When auto-indenting, use the indenting format of the previous line
set copyindent
" Tabs are stupid
set tabstop=4
set shiftwidth=4
set expandtab
" Copy indent from current line when starting a new line (typing <CR> in Insert
" mode or when using the "o" or "O" command)
set autoindent
" Automatically inserts one extra level of indentation in some cases, and works
" for C-like files
set smartindent

"""""""""
" Theme "
"""""""""

syntax enable
colorscheme default
set background=light

""""""""
" GVim "
""""""""

" disable cursor blinking
set gcr=n:blinkon0

" remove menu bar
set guioptions-=m
set guifont=Monaco:h13


"""""""""""""""""""""
" Language-Specific "
"""""""""""""""""""""

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
au BufRead,BufNewFile *.html.erb set ft=eruby

" Add json syntax highlighting
au BufNewFile,BufRead *.json set ft=json syntax=javascript

" Add markdown syntax highlighting
au BufNewFile,BufRead *.md set ft=markdown 
