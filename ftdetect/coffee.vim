au BufNewFile,BufRead *.coffee :call Set_coffee()

:function! Set_coffee()
: set filetype=javascript
:endfunction

