" 100% Accurate Compiler & Runner for Core Languages
" Supported: C, C++, Python, Go, Rust, Ruby, Bash, Java

function! s:Compile()
  let l:dir = expand('%:p:h')
  let l:file = expand('%:t')
  let l:basename = expand('%:t:r')
  let l:ext = expand('%:e')

  if l:ext == 'cpp'
    execute 'term sh -c "cd ' . shellescape(l:dir) . ' && g++ ' . shellescape(l:file) . ' -o ' . shellescape(l:basename) . '"'
  elseif l:ext == 'c'
    execute 'term sh -c "cd ' . shellescape(l:dir) . ' && gcc ' . shellescape(l:file) . ' -o ' . shellescape(l:basename) . '"'
  elseif l:ext == 'java'
    execute 'term sh -c "cd ' . shellescape(l:dir) . ' && javac ' . shellescape(l:file) . '"'
  elseif l:ext == 'rs'
    execute 'term sh -c "cd ' . shellescape(l:dir) . ' && rustc ' . shellescape(l:file) . '"'
  else
    echo "No compilation needed or unsupported for " . l:ext
  endif
endfunction

function! s:Run()
  let l:dir = expand('%:p:h')
  let l:file = expand('%:t')
  let l:basename = expand('%:t:r')
  let l:ext = expand('%:e')

  let l:cmd = ''
  if l:ext == 'py'
    let l:cmd = 'python3 ' . shellescape(l:file)
  elseif l:ext == 'sh'
    let l:cmd = 'bash ' . shellescape(l:file)
  elseif l:ext == 'go'
    let l:cmd = 'go run ' . shellescape(l:file)
  elseif l:ext == 'rb'
    let l:cmd = 'ruby ' . shellescape(l:file)
  elseif l:ext == 'java'
    let l:cmd = 'java ' . shellescape(l:basename)
  elseif l:ext == 'cpp' || l:ext == 'c' || l:ext == 'rs'
    let l:cmd = './' . shellescape(l:basename)
  endif

  if l:cmd != ''
    execute 'term sh -c "cd ' . shellescape(l:dir) . ' && ' . l:cmd . '"'
  else
    echo "Unsupported filetype for running."
  endif
endfunction

function! s:CompileAndRun()
  let l:dir = expand('%:p:h')
  let l:file = expand('%:t')
  let l:basename = expand('%:t:r')
  let l:ext = expand('%:e')

  if l:ext == 'cpp'
    execute 'term sh -c "cd ' . shellescape(l:dir) . ' && g++ ' . shellescape(l:file) . ' -o ' . shellescape(l:basename) . ' && ./' . shellescape(l:basename) . '"'
  elseif l:ext == 'c'
    execute 'term sh -c "cd ' . shellescape(l:dir) . ' && gcc ' . shellescape(l:file) . ' -o ' . shellescape(l:basename) . ' && ./' . shellescape(l:basename) . '"'
  elseif l:ext == 'rs'
    execute 'term sh -c "cd ' . shellescape(l:dir) . ' && rustc ' . shellescape(l:file) . ' && ./' . shellescape(l:basename) . '"'
  elseif l:ext == 'java'
    execute 'term sh -c "cd ' . shellescape(l:dir) . ' && javac ' . shellescape(l:file) . ' && java ' . shellescape(l:basename) . '"'
  else
    call s:Run()
  endif
endfunction

function! s:RunAndDiff()
  let l:dir = expand('%:p:h')
  let l:file = expand('%:t')
  let l:basename = expand('%:t:r')
  let l:ext = expand('%:e')
  let l:out = 'output.txt'

  let l:cmd = ''
  if l:ext == 'py' | let l:cmd = 'python3 ' . shellescape(l:file)
  elseif l:ext == 'sh' | let l:cmd = 'bash ' . shellescape(l:file)
  elseif l:ext == 'go' | let l:cmd = 'go run ' . shellescape(l:file)
  elseif l:ext == 'rb' | let l:cmd = 'ruby ' . shellescape(l:file)
  elseif l:ext == 'java' | let l:cmd = 'java ' . shellescape(l:basename)
  elseif l:ext == 'cpp' || l:ext == 'c' || l:ext == 'rs' | let l:cmd = './' . shellescape(l:basename)
  endif

  if l:cmd != ''
    execute 'term sh -c "cd ' . shellescape(l:dir) . ' && ' . l:cmd . ' < input.txt > ' . l:out . '"'
    sleep 200m
    if filereadable(l:dir . '/expected_output.txt')
      execute 'vert diffsplit ' . l:dir . '/' . l:out
    endif
  endif
endfunction

command! Compile call <SID>Compile()
command! Run call <SID>Run()
command! CompileAndRun call <SID>CompileAndRun()
command! CreateInputFile edit input.txt
command! CreateExpectedOutputFile edit expected_output.txt
command! RunAndDiff call <SID>RunAndDiff()
