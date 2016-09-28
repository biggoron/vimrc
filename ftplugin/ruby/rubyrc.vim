:autocmd Filetype ruby :setlocal wrap
:autocmd Filetype ruby :setlocal wrapmargin=2
:autocmd Filetype ruby :setlocal shiftwidth=2
:autocmd Filetype ruby :setlocal autoindent
:autocmd Filetype ruby :setlocal smarttab
:autocmd Filetype ruby :setlocal expandtab
:autocmd Filetype ruby :setlocal tabstop=2
"comment line with alt-gr c
:nnoremap χ :call Comment()<cr>
:vnoremap χ :call Comment()<cr><cr>

"uncomment line with win c
:nnoremap ç :call Uncomment()<cr>
:vnoremap ç :call Uncomment()<cr><cr>

:function Comment()
: s/^/#/e
: s/^# /#/e
:endfunction

:function Uncomment()
: s/# /  /e
: s/#//e
:endfunction

"transform word

"to symbol
:nnoremap σ bi:<esc>e

"execute file with alt-gr enter
:nnoremap ¬ :!ruby %:p<cr>

"-----------rails commands prefill---------------
"edit files in folder ...
"⌖ is alt-gr and :
:nnoremap ⌖ev :e app/views/
:nnoremap ⌖ec :e app/controllers/
:nnoremap ⌖em :e app/models/
:nnoremap ⌖ef :e config/
:nnoremap ⌖ea :e app/assets/
:nnoremap ⌖eg :e db/migrate/
:nnoremap ⌖sc :e db/schema.rb/
:nnoremap ⌖r :e config/routes.rb/
:nnoremap ξgg :! rake generate migration 

"ξ is alt-gr and x
:nnoremap ξr :! rake routes<cr>
:nnoremap ξm :! rake db:migrate<cr>
:nnoremap ξb :! rake bundle install<cr>

"A trier
:nnoremap ∃rs :vsp ~/.vim/bundle/vim-snippets/snippets/ruby-snippets <cr>
