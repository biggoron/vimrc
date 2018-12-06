"configuration file for python files
:nnoremap <buffer> <F5> :vsplit $PYTHONRC<cr>
:nnoremap <buffer> <F6> :source $PYTHONRC<cr>

"put syntax on
:syntax on
:setlocal foldmethod=indent
"comment a line
"» is altgr-c
"” is altgr-shift-c
:nnoremap <buffer> ¢ :s/^/#<cr>
:nnoremap <buffer> © :s/^#//<cr>
:vnoremap <buffer> ¢ :s/^/#<cr>
:vnoremap <buffer> © :s/^#//<cr>

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

"execute current file with python 3.5 with muhe-3
:nnoremap <buffer> <localleader>run :!python3.5 %:p<cr>
"execute current file with python 2.7 with muhe-2
:nnoremap <buffer> <localleader>érun :!python2.7 %:p<cr>

" Snippets
:nnoremap <buffer> <F8> :vsp ~/.vim/snippets/python/
:nnoremap <buffer> <F7> :source ~/.vim/snippets/python/

" Abbreviation
:ab đ False
:ab ŧ True

"indent
:nnoremap à >>
:nnoremap ç <<

"pyplot
:nnoremap <buffer> <localleader>ppp oplt.plot(@@@)<esc>
:nnoremap <buffer> <localleader>pps oplt.show()<esc>

" Snippets
:nnoremap <buffer> <F9> :vsp ~/.vim/bundle/vim-snippets/snippets/python.snippets <cr>

" Linter
:let b:ale_completion_enabled = 1
:let g:ale_sign_error = '⛔'
:let g:ale_sign_warning = '⚠️'

"
:autocmd! BufWritePre * %s/\s\+$//e
