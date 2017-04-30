au BufNewFile,BufRead *.snippets :call Set_snippet()

:function! Set_snippet()
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
