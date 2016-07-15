:source $HTMLRC

:autocmd Filetype eruby :setlocal wrap
:autocmd Filetype eruby :setlocal wrapmargin=2
:autocmd Filetype eruby :setlocal shiftwidth=2
:autocmd Filetype eruby :setlocal autoindent
:autocmd Filetype eruby :setlocal smarttab
:autocmd Filetype eruby :setlocal expandtab
:autocmd Filetype eruby :setlocal tabstop=2

"erb tab
":nnoremap <localleader>5 i<% π %><esc>Fπx
" = erb tab
":nnoremap <localleader>6 i<%= π %><esc>Fπx
" if condition
":nnoremap <localleader>c i<% if π %><cr><% else %><cr><% end %><esc>?π<cr>x

" for loop 
":nnoremap <localleader>f i<% for π in π do%><cr>π<cr><% end %><esc>?π<cr>
