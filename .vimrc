:set nocompatible
:set encoding=utf-8

"Pathogen, for plugins
execute pathogen#infect()

"colorscheme
syntax enable
:set t_Co=16
set background=dark
colorscheme solarized

" NERDTree
:nnoremap þ :NERDTreeToggle<cr>


"Configuration file
:syntax on

"to use colorschemes, enable 256 colors:
":set t_Co=256
":colorscheme mine
":nnoremap ∃c :vsplit ~/.vim/colors/mine.vim<cr>

"take win+e for edit commands ∃        
"quick edit .vimrc in a split of the screen
:nnoremap ∃v :vsplit ~/.vim/.vimrc<cr> 
"∃: win + e


"quick edit vim ideas:
:nnoremap ∃i :vsplit ~/.vim/ideas.vim

"win + s is for sourcing files ₪
"quick source main config file .vimrc
:nnoremap ₪v :source $MYVIMRC<cr>
"₪: win + s

"definition of leader key
:let mapleader = "ù"

"definition of local leader key
:let maplocalleader = "à" 

"toggle a fold
:nnoremap <space> za

"search for placeholder
:nnoremap ô /ô<cr>
"altgr+p 

:nnoremap Ô ?ô<cr>
"altgr+shift+p 

"quick position marking:
:nnoremap ö 'm
"altgr + m 


"left side numbers
:set number

"move line up / down
:nnoremap ï kddpk
:nnoremap ü ddp
"ï : altgr + k
"ü : altgr + j

"uppercase
:nnoremap û viwUe
"û : alt-gr + u
"en mode insertion
:inoremap <c-u> <esc>viwUea

"default indenting and tabbing
"indent is a multiple of shiftwidth
:setlocal shiftround
:setlocal shiftwidth=2
"indent by default each line like the one before
:setlocal autoindent
"a tab shifts the remaining text on the right to
"a multiple of shiftwidth
:setlocal smarttab
"tabs are blanks
:setlocal expandtab
"nb of spaces corresponding to a tab
:setlocal tabstop=2

:augroup atlaunch
:autocmd!
  "go to relevant section when editing keyboard layout
  :autocmd BufReadPost french_programming /symbols
:augroup END

"TODO: for each group which call an external config file, put
"      some keystroke to load the good locale

"Load conf for python files
:let $PYTHONRC = $HOME."/.vim/ftplugin/python/pythonrc.vim"
:nnoremap ∃prc :vsplit $PYTHONRC<cr>
" ∃: win + e

:augroup Python
:autocmd!
  :autocmd Filetype python :source $PYTHONRC
:augroup END

"Load conf for ruby files
:let $RUBYRC = $HOME."/.vim/ftplugin/ruby/rubyrc.vim"
:let $RUBYRCFR = $HOME."/.vim/ftplugin/ruby/rubyrc_fr.vim"

"English configuration
:nnoremap ∃rrc :vsplit $RUBYRC<cr>
:nnoremap ₪rrc :source $RUBYRC<cr>
"French configuration
:nnoremap ∃rrcfr :vsplit $RUBYRCFR<cr>
:nnoremap ₪rrcfr :source $RUBYRCFR<cr>
:nnoremap ∃rc :vsplit ~/.vim/colors/ruby.vim<cr>
:command! RubyGr vsp /usr/share/vim/vim74/syntax/ruby.vim
" ∃: win + e

:augroup Ruby
:autocmd!
  "remove FR to get english keyboard conf for ruby, or use the archived
  "vimrc file for english keyboards
  :autocmd Filetype ruby :source $RUBYRCFR
  :autocmd Filetype ruby :setlocal wrap
  :autocmd Filetype ruby :setlocal wrapmargin=2
  :autocmd Filetype ruby :setlocal shiftwidth=2
  :autocmd Filetype ruby :setlocal autoindent
  :autocmd Filetype ruby :setlocal smarttab
  :autocmd Filetype ruby :setlocal expandtab
  :autocmd Filetype ruby :setlocal softtabstop=2
:augroup END

"Load conf for eruby files
:let $ERUBYRC = $HOME."/.vim/ftplugin/ruby/erubyrc.vim"
:nnoremap ∃errc :vsplit $ERUBYRC<cr>
:command! ErubyGr vsp /usr/share/vim/vim74/syntax/eruby.vim
  :nnoremap ∃erc :vsplit ~/.vim/colors/eruby.vim<cr>
" ∃: win + e

:augroup eRuby
:autocmd!
  :autocmd Filetype eruby :source $ERUBYRC
:augroup END

