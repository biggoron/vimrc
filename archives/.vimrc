:set nocompatible

"Configuration file
:syntax on

"to use colorschemes, enable 256 colors:
:set t_Co=256
:colorscheme mine
:nnoremap ∃c :vsplit ~/.vim/colors/mine.vim<cr>

"take win+e for edit commands ∃        
"quick edit .vimrc in a split of the screen
:nnoremap ∃v :vsplit $MYVIMRC<cr> 
"∃: win + e


"quick edit vim ideas:
:nnoremap ∃i :vsplit ~/.vim/ideas.vim

"win + s is for sourcing files ₪
"quick source main config file .vimrc
:nnoremap ₪v :source $MYVIMRC<cr>
"₪: win + s

"definition of leader key
:let mapleader = "_"

"definition of local leader key
:let maplocalleader = "-" 

"toggle a fold
:nnoremap <space> za

"search for placeholder
:nnoremap π /π<cr>
"altgr+p 

:nnoremap ψ ?π<cr>
"win+p

"'m seems short enough
"quick position marking:
":nnoremap ∫ 'm
"altgr + m 

"left side numbers
:set number

"vi seems short enough
"alt-gr + v = ν is for selecting areas
"select visualy a word
":nnoremap νw viw

"move line up / down
:nnoremap ♚ kddpk
:nnoremap ル ddp
"♚ : win + k
"ル : win + j

"uppercase
:nnoremap μ viwUe
"μ : alt-gr + u
"en mode insertion
:inoremap <c-u> <esc>viwUea

"!= shortcut
:iabbrev !@ !=

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
  :autocmd BufReadPost fr /oss
  :autocmd BufReadPost us /altgr
:augroup END

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
:nnoremap ∃rrc :vsplit $RUBYRC<cr>
" ∃: win + e

:augroup Ruby
:autocmd!
  "Edit the ruby grammar file
  :command! RubyGr vsp /usr/share/vim/vim74/syntax/ruby.vim
  "Edit the ruby colorscheme
  :nnoremap ∃rc :vsplit ~/.vim/colors/ruby.vim<cr>
  :autocmd Filetype ruby :source $RUBYRC
:augroup END

"Load conf for eruby files
:let $ERUBYRC = $HOME."/.vim/ftplugin/ruby/erubyrc.vim"
:nnoremap ∃errc :vsplit $ERUBYRC<cr>
" ∃: win + e

:augroup eRuby
:autocmd!
  "Edit the eruby grammar file
  :command! ErubyGr vsp /usr/share/vim/vim74/syntax/eruby.vim
  "Edit the eruby colorscheme
  :nnoremap ∃erc :vsplit ~/.vim/colors/eruby.vim<cr>
  :autocmd Filetype eruby :source $ERUBYRC
:augroup END

"Load conf for scss files
:let $SCSSRC = $HOME."/.vim/ftplugin/css/scssrc.vim"
:nnoremap ∃scssrc :vsplit $SCSSRC<cr>
" ∃: win + e

:augroup scss
:autocmd!
  "Edit the scss grammar file
  :command! ScssGr vsp /usr/share/vim/vim74/syntax/scss.vim
  "Edit the scss colorscheme
  :nnoremap ∃scssc :vsplit ~/.vim/colors/scss.vim<cr>
  :autocmd Filetype scss :source $SCSSRC
:augroup END

"Load conf for html files
:let $HTMLRC = $HOME."/.vim/ftplugin/html/htmlrc.vim"
:nnoremap ∃htmlrc :vsplit $HTMLRC<cr>
" ∃: win + e

:augroup htcl
:autocmd!
  "Edit the html grammar file
  :command! HtmlGr vsp /usr/share/vim/vim74/syntax/html.vim
  "Edit the html colorscheme
  :nnoremap ∃htmlc :vsplit ~/.vim/colors/html.vim<cr>
  :autocmd Filetype html :source $HTMLRC
:augroup END

"Load conf for css files
:let $CSSRC = $HOME."/.vim/ftplugin/css/cssrc.vim"
:nnoremap ∃cssrc :vsplit $CSSRC<cr>
" ∃: win + e

:augroup css
:autocmd!
  "Edit the css grammar file
  :command! CssGr vsp /usr/share/vim/vim74/syntax/css.vim
  "Edit the css colorscheme
  :nnoremap ∃cssc :vsplit ~/.vim/colors/css.vim<cr>
  :autocmd Filetype css :source $CSSRC
:augroup END

"in the current parenthesis
:onoremap p i(
"in the next parenthesis
:onoremap in( :<c-u>normal! f(vi(<cr>
"in the last parenthesis
:onoremap il( :<c-u>normal! F)vi(<cr>
"in the next brackets
:onoremap in[ :<c-u>normal! f[vi[<cr>
"in the last brackets
:onoremap il[ :<c-u>normal! F]vi[<cr>
"switch to relative numbers

:nnoremap ρ :set relativenumber!<cr>
" ρ : altgr-r

"wrapping lines
:set wrap
:set textwidth=0
:set wrapmargin=0
:set linebreak
:set nolist
:set shiftwidth=2
:set tabstop=2
:set smarttab
:set expandtab
:set autoindent

"show matching parens
:set showmatch
:set matchtime=1

"handling _ words
"ω is alt-gr and w
:nnoremap cω ?\v[^a-z0-9A-Z_]<cr>lc/\v[^a-z0-9A-Z_]<cr> 

"put the line at the end of the previous line
"α is alt-gr and a
:nnoremap α ^hv?\v[^ \n\r]<cr>lddi <esc>$

"remap the directionnal pad to switch split
:nnoremap <Left> <C-W><Left>
:nnoremap <Right> <C-W><Right>
:nnoremap <Up> <C-W><Up>
:nnoremap <Down> <C-W><Down>

"prefill search command
"σ is alt-gr and s, Σ is the same with shift
:nnoremap σ :s/
:nnoremap Σ :%s/

"save the file
"∿ is win, alt-gr and s
:nnoremap ∿ :w<cr>

"open colemak conf
"i have to open bashrc to put the proper command - not working
:nnoremap εkrc :! usconf<cr>
