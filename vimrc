" ===== Load core config =====
source ~/.vim/options.vim
source ~/.vim/keybinds.vim

" ===== Load plugins =====
source ~/.vim/plugins/fzf.vim
source ~/.vim/plugins/mod_ff.vim
source ~/.vim/plugins/compiler.vim
if has('debugger')
  packadd! termdebug
endif

" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
if has('syntax') && has('eval')
  packadd! matchit
endif

" ===== Statusline =====
source ~/.vim/status/statusline.vim

" ===== Color =====
source ~/.vim/colors/pablo.vim
