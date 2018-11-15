:au BufNewFile,BufRead *.txt :call Set_minitest()

:function! Set_minitest()
:	let first_lines = getline(1, 10)
: let token = 0
: for line_text in first_lines
:   let token_scan = matchstr(line_text, "# Running:")
:   if len(token_scan) ==# 0
:   	let token = 1
:   endif
: endfor
: if token ==# 1
: 	set filetype=minitest_log
: endif
:endfunction

