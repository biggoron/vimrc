"configuration file for python files
:nnoremap <buffer> <F5> :vsplit $JSRC<cr>
:nnoremap <buffer> <F6> :source $JSRC<cr>

"put syntax on
:syntax on
:setlocal foldmethod=indent
:nnoremap «« :setlocal foldmethod=indent<cr>
:nnoremap «µ :setlocal foldmethod=manual<cr>
"comment a line
"» is altgr-c
"” is altgr-shift-c
" TODO
:nnoremap <buffer> ¢ :s/^/#<cr> 
:nnoremap <buffer> © :s/^#//<cr> 
:vnoremap <buffer> ¢ :s/^/#<cr> 
:vnoremap <buffer> © :s/^#//<cr> 

"surround with ...
"s -> str()
"f -> float()
"i -> int()
"p -> print()
"l -> len()
"" -> doublequotes
"" TODO
:vnoremap <buffer> <localleader>s :s/\%V\(.*\)\%V/str(ø\1)/<cr>føx
:vnoremap <buffer> <localleader>f :s/\%V\(.*\)\%V/float(ø\1)/<cr>føx
:vnoremap <buffer> <localleader>i :s/\%V\(.*\)\%V/int(ø\1)/<cr>føx
:vnoremap <buffer> <localleader>p :s/\%V\(.*\)\%V/print(ø\1)/<cr>føx
:vnoremap <buffer> <localleader>l :s/\%V\(.*\)\%V/len(ø\1)/<cr>føx
:vnoremap <buffer> <localleader>" :s/\%V\(.*\)\%V/"ø\1"/<cr>føx
:vnoremap <buffer> <localleader>c :s/\%V\(.*\)\%V/\/*ø\1*\//<cr>føx
" huge trick: to go to beginning of current word: *N
" the usual b doesn't work
"in normal mode the shortcuts apply to current word
:nnoremap <buffer> <localleader>s *Nistr(<esc>ea)<esc>b
:nnoremap <buffer> <localleader>f *Nifloat(<esc>ea)<esc>b
:nnoremap <buffer> <localleader>i *Niint(<esc>ea)<esc>b
:nnoremap <buffer> <localleader>p *Niprint(<esc>ea)<esc>b
:nnoremap <buffer> <localleader>l *Nilen(<esc>ea)<esc>b
:nnoremap <buffer> <localleader>" *Ni"<esc>ea"<esc>b

:nnoremap <buffer> <localleader>⅜  T(xt)x

"shift setlocaltings 
" TODO
:setlocal shiftround
:setlocal shiftwidth=2
:setlocal autoindent
:setlocal smarttab
:setlocal expandtab
:setlocal tabstop=2

" Snippets
:nnoremap <buffer> <F8> :vsp ~/.vim/snippets/javascript/
:nnoremap <buffer> <F7> :source ~/.vim/snippets/javascript/

" Linter
:let b:ale_linters = ['eslint']
:let b:ale_fixers = ['prettier', 'eslint']
:let b:ale_completion_enabled = 1
:let g:ale_sign_error = '⛔'
:let g:ale_sign_warning = '⚠️'