"Load conf for scss files
:let $SCSSRC = $HOME."/.vim/ftplugin/css/scssrc.vim"
:nnoremap ∃scssrc :vsplit $SCSSRC<cr>
:command! ScssGr vsp /usr/share/vim/vim74/syntax/scss.vim
:nnoremap ∃scssc :vsplit ~/.vim/colors/scss.vim<cr>
" ∃: win + e

:augroup scss
:autocmd!
  :autocmd Filetype scss :source $SCSSRC
:augroup END

"Load conf for html files
:let $HTMLRC = $HOME."/.vim/ftplugin/html/htmlrc.vim"
:nnoremap ∃htmlrc :vsplit $HTMLRC<cr>
:command! HtmlGr vsp /usr/share/vim/vim74/syntax/html.vim
:nnoremap ∃htmlc :vsplit ~/.vim/colors/html.vim<cr>
" ∃: win + e

:augroup html
:autocmd!
  :autocmd Filetype html :source $HTMLRC
:augroup END

"Load conf for css files
:let $CSSRC = $HOME."/.vim/ftplugin/css/cssrc.vim"
:nnoremap ∃cssrc :vsplit $CSSRC<cr>
:command! CssGr vsp /usr/share/vim/vim74/syntax/css.vim
:nnoremap ∃cssc :vsplit ~/.vim/colors/css.vim<cr>
" ∃: win + e

:augroup css
:autocmd!
  :autocmd Filetype css :source $CSSRC
:augroup END

" conf for vimscript
:augroup vimScript
:autocmd!
  ":autocmd Filetype vim :source $ERUBYRC
  :syntax match Shortcut "\v^(\S)*remap \zs\S*"
  :highlight link Shortcut Error
:augroup END

"in parenthesis / brackets / braces
 "i( i[ i{ works, just like i" i' i<
"in the next parenthesis
:onoremap in( :<c-u>normal! f(vi(<cr>
"in the last parenthesis
:onoremap il( :<c-u>normal! F)vi(<cr>
"in the next brackets
:onoremap in[ :<c-u>normal! f[vi[<cr>
"in the last brackets
:onoremap il[ :<c-u>normal! F]vi[<cr>
"in the next braces
:onoremap in{ :<c-u>normal! f{vi{<cr>
"in the last braces
:onoremap in{ :<c-u>normal! F{vi{<cr>

"switch to relative numbers
:nnoremap ê :set relativenumber!<cr>
" ê : altgr-r

"wrapping lines
:set wrap
:set textwidth=0
:set wrapmargin=0
:set linebreak
:set nolist
:set tabstop=2

"show matching parens
:set showmatch
:set matchtime=1

"handling _ words
"« is alt-gr and w
"TODO

"put the line at the end of the previous line
"æ is alt-gr and a
"TODO look at ruby file

"remap the directionnal pad to switch split
:nnoremap <Left> <C-W>h
:nnoremap <Right> <C-W>l
:nnoremap <Up> <C-W>k
:nnoremap <Down> <C-W>j

"prefill search command
"ß is alt-gr and s, „ is the same with shift
:nnoremap σ :s/
:nnoremap Σ :%s/

"save the file
"░ is alt-gr and enter
:nnoremap ░ :w<cr>

" Tabularize
:vnoremap <localleader>t= :Tabularize /=<cr>
:vnoremap <localleader>t, :Tabularize /,\zs<cr>
:vnoremap <localleader>t⌛ :Tabularize / <cr>
:nnoremap <localleader>t= :Tabularize /=<cr>
:nnoremap <localleader>t, :Tabularize /,\zs<cr>
:nnoremap <localleader>t⌛ :Tabularize / <cr>

" Fast registered deletion
" δ is win and d
" Δ is win, shift and d
:nnoremap δ "dd
:nnoremap Δ "_d
:nnoremap π "dp
:nnoremap Π "dP

" Center the screen after movement
:nnoremap h hzz
:nnoremap j jzz
:nnoremap k kzz
:nnoremap l lzz
" ⌛ is alt-gr and space
:nnoremap ⌛ <esc>zz
:vnoremap ⌛ <esc>zz
:inoremap ⌛ <esc>zz

" A ranger

:function! RepeatCommand(command, ...)
: if a:0 > 0
:   let l:step = a:1 . "m"
: else
:   let l:step = "10m"
: end

: let c = 1
: while c <= 10
:   execute "normal! " . a:command
:	  let c = c + 1
:   execute "sleep " . l:step
:   redraw!
: endwhile  
:endfunction

" win makes movement 10 times faster
:nnoremap 𝑗 :call RepeatCommand("jzz", "8")<cr>
:nnoremap 𝑘 :call RepeatCommand("kzz", "8")<cr>
