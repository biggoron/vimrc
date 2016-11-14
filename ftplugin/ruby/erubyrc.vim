:source $HTMLRC

:autocmd Filetype eruby :setlocal wrap
:autocmd Filetype eruby :setlocal wrapmargin=2
:autocmd Filetype eruby :setlocal shiftwidth=2
:autocmd Filetype eruby :setlocal autoindent
:autocmd Filetype eruby :setlocal smarttab
:autocmd Filetype eruby :setlocal expandtab
:autocmd Filetype eruby :setlocal tabstop=2

" Open snippets
:nnoremap ∃snip :vsplit ~/.vim/bundle/vim-snippets/eruby.snippets<cr>
:nnoremap ∃hsnip :vsplit ~/.vim/bundle/vim-snippets/eruby.snippets<cr>
