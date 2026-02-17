let mapleader = " "

" For go to the parent directory
nnoremap <leader>cd :Ex<CR>

" ===== FZF keybindings =====
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>h :History<CR>

"==== Highlighting shortcut ====
nnoremap <silent> <leader><Esc> :nohlsearch<CR>

"===== navigation shortcuts =====
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"===== advanced keybindings =====
" Don't use Q for Ex mode, use it for formatting.
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" ===== Convert to HTML =====
command! TOhtml :TOhtml

" ===== Spell Checking =====
" The following keybindings are for spell checking.
" They are only active when spell checking is enabled.
" Move to the next misspelled word.
nnoremap <silent> <leader>sn ]s
" Move to the previous misspelled word.
nnoremap <silent> <leader>sp [s
" Add the word under the cursor to the spell file.
nnoremap <silent> <leader>sa zg
" Mark the word under the cursor as a spelling mistake.
nnoremap <silent> <leader>sw zw
" Show spelling suggestions for the word under the cursor.
nnoremap <silent> <leader>ss z=

" ===== Compile and Run =====
nnoremap <silent> <leader>c :Compile<CR>
nnoremap <silent> <leader>r :Run<CR>
nnoremap <silent> <leader>cr :CompileAndRun<CR>

" ===== Test Case Handling =====
nnoremap <silent> <leader>ti :CreateInputFile<CR>
nnoremap <silent> <leader>te :CreateExpectedOutputFile<CR>
nnoremap <silent> <leader>td :RunAndDiff<CR>

" ===== Code Snippets (Abbreviations) =====
" Golang
autocmd FileType go iab <buffer> mainf func main() {\<CR>}\<ESC>kA
autocmd FileType go iab <buffer> forr for i, v := range  { }<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" Rust
autocmd FileType rust iab <buffer> mainf fn main() {\<CR>}\<ESC>kA
autocmd FileType rust iab <buffer> forr for x in  { }<Left><Left><Left><Left>

" Bash
autocmd FileType sh iab <buffer> shbang #!/bin/bash\<CR>\<CR>
autocmd FileType sh iab <buffer> iff if [ ]\<CR>then\<CR>fi<Left><Left><Left><Left><Left><Left><Left><Left><Left>


" ===== FZF additions =====
" Search for text in the project using fzf with ripgrep (if available)
nnoremap <silent> <leader>a :Ag<CR>
" Search for lines in all open buffers
nnoremap <silent> <leader>l :Lines<CR>
" Search for git commits
nnoremap <silent> <leader>gc :Commits<CR>

" ===== Quickfix List Navigation =====
nnoremap <leader>co :copen<CR>
nnoremap <leader>cc :cclose<CR>
nnoremap <leader>cn :cnext<CR>
nnoremap <leader>cp :cprev<CR>

" ===== Session Management =====
nnoremap <leader>ss :mksession! Session.vim<CR>
nnoremap <leader>sl :source Session.vim<CR>



" ===== Code Folding =====
" Toggle a fold under the cursor
nnoremap <leader>ft za
" Open all folds
nnoremap <leader>fo zR
" Close all folds
nnoremap <leader>fc zM



" ===== Git Integration =====
" Show git status in a new horizontal split
nnoremap <leader>gs :split \| terminal git status<CR>
" Show git diff for the current file in a new vertical split
nnoremap <leader>gd :vsplit \| terminal git diff %<CR>
" Show git blame for the current file in a new vertical split
nnoremap <leader>gb :vsplit \| terminal git blame %<CR>

