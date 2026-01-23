" Open files
command! Files call fzf#run(fzf#wrap({'sink': 'e'}))

" Buffers
command! Buffers call fzf#run(fzf#wrap({
      \ 'source': map(range(1, bufnr('$')), 'bufname(v:val)'),
      \ 'sink': 'buffer'
      \ }))

" Recent files
command! History call fzf#run(fzf#wrap({
      \ 'source': v:oldfiles,
      \ 'sink': 'e'
      \ }))

