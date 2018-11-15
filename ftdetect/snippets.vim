au BufNewFile,BufRead *.snippets :call Set_snippets()

:function! Set_snippets()
: set filetype=snippets
:endfunction

