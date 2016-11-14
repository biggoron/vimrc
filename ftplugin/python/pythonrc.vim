"configuration file for python files

"put syntax on
:syntax on
:setlocal foldmethod=indent
"comment a line
"χ is altgr-c
"∁ is altgr-shift-c
:nnoremap <buffer> χ :s/^/#<cr> 
:nnoremap <buffer> ∁ :s/^#//<cr> 

"wrap a python line with \
:nnoremap <buffer> <localleader>\ A\<cr><esc>

"stubs
:iabbrev <buffer> iff if:<left>
:iabbrev <buffer> forr for:<left>
:iabbrev <buffer> rr returj

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
:setlocal shiftwidth=2
:setlocal autoindent
:setlocal smarttab
:setlocal expandtab
:setlocal tabstop=2

" To debug
:ab deb1 print("here1")
:ab deb2 print("here2")
:ab deb3 print("here3")

"usual packages
:ab iwave import pywt
:ab iwaved import pywt.data
:ab inp import numpy as np
:ab iplt import matplotlib.pyplot as plt
:ab ima import math as math

"execute current file with python 3.5 with muhe-3
:nnoremap ⅜ :!python3.5 %:p<cr>
"execute current file with python 2.7 with muhe-2
:nnoremap ⅛ :!python2.7 %:p<cr>

"indent
:nnoremap » >>
:nnoremap « <<

"pyplot
:nnoremap πp oplt.plot(π)<esc>
:nnoremap πs oplt.show()<esc>
:ab πs plt.show()
:ab πp plt.plot()

"execute current file
:nnoremap €€ :! python2.7 % <cr>
