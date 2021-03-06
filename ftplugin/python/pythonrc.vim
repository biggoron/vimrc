"configuration file for python files
:nnoremap <buffer> <F5> :vsplit $PYTHONRC<cr>
:nnoremap <buffer> <F6> :source $PYTHONRC<cr>

:function! SaveImport()
:  let @i = expand("%")
:  let @i = substitute(@i, '/', '.', 'g')
:  let @i = substitute(@i, 'src.', '', 'g')
:  let @i = substitute(@i, '.py', '', 'g')
:endfunction
" Stores text to import current file in i buffer
nnoremap <localleader>i :call SaveImport()<cr>


"put syntax on
:syntax on
:setlocal foldmethod=manual

"wrap a python line with \
:nnoremap <buffer> <localleader>w A\<cr><esc>

"operator pending movements
:onoremap <buffer> b /return<cr>

"surround with ...
"s -> str()
"f -> float()
"i -> int()
"p -> print()
"l -> len()
"" -> doublequotes
:vnoremap <buffer> <localleader>s :s/\%V\(.*\)\%V/str(ø\1)/<cr>føx
:vnoremap <buffer> <localleader>f :s/\%V\(.*\)\%V/float(ø\1)/<cr>føx
:vnoremap <buffer> <localleader>i :s/\%V\(.*\)\%V/int(ø\1)/<cr>føx
:vnoremap <buffer> <localleader>p :s/\%V\(.*\)\%V/print(ø\1)/<cr>føx
:vnoremap <buffer> <localleader>l :s/\%V\(.*\)\%V/len(ø\1)/<cr>føx
:vnoremap <buffer> <localleader>" :s/\%V\(.*\)\%V/"ø\1"/<cr>føx
" huge trick: to go to beginning of current word: *N
" the usual b doesn't work
"in normal mode the shortcuts apply to current word
:nnoremap <buffer> <localleader>s *Nistr(<esc>ea)<esc>b
:nnoremap <buffer> <localleader>f *Nifloat(<esc>ea)<esc>b
:nnoremap <buffer> <localleader>i *Niint(<esc>ea)<esc>b
:nnoremap <buffer> <localleader>p *Niprint(<esc>ea)<esc>b
:nnoremap <buffer> <localleader>l *Nilen(<esc>ea)<esc>b
:nnoremap <buffer> <localleader>" *Ni"<esc>ea"<esc>b

"shift setlocaltings
:setlocal shiftround
:setlocal shiftwidth=4
:setlocal autoindent
:setlocal smarttab
:setlocal expandtab
:setlocal tabstop=4

" Snippets
:nnoremap <buffer> <F8> :vsp ~/.vim/snippets/python/
:nnoremap <buffer> <F7> :source ~/.vim/snippets/python/

" Abbreviation
:ab ± False
:ab þ True

" Snippets
:nnoremap <buffer> <F9> :vsp ~/.vim/bundle/vim-snippets/snippets/python.snippets <cr>

" Linter
:let b:ale_linters = ["pylint"]
:let b:ale_fixers = ["isort", "yapf", "remove_trailing_lines", "trim_whitespace"]
:let b:ale_completion_enabled = 1
:let g:ale_sign_error = '⛔'
:let g:ale_sign_warning = '⚠️'

" Wrap arguments in function
:nnoremap <leader>b yypk^f(f d$j^f(f ldT(hv0r ^

" Method movement
:nnoremap <Leader>j /def<cr>zz
:nnoremap <Leader>J /return<cr>zz
:nnoremap <Leader>k ?def<cr>zz
:nnoremap <Leader>K ?return<cr>zz
:onoremap <Leader>j /def<cr>
:onoremap <Leader>J /return<cr>
:onoremap <Leader>k ?def<cr>
:onoremap <Leader>K ?return<cr>
:vnoremap <Leader>j /def<cr>
:vnoremap <Leader>J /return<cr>
:vnoremap <Leader>k ?def<cr>
:vnoremap <Leader>K ?return<cr>

" Jedi Autocompletion
let g:jedi#goto_command = "<space>d"
let g:jedi#goto_assignments_command = "<space>g"
let g:jedi#goto_definitions_command = "<space>D"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<space>*"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

" Execution
" Execute file in console
:nnoremap :: :exec '!python' shellescape(@%, 1)<cr>
" Quick run via <F5>
nnoremap !! :call <SID>compile_and_run()<CR>
function! s:compile_and_run()
    exec 'w'
    exec "AsyncRun! time python %"
endfunction
" Open QuickFix automatically
let g:asyncrun_open = 15
"
" Jedi is slow in insert mode otherwise
let g:jedi#show_call_signatures = "0"
