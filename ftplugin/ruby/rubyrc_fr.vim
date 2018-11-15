"open snippets
"∃ is win-e
:nnoremap ∃sr :vsp ~/.vim/bundle/vim-snippets/snippets/ruby.snippets

"comment line with alt-gr c
:nnoremap © :call Comment()<cr>
:vnoremap © :call Comment()<cr><cr>

"uncomment line with win c
:nnoremap ç :call Uncomment()<cr>
:vnoremap ç :call Uncomment()<cr><cr>

if !exists("*Comment")
	:function Comment()
	: s/^/#/e
	: s/^# /#/e
	:endfunction
endif

:function! Uncomment()
  :silent! s/\v^( *)#/ô\1ô /
  :silent! s/ôô //
  :silent! s/\vô( *)ô/\1/
:endfunction

" escape character
:nnoremap \ i\<esc>l

"new commented line - ▓ is win enter
:inoremap ▓ <esc>yyp/\v[^# ]<cr>c$
:nnoremap ▓ yyp/\v[^# ]<cr>c$ô<esc>
"o command in comentary section - type win o
:nnoremap ⌀ yyp/\v[^# ]<cr>c$

"to symbol
:nnoremap <localleader>σ bi:<esc>e

"execute file with alt-gr enter
:nnoremap ≃ :!ruby %:p<cr>

"-----------rails commands prefill---------------
"edit files in folder ...
"÷ is alt-gr and :
:nnoremap ÷ev :e app/views/
:nnoremap ÷ec :e app/controllers/
:nnoremap ÷em :e app/models/
:nnoremap ÷ef :e config/
:nnoremap ÷ea :e app/assets/
:nnoremap ÷eg :e db/migrate/
:nnoremap ÷sc :e db/schema.rb/
:nnoremap ÷r :e config/routes.rb/

"» is alt-gr and x
:nnoremap »gg :! rake generate migration 
:nnoremap »r :! rake routes<cr>
:nnoremap »m :! rake db:migrate<cr>
:nnoremap »b :! rake bundle install<cr>

"----- Templates for usual constructs -----

" class
:nnoremap <localleader>c o<cr>class ô<cr>end<cr><esc>kO  ô<esc>?class<cr>

" method, with or without args, with or without self.
:nnoremap <localleader>def o<cr>def ô<cr>end<cr><esc>kO  ô<esc>?def<cr>
:nnoremap <localleader>def( o<cr>def ô(ô)<cr>end<cr><esc>kO  ô<esc>?def<cr>
:nnoremap <localleader>defs o<cr>def self.ô<cr>end<cr><esc>kO  ô<esc>?def<cr>
:nnoremap <localleader>defs( o<cr>def self.ô(ô)<cr>end<cr><esc>kO  ô<esc>?def<cr>
:nnoremap <localleader>ini o<cr>def initialize<cr>end<cr><esc>kO  ô<esc>?def<cr>
:nnoremap <localleader>ini( o<cr>def initialize(ô)<cr>end<cr><esc>kO  ô<esc>?def<cr>

" Each loop
:nnoremap <localleader>each wbEa.each do \|ô\|<cr>end<cr><esc>kO  ô<esc>?do<cr>


"
"----- Usual abbreviations -----
:ab a_a attr_accessor
" clear expanded regex bloc
:ab êê %r{<cr>}x<esc>O  ô<esc>s
" regex named bloc
:ab ê< (?<ô> ô)<esc>?ô>s

"execute vim command in line
"€ is altgr e
:nnoremap €c :call ExecLine()<cr>

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
