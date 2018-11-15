:setlocal wrap
:setlocal softtabstop=2
:setlocal wrapmargin=2
:setlocal shiftwidth=2
:setlocal autoindent
:setlocal smarttab
:setlocal expandtab
:setlocal tabstop=2

:nnoremap <localleader>editsnippets :vsp ~/.vim/bundle/vim-snippets/snippets/ruby.snippets
:nnoremap <localleader>sourcesnippets :source ~/.vim/bundle/vim-snippets/snippets/ruby.snippets

"comment line with alt-gr c
:nnoremap © :call Comment()<cr>
:vnoremap © :call Comment()<cr><cr>

"uncomment line with win c
:nnoremap ç :call Uncomment()<cr>
:vnoremap Ç :call Uncomment()<cr><cr>

if !exists("*Comment")
:function! Comment()
: s/^/#/e
: s/^# /#/e
:endfunction
endif

if !exists("*Uncomment")
:function! Uncomment()
  :silent! s/# /  /e
  :silent! s/#//e
:endfunction
endif

"transform word
"to symbol
:nnoremap σ bi:<esc>e

"execute file with alt-gr enter
:nnoremap ░ :!ruby %:p<cr>

" escape character
:nnoremap \ i\<esc>l

"new commented line - ▓ is win enter
:inoremap ▓ <esc>yyp/\v[^# ]<cr>c$
:nnoremap ▓ yyp/\v[^# ]<cr>c$ô<esc>
"o command in comentary section - type win o
:nnoremap ⌀ yyp/\v[^# ]<cr>c$

"-----------rails commands prefill---------------
"edit files in folder ...
"⌖ is alt-gr and :
:nnoremap ÷ev :e app/views/
:nnoremap ÷ec :e app/controllers/
:nnoremap ÷em :e app/models/
:nnoremap ÷ef :e config/
:nnoremap ÷ea :e app/assets/
:nnoremap ÷eg :e db/migrate/
:nnoremap ÷sc :e db/schema.rb/
:nnoremap ÷r :e config/routes.rb/
:nnoremap »gg :! rake generate migration 

"ξ is alt-gr and x
:nnoremap »r :! rake routes<cr>
:nnoremap »m :! rake db:migrate<cr>
:nnoremap »b :! rake bundle install<cr>

" VIM interaction
"execute vim command in line
"» is altgr x
:nnoremap »c :call ExecLine()<cr>

:function! ExecLine()
  let line=getline('.')
  let comment_split=split(line, " ")
  if len(comment_split) > 1 && comment_split[0] ==? "#vim"
    let command = join(comment_split[1:-1], " ")
    let @" = command
    if comment_split[1] ==# ':e'
      :silent! @"
    else
      :@"
    endif
  endif
:endfunction

" VIM scripting

