au BufNewFile,BufRead *.vim :call Set_vim()

:function! Set_vim()
  "default indenting and tabbing
  "indent is a multiple of shiftwidth
  :setlocal shiftround
  :setlocal shiftwidth=2
  "indent by default each line like the one before
  :setlocal autoindent
  "a tab shifts the remaining text on the right to
  "a multiple of shiftwidth
  :setlocal smarttab
  "tabs are blanks
  :setlocal expandtab
  "nb of spaces corresponding to a tab
  :setlocal tabstop=2
:endfunction

