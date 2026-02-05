" This is for number line and Animation
set number
set relativenumber

" This is for the smart bar in under section
set laststatus=2

" This is for smart tab and backing
filetype plugin indent on
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent

set backspace=indent,eol,start

" This is for syntax highlighting
syntax on

" This is for colorscheme
colorscheme pablo

" Cursor context
set cursorline
set scrolloff=8
set sidescrolloff=8

" Better command-line feedback
set showcmd
set showmode

" Search behavior
set ignorecase
set smartcase
set incsearch
set hlsearch

" Persistent undo
set undofile
set undodir=~/.vim/undo//

" Split behavior
set splitbelow
set splitright

" Brackets, indentation, formatting
set autoindent
set smarttab
set formatoptions+=cro

" Highlight matching brackets
set showmatch
set matchtime=2
