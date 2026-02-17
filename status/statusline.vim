" Custom Statusline (Simple)
" ========================

" Always show the statusline
set laststatus=2

" Build the statusline string
set statusline=
set statusline+=%#StatusLine#          " Default highlight
set statusline+=\ %F                   " Full file path
set statusline+=%m                     " Modified flag '[+]'
set statusline+=%r                     " Read-only flag '[RO]'
set statusline+=%=                     " Left/right separator
set statusline+=%#StatusLineNC#        " Highlight for non-current windows
set statusline+=\ %Y                   " Filetype
set statusline+=\ |                    " Separator
set statusline+=\ %l/%L                " Line out of Total
set statusline+=\ |                    " Separator
set statusline+=\ %p%%                 " Percentage through file
set statusline+=\ 
