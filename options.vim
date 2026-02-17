" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

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

" keep a backup file (restore to previous version)
set backup
set backupdir=~/.vim/backup//

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

" Mouse settings
set mouse=a

" time out for key codes
set ttimeout
set ttimeoutlen=100

" Show @@@ in the last line if it is truncated.
set display=truncate

" Do not recognize octal numbers for Ctrl-A and Ctrl-X, most users find it
" confusing.
set nrformats-=octal

" When editing a file, always jump to the last known cursor position.
augroup vimStartup
  autocmd!
  autocmd BufReadPost *
    \ let line = line("'\"")
    \ | if line >= 1 && line <= line("$") && &filetype !~# 'commit'
    \      && index(['xxd', 'gitrebase', 'tutor'], &filetype) == -1
    \      && !&diff
    \ |   execute "normal! g`\""
    \ | endif
augroup END

" Prevent that the langmap option applies to characters that result from a
" mapping.
set nolangremap

" ===== HTML Folding =====
let g:html_expr_folding = 1

" ===== Spell Checking =====
" Uncomment the following lines to enable spell checking.
set spell
set spelllang=en_us

" ===== Templates =====
augroup templates
  autocmd!
  " For competitive programming
  autocmd BufNewFile *.cpp 0r ~/.vim/templates/template.cpp
  autocmd BufNewFile *.py 0r ~/.vim/templates/template.py
  autocmd BufNewFile *.java 0r ~/.vim/templates/template.java
  autocmd BufNewFile *.c 0r ~/.vim/templates/template.c
  autocmd BufNewFile *.go 0r ~/.vim/templates/template.go
  autocmd BufNewFile *.rs 0r ~/.vim/templates/template.rs
  autocmd BufNewFile *.sh 0r ~/.vim/templates/template.sh
  " For web development and Docker
  autocmd BufNewFile *.html 0r ~/.vim/templates/template.html
  autocmd BufNewFile *.css 0r ~/.vim/templates/template.css
  autocmd BufNewFile *.js 0r ~/.vim/templates/template.js
  autocmd BufNewFile Dockerfile 0r ~/.vim/templates/template.dockerfile
  " Additional languages
  autocmd BufNewFile *.s,*.asm 0r ~/.vim/templates/template.asm
  autocmd BufNewFile *.lua 0r ~/.vim/templates/template.lua
  autocmd BufNewFile *.nim 0r ~/.vim/templates/template.nim
  autocmd BufNewFile *.kt 0r ~/.vim/templates/template.kt
  autocmd BufNewFile *.pl 0r ~/.vim/templates/template.pl
augroup END


" Better command-line completion
set wildmenu
set wildmode=longest:full,full

" Live preview for substitution commands
" set inccommand=split

" Better completion menu behavior
set completeopt=menu,menuone,noselect


" ===== Code Folding Settings =====
" Enable code folding
set foldenable
" Start with all folds open
set foldlevelstart=99

" Set fold method based on filetype
augroup filetype_folds
  autocmd!
  " Indent-based folding for Python and similar languages
  autocmd FileType python,yaml,ruby setlocal foldmethod=indent
  " Syntax-based folding for Vimscript, XML, etc.
  autocmd FileType vim,xml,html,c,cpp,java setlocal foldmethod=syntax
augroup END



" ===== Integrated Linting Settings =====
" Set up :make for Python files to use flake8 for linting
augroup filetype_linting
  autocmd!
  autocmd FileType python setlocal makeprg=flake8\ %
augroup END

