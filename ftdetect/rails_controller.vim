au BufNewFile,BufRead *_controller.rb :call Set_railsctrl()

:function! Set_railsctrl()
:   let first_line = getline(1, 10)
:   let token = 0
:   for line_text in getline(1,10)
:       let token_scan = matchstr(line_text, "Controller < ApplicationController")
:       if len(token_scan) ==# 0
:           let token = 1
:       endif
:   endfor
:   if token ==# 1
":       set filetype=railsctrl
:       set filetype=ruby
:   else
:       set filetype=ruby
:   endif
:endfunction
